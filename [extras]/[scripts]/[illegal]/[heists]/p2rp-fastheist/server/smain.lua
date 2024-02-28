local QBCore = exports["qb-core"]:GetCoreObject()
local start = false
local lastrob = 0

QBCore.Functions.CreateCallback('p2rp-fastheist:server:checkTime', function(source, cb)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    
    if (os.time() - lastrob) < PDFFRobberyCore['config']['nextRob']['seconds'] and lastrob ~= 0 then
        local seconds = PDFFRobberyCore['config']['nextRob']['seconds'] - (os.time() - lastrob)
        TriggerClientEvent('QBCore:Notify', src, PDFFRobberyCore['config']['Locales']['wait_forrobbery'] .. ' ' .. math.floor(seconds / 60) .. ' ' .. PDFFRobberyCore['config']['Locales']['minute'], "error", 5000)
        print("Obira se")
        cb(false)
    else
        lastrob = os.time()
        start = true
        cb(true)
    end
end)

QBCore.Functions.CreateCallback('p2rp-fastheist:server:checkPoliceCount', function(source, cb)
    local src = source
    local players = QBCore.Functions.GetPlayers(src)
    local policeCount = 0

    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if (player.PlayerData.job.name == "police" and player.PlayerData.job.onduty) then
            policeCount = policeCount + 1
        end
    end

    if policeCount >= PDFFRobberyCore['config']['requiredPoliceCount']['number'] then
        cb(true)
    else
        cb(false)
        TriggerClientEvent('QBCore:Notify', src, PDFFRobberyCore['config']['Locales']['needpolice'], "error")
    end
end)



RegisterNetEvent('p2rp-fastheist:ropeSync')
AddEventHandler('p2rp-fastheist:ropeSync', function(vehh, vehh2, conn)
    local source = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("p2rp-fastheist:rope", -1, vehh, vehh2, conn)
end)


RegisterServerEvent('p2rp-fastheist:server:sell')
AddEventHandler('p2rp-fastheist:server:sell', function()
    local reward = math.random(PDFFRobberyCore['config']['reward']['min'], PDFFRobberyCore['config']['reward']['max'])
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    print()
    print(reward)
    xPlayer.Functions.AddMoney('cash', reward)
            TriggerClientEvent('QBCore:Notify', src, PDFFRobberyCore['config']['Locales']['sold_container'] .. ' ' .. reward .. '$', "success")
end)



RegisterServerEvent('p2rp-fastheist:server:policeAlert')
AddEventHandler('p2rp-fastheist:server:policeAlert', function(coords)
    print("alerta vuri")
    local src = source
    local players = QBCore.Functions.GetPlayers(src)
    
    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if (player.PlayerData.job.name == "police" and player.PlayerData.job.onduty) then
            TriggerClientEvent('p2rp-fastheist:client:policeAlert', players[i], coords)
        end
    end
end)