local QBCore = exports['qb-core']:GetCoreObject()

local function ResetCheckpointStateTimer(point)
    local time = Config.ReloadTime
    SetTimeout(time, function()
        Config.Checkpoints[point]["opened"] = false
        TriggerClientEvent('p2rp-welding:client:SetBusyState', -1, point, false)
    end)
end

QBCore.Functions.CreateCallback('p2rp-welding:server:GetCheckpointsConfig', function(source, cb)
    cb(Config.Checkpoints)
end)

QBCore.Functions.CreateCallback('p2rp-welding:server:HasItems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gastube = Player.Functions.GetItemByName("gastube")
    local weldingtool = Player.Functions.GetItemByName("welding-tool")
    if gastube ~= nil and weldingtool ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('p2rp-welding:server:SetBusyState', function(point, bool)
    Config.Checkpoints[point]["opened"] = bool
    TriggerClientEvent('p2rp-welding:client:SetBusyState', -1, point, bool)
end)

RegisterNetEvent('p2rp-welding:server:RemoveItem', function(point)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local itemInfo2 = QBCore.Shared.Items["gastube"]
    Player.Functions.RemoveItem('gastube', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, itemInfo2, "remove")
end)

RegisterNetEvent('p2rp-welding:server:searchCheckpoint', function(point)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local itemInfo = QBCore.Shared.Items["metalscrap"]
    Player.Functions.AddItem("metalscrap", 12)
    TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
    Config.Checkpoints[point]["opened"] = true
    TriggerClientEvent('p2rp-welding:client:SetBusyState', -1, point, true)
    ResetCheckpointStateTimer(point)
end)
