function ShowNotification(source, msg, type)
    if Config.QBCoreNotify then
        TriggerClientEvent(Config.Core..':Notify', source, msg, type)
    elseif Config.okokNotify then
        TriggerClientEvent('okokNotify:Alert', source, Config.OkOkNotifyTitle, msg, 5000, type)
    elseif Config.pNotify then
        TriggerClientEvent("pNotify:SendNotification", source, {
            text = msg,
            type =  type,
            timeout = 10000,
            layout = Config.pNotifyLayout
        })
    end
end

RegisterServerEvent("sbm-weedplanting:server:removeItem", function(itemName)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(itemName, 1) then
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[itemName], "remove")
    else
        ShowNotification(src, "You don't have any "..QBCore.Shared.Items[itemName]["label"], "error")
    end
end)

QBCore.Functions.CreateCallback("sbm-weedplanting:server:hasItem", function(source, cb, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local retval = false
    if Player.Functions.GetItemByName(item) ~= nil then
        retval = true
    end
    cb(retval)
end)

RegisterServerEvent('sbm-weedplanting:server:harvestWeed')
AddEventHandler('sbm-weedplanting:server:harvestWeed', function(id, loc)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local received = true
    addedItems = {}
    if WeedPlants[id] and WeedPlants[id].coords==loc then
        for k, v in pairs(Config.Seed[WeedPlants[id].seed].returnItems) do
            if v.basedOnHealth then
                amountToGive = math.floor(v.amount*(WeedPlants[id].health/100))
            else
                amountToGive = v.amount
            end
            if math.random(1,100) <= v.probability then
                if Player.Functions.AddItem(v.itemName, amountToGive) then
                    table.insert(addedItems, {item = v.itemName, amount = amountToGive})
                    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[v.itemName], "add")
                    received = received and true
                else
                    received =  received and false
                end
            end
        end
        if received then
            table.remove(WeedPlants, id)
            StorePlantsTable()
            TriggerClientEvent('sbm-weedplanting:client:deleteWeedPlant', -1, id, "harvested")
        else
            for k, v in pairs(addedItems) do
                Player.Functions.RemoveItem(v.item, v.amount)
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[v.item], "remove")
            end
            ShowNotification(source, Config.Locale["inventory_full_error"], "error")
            
        end
    end
end)