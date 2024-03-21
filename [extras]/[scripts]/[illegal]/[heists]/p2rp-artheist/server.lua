local QBCore = exports['qb-core']:GetCoreObject()
local lastrob = 0

QBCore.Functions.CreateCallback('artheist:server:checkPoliceCount', function(source, cb)
    local src = source
    local players = QBCore.Functions.GetPlayers()
    local policeCount = 0

    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if player.PlayerData.job.name == 'lspd' or player.PlayerData.job.name == 'bcso' or player.PlayerData.job.name == 'highwaypatrol' then
            policeCount = policeCount + 1
        end
    end

    if policeCount >= Config['ArtHeist']['requiredPoliceCount'] then
        cb(true)
    else
        cb(false)
        TriggerClientEvent('artheist:client:showNotification', src, Strings['need_police'])
    end
end)

QBCore.Functions.CreateCallback('artheist:server:checkRobTime', function(source, cb)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    
    if (os.time() - lastrob) < Config['ArtHeist']['nextRob'] and lastrob ~= 0 then
        local seconds = Config['ArtHeist']['nextRob'] - (os.time() - lastrob)
        TriggerClientEvent('QBCore:Notify', src, Strings['wait_nextrob'] .. ' ' .. math.floor(seconds / 60) .. ' ' .. Strings['minute'], "primary")
        cb(false)
    else
        lastrob = os.time()
        cb(true)
    end
end)

--[[ RegisterNetEvent('artheist:server:policeAlert')
AddEventHandler('artheist:server:policeAlert', function(coords)
    local players = QBCore.Functions.GetPlayers()
    
    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if player.PlayerData.job.name == 'police' then
            TriggerClientEvent('artheist:client:policeAlert', players[i], coords)
        end
    end
end) ]]

RegisterServerEvent('p2rp-artheist:server:callCops')
AddEventHandler('p2rp-artheist:server:callCops', function(type, streetLabel, coords)
    local data = {displayCode = '10-68', description = 'Art Gallery Robbery', isImportant = 0, recipientList = {'police'}, length = '20000', infoM = 'fa-info-circle', info = 'Art Gallery Robbery In Progress'}
    local dispatchData = {dispatchData = data, caller = 'Alarm', coords = vector3(-432.1, 40.87, 52.87)}
    TriggerEvent('wf-alerts:svNotify', dispatchData) 
end)

RegisterServerEvent('artheist:server:syncHeistStart')
AddEventHandler('artheist:server:syncHeistStart', function()
    TriggerClientEvent('artheist:client:syncHeistStart', -1)
end)

RegisterServerEvent('artheist:server:syncPainting')
AddEventHandler('artheist:server:syncPainting', function(x)
    TriggerClientEvent('artheist:client:syncPainting', -1, x)
end)

RegisterServerEvent('artheist:server:syncAllPainting')
AddEventHandler('artheist:server:syncAllPainting', function()
    TriggerClientEvent('artheist:client:syncAllPainting', -1)
end)

RegisterServerEvent('artheist:server:rewardItem')
AddEventHandler('artheist:server:rewardItem', function(scene)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local item = scene['rewardItem']

    if player then
        player.Functions.AddItem(item, 1)
    end
end)

RegisterServerEvent('artheist:server:finishHeist')
AddEventHandler('artheist:server:finishHeist', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if player then
        for k, v in pairs(Config['ArtHeist']['painting']) do
            local count = player.Functions.GetItemByName(v['rewardItem'])
            if count ~= nil and count.amount > 0 then
                player.Functions.RemoveItem(v['rewardItem'], 1)
                player.Functions.AddMoney('cash', v['paintingPrice'], 'Art Heist')
            end
        end
    end
end)