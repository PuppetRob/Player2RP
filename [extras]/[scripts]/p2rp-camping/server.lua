local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('camp:item', function(source, cb, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasitem = Player.Functions.GetItemByName("camp").amount
    Player.Functions.RemoveItem('camp', 1)
    cb(hasitem)
end)

RegisterNetEvent("p2rp-camping:server:giveBackTent")
AddEventHandler("p2rp-camping:server:giveBackTent", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("camp",1)
end)



QBCore.Functions.CreateUseableItem("camp", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("p2rp-camping:client:UseCampingKit", source)
end
end)
