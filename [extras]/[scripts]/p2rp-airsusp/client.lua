local level = nil

RegisterNetEvent("p2rp-airsusp:enterVeh", function(entityId)
    TriggerServerEvent('p2rp-airsusp:fetch', NetworkGetNetworkIdFromEntity(entityId))
end)


RegisterNetEvent("p2rp-airsusp:fetchChange", function(curVeh, value, lvl)
    level = lvl
    if GetVehicleSuspensionHeight(NetToVeh(curVeh)) ~= value then
        SetVehicleSuspensionHeight(NetToVeh(curVeh), value)
    end
end)


function OpenSuspensionUI()
    if not IsPedInAnyVehicle(PlayerPedId()) then Notify(CodeStudio.Language.not_veh) return end
    if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) ~= PlayerPedId() then Notify(CodeStudio.Language.only_driver) return end
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "open",
        data = {
            lvl = level or 0,
        }
    })
    if not level then
        TriggerServerEvent('p2rp-airsusp:fetch', NetworkGetNetworkIdFromEntity(GetVehiclePedIsIn(PlayerPedId())))
    end
end


RegisterNUICallback('p2rp-airsusp:change', function(data, cb)
    local veh = GetVehiclePedIsIn(PlayerPedId())
    local vPlate = GetVehicleNumberPlateText(veh)
    if data.type == 'up' then 
        if level == CodeStudio.Maximum then 
            cb(CodeStudio.Language.max)
            return 
        end
        SetVehicleSuspensionHeight(veh, GetVehicleSuspensionHeight(veh) - CodeStudio.ChangePerLevel)
        level = level + 1
    elseif data.type == 'down' then 
        if level == CodeStudio.Minimum then 
            cb(CodeStudio.Language.min)
            return 
        end
        SetVehicleSuspensionHeight(veh, GetVehicleSuspensionHeight(veh) + CodeStudio.ChangePerLevel)
        level = level - 1
    end
    TriggerServerEvent('p2rp-airsusp:update', NetworkGetNetworkIdFromEntity(veh), level, GetVehicleSuspensionHeight(veh))
    cb(level)
end)


RegisterNUICallback('p2rp-airsusp:closeUI', function(data,cb)
    SetNuiFocus(false, false)
    cb(true)
end)


RegisterNetEvent("p2rp-airsusp:openUI", function()
    OpenSuspensionUI()
end)


