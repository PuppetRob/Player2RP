local QBCore = exports['qb-core']:GetCoreObject()

local lastrob = 0
local start = false
discord = {
    ['webhook'] = 'WEBHOOKLINK',
    ['name'] = 'trainheist',
    ['image'] = 'https://cdn.discordapp.com/avatars/869260464775921675/dea34d25f883049a798a241c8d94020c.png?size=1024'
}

QBCore.Functions.CreateCallback('trainheist:server:checkPoliceCount', function(source, cb)
    local src = source
    local players = QBCore.Functions.GetPlayers()
    local policeCount = 0

    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if player.PlayerData.job.name == 'lspd' or player.PlayerData.job.name == 'bcso' or player.PlayerData.job.name == 'highwaypatrol' then
            policeCount = policeCount + 1
        end
    end

    if policeCount >= Config['TrainHeist']['requiredPoliceCount'] then
        cb(true)
    else
        cb(false)
        TriggerClientEvent('trainheist:client:showNotification', src, Strings['need_police'])
    end
end)

QBCore.Functions.CreateCallback('trainheist:server:checkTime', function(source, cb)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    
    if (os.time() - lastrob) < Config['TrainHeist']['nextRob'] and lastrob ~= 0 then
        local seconds = Config['TrainHeist']['nextRob'] - (os.time() - lastrob)
        TriggerClientEvent('trainheist:client:showNotification', src, Strings['wait_nextrob'] .. ' ' .. math.floor(seconds / 60) .. ' ' .. Strings['minute'])
        cb(false)
    else
        lastrob = os.time()
        start = true
        discordLog(player.PlayerData.name ..  ' - ' .. player.PlayerData.license, ' started the Train Heist!')
        cb(true)
    end
end)

QBCore.Functions.CreateCallback('trainheist:server:hasItem', function(source, cb, item)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local playerItem = player.Functions.GetItemByName(item)

    if player then 
        if playerItem ~= nil then
            if playerItem.amount >= 1 then
                cb(true, playerItem.label)
            end
        else
            cb(false, QBCore.Shared.Items[item].label)
        end
    end
end)

--[[ RegisterServerEvent('trainheist:server:policeAlert')
AddEventHandler('trainheist:server:policeAlert', function(coords)
    local players = QBCore.Functions.GetPlayers()
    
    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if player.PlayerData.job.name == 'police' then
            TriggerClientEvent('trainheist:client:policeAlert', players[i], coords)
        end
    end
end) ]]

RegisterServerEvent('p2rp-trainheist:server:callCops')
AddEventHandler('p2rp-trainheist:server:callCops', function(type, streetLabel, coords)
    local data = {displayCode = '10-68', description = 'Train Robbery', isImportant = 0, recipientList = {'police'}, length = '20000', infoM = 'fa-info-circle', info = 'Train Robbery In Progress'}
    local dispatchData = {dispatchData = data, caller = 'Alarm', coords = vector3(2863.25, 4532.87, 48.63)}
    TriggerEvent('wf-alerts:svNotify', dispatchData) 
end)

RegisterServerEvent('trainheist:server:rewardItems')
AddEventHandler('trainheist:server:rewardItems', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if player then
        player.Functions.AddItem(Config['TrainHeist']['reward']['itemName'], Config['TrainHeist']['reward']['grabCount'])
    end
end)

RegisterServerEvent('trainheist:server:sellRewardItems')
AddEventHandler('trainheist:server:sellRewardItems', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if player then
        local playerItem = player.Functions.GetItemByName(Config['TrainHeist']['reward']['itemName'])
        if playerItem ~= nil and playerItem.amount > 0 then
            player.Functions.RemoveItem(Config['TrainHeist']['reward']['itemName'], playerItem.amount)
            player.Functions.AddMoney('cash', Config['TrainHeist']['reward'] * playerItem.amount)
            discordLog(player.PlayerData.name ..  ' - ' .. player.PlayerData.license, ' Gain $' .. math.floor(Config['TrainHeist']['reward'] * playerItem.amount) .. ' on the Train Heist Buyer!')
            TriggerClientEvent('trainheist:client:showNotification', src, Strings['total_money'] .. ' $' .. Config['TrainHeist']['reward'] * playerItem.amount)
        end
    end
end)

RegisterServerEvent('trainheist:server:containerSync')
AddEventHandler('trainheist:server:containerSync', function(coords, rotation)
    TriggerClientEvent('trainheist:client:containerSync', -1, coords, rotation)
end)

RegisterServerEvent('trainheist:server:objectSync')
AddEventHandler('trainheist:server:objectSync', function(e)
    TriggerClientEvent('trainheist:client:objectSync', -1, e)
end)

RegisterServerEvent('trainheist:server:trainLoop')
AddEventHandler('trainheist:server:trainLoop', function()
    TriggerClientEvent('trainheist:client:trainLoop', -1)
end)

RegisterServerEvent('trainheist:server:lockSync')
AddEventHandler('trainheist:server:lockSync', function(index)
    TriggerClientEvent('trainheist:client:lockSync', -1, index)
end)

RegisterServerEvent('trainheist:server:grabSync')
AddEventHandler('trainheist:server:grabSync', function(index, index2)
    TriggerClientEvent('trainheist:client:grabSync', -1, index, index2)
end)

RegisterServerEvent('trainheist:server:resetHeist')
AddEventHandler('trainheist:server:resetHeist', function()
    if not start then return end
    start = false
    TriggerClientEvent('trainheist:client:resetHeist', -1)
end)

function discordLog(name, message)
    local data = {
        {
            ["color"] = '3553600',
            ["title"] = "**".. name .."**",
            ["description"] = message,
        }
    }
    PerformHttpRequest(discord['webhook'], function(err, text, headers) end, 'POST', json.encode({username = discord['name'], embeds = data, avatar_url = discord['image']}), { ['Content-Type'] = 'application/json' })
end