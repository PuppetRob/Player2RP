SearchPlayersCallback = function()
  Core.Callback("bountyoffices:getPlayers", function(src,cb, query)
    local ret = {}
    if Settings.Framework == "es_extended" then 
      local result = MySQL.query.await("SELECT identifier,firstname,lastname,dateofbirth FROM users WHERE firstname LIKE @query OR lastname LIKE @query", {
        ['@query'] = '%'..query..'%'
      })
      for k,v in pairs(result) do 
        ret[#ret + 1] = {
          name       = v.firstname .. ' ' .. v.lastname,
          ID         = v.identifier,
          DOB        = v.dateofbirth,   
        }
      end
      return cb(ret)
    elseif Settings.Framework == "qb-core" then 
      local result = MySQL.query.await("SELECT citizenid,charinfo FROM players WHERE JSON_UNQUOTE(JSON_EXTRACT(charinfo, '$.firstname')) LIKE @query OR JSON_UNQUOTE(JSON_EXTRACT(charinfo, '$.lastname')) LIKE @query", {
        ['@query'] = '%'..query..'%'
      })
      for k,v in pairs(result) do 
        local firstName = json.decode(v.charinfo).firstname
        local lastName = json.decode(v.charinfo).lastname
        ret[#ret + 1] = {
          name       = firstName .. ' ' .. lastName,
          ID         = v.citizenid,
          DOB        = json.decode(v.charinfo).birthdate,   
        }
      end

      return cb(ret)
    end
    cb(nil)
  end)

  Core.Callback("bountyoffices:getPlayerVehicles", function(src,cb, id)
    local ret = {}
    if Settings.Framework == "es_extended" then 
      local result = MySQL.query.await("SELECT plate,vehicle FROM owned_vehicles WHERE owner=@id", {
        ['@id'] = id,
      })
    
      for k,v in pairs(result) do 
        local info = json.decode(v.vehicle)
        ret[v.plate] = info.model
      end
      return cb(ret)   
    elseif Settings.Framework == "qb-core" then 
      local result = MySQL.query.await("SELECT vehicle,plate FROM player_vehicles WHERE citizenid=@id", {
        ['@id'] = id,
      })
      for k,v in pairs(result) do 
        ret[v.plate] = v.vehicle
      end
      return cb(ret)
    end
    cb(nil)
  end)
end


SeizeVehiclesFromPlayer = function(ply, spotName, vehicles)
  local plyId = Core.Player.Id(ply)
  for k,v in pairs(vehicles) do
    if Settings.Framework == "es_extended" then
      MySQL.update.await("UPDATE owned_vehicles SET owner=@spot originalOwner=@originalOwner WHERE owner=@originalOwner AND plate=@plate", {
        ['@originalOwner'] = plyId,
        ['@spot']          = spotName,
        ['@plate']         = v,
      }, function(result)
      end)
    elseif Settings.Framework == "qb-core" then
      --## Update ownership WHERE vehicle is owned by the player trying to retrieve AND is in the spot 
      MySQL.update.await("UPDATE player_vehicles SET citizenid=@spot originalOwner=@originalOwner WHERE citizenid=@originalOwner AND plate=@plate", {
        ['@originalOwner'] = plyId,
        ['@spot']          = spotName,
        ['@plate']         = v,
      }, function(result)
      end)
    end
  end

end

ReleasePlayerVehicles = function(ply, spotName)
  local plyId = Core.Player.Id(ply)
  local feeAccount = Config.VehicleRetrievalSpots[spotName].FeeAccount
  local seizedVehicles, fee = getSeizedVehiclesBySpots(ply, Config.VehicleRetrievalSpots[spotName].Types)
  if fee > 0 and not Core.Player.HasMoneyInAccount(ply, feeAccount, fee) then return Core.UI.Notify(Labels[Settings.Language].NotEnoughMoney); end
  if fee > 0 then Core.Player.RemoveMoney(ply, feeAccount, fee); end 



  local count = 0
  for plate,v in pairs(seizedVehicles) do 
    count = count + 1
    if Settings.Framework == "es_extended" then
      MySQL.update.await("UPDATE owned_vehicles SET owner=@originalOwner WHERE originalOwner=@originalOwner AND plate=@plate", {
        ['@originalOwner'] = plyId,
        ['@plate']         = plate,
      }, function(result)
      end)
    elseif Settings.Framework == "qb-core" then
      --## Return ownership WHERE vehicle is owned by the player trying to retrieve AND is in the spot 
      MySQL.update.await("UPDATE player_vehicles SET citizenid=@originalOwner WHERE originalOwner=@originalOwner AND plate=@plate", {
        ['@originalOwner'] = plyId,
        ['@plate']         = plate,
      }, function(result)
      end)
    end
  end
  Core.UI.Notify(ply, string.format(Labels[Settings.Language].ReleasedVehicles, count))
end

getSeizedVehiclesBySpots = function(ply, spots)
  local plyId = Core.Player.Id(ply)
  for k,v in pairs(spots) do 
    if Settings.Framework == "es_extended" then
      local vehicles = MySQL.query.await("SELECT vehicle,plate,releaseFee FROM owned_vehicles WHERE owner=@spot AND originalOwner=@originalOwner", {
        ['@originalOwner'] = plyId,
        ['@spot'] = v,
      })
      while not vehicles do Wait(0) end
      local ret = {}
      if not vehicles[1] then return {} end
      local curReleaseFee = 0 
      for k,v in pairs(vehicles) do 
        if v.releaseFee > curReleaseFee then 
          curReleaseFee = v.releaseFee
        end
        local info = json.decode(v.vehicle)
        ret[v.plate] = info.model
      end

      return ret, curReleaseFee
    elseif Settings.Framework == "qb-core" then
      local vehicles = MySQL.query.await("SELECT vehicle,plate,releaseFee FROM player_vehicles WHERE citizenid=@spot AND originalOwner=@originalOwner", {
        ['@originalOwner'] = plyId,
        ['@spot'] = v,
      })
      while not vehicles do Wait(0) end
      local ret = {}
      if not vehicles[1] then return {} end
      local curReleaseFee = 0 
      for k,v in pairs(vehicles) do 
        if v.releaseFee > curReleaseFee then 
          curReleaseFee = v.releaseFee
        end
        ret[v.plate] = v.vehicle
      end

      return ret, curReleaseFee
    end
  end
end

SendWebhook = function(office, data)
  webHooks = ServerSettings.Webhooks
  if not webHooks.Enabled then return; end
  if not webHooks.Types[data.type] then return; end
  if office then 
    url = webHooks.Offices[office].URL
  else
    url = webHooks.Admin
  end
  if not url then return print('Cannot find a webhook URL for this'); end
  local officeData = Config.BountyOffices[office]
  local typeLabel = (data.type == "newBounty" and Labels[Settings.Language].BountyCreated) or (data.type == "bountyComplete" and Labels[Settings.Language].BountyComplete) or (data.type == "bountyIncreased"  and Labels[Settings.Language].BountyIncreased) or "Unknown"
  message = string.format("# %s\n***%s:*** %s\n***%s:*** %s\n\n**%s**\n%s\n\n**%s**\n%s\n\n**%s**\n", typeLabel, Labels[Settings.Language].Name, data.name, Labels[Settings.Language].Price, data.price, Labels[Settings.Language].Description, data.desc, Labels[Settings.Language].Reason, data.reason, Labels[Settings.Language].Consequences)
  for k,v in pairs(data.consequences) do 
    message = message .. string.format("\n***%s:*** %s", string.upper(k), v)
  end
  local embed = {
    {
      id = 10674342,
      title = officeData.OfficeName,
      description = message,
      color = webHooks.Offices[office].Color,
      fields = {},
      thumbnail = {
        url = webHooks.Offices[office].Icon,
      },
      image = {
        url = data.img or "https://cdn.discordapp.com/attachments/790854126056636496/1142152922558365706/blank.png"
      }
    }
  
  }
  Core.Webhook(url, username, embed)
end


