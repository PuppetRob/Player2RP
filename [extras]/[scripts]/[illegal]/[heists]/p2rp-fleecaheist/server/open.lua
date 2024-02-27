function UpdateDoor(src, doorId, locked)
    if Config.Doorlock == "qb" then
        TriggerEvent('qb-doorlock:server:updateState', doorId, locked, false, false, true, false, false, src)
    elseif Config.Doorlock == "ox" then
        local door = exports.ox_doorlock:getDoorFromName(doorId)
        local lockdoor = 0
        if locked then lockdoor = 1 end
        TriggerEvent('ox_doorlock:setState', door.id, lockdoor)
    end
end

RegisterNetEvent("cc-fleecaheist:sv:doorlock", function(src, doorId, locked)
    if Config.Doorlock == "ox" then
        local door = exports.ox_doorlock:getDoorFromName(doorId)
        local lockdoor = 0
        if locked then lockdoor = 1 end
        TriggerEvent('ox_doorlock:setState', door.id, lockdoor)
    end
end)

function AddItem(src, data)
    if Config.Inventory == "lj" then 
        exports['lj-inventory']:AddItem(src, data.item, data.amount, data.slot, data.info)
    elseif Config.Inventory == "qb" then
        exports['qb-inventory']:AddItem(src, data.item, data.amount, data.slot, data.info)
    elseif Config.Inventory == "ox" then 
        exports['ps-inventory']:(src, data.item, data.amount, data.slot, data.info)
    elseif Config.Inventory == "ps" then 
        exports.ox_inventory:AddItem(src, data.item, data.amount, data.info, data.slot)
    elseif Config.Inventory == "custom" then
        -- ADD YOUR CUSTOM INVENTORY EXPORT/EVENT
    end
end

function RemoveItem(src, data)
    if Config.Inventory == "lj" then 
        exports['lj-inventory']:RemoveItem(src, data.item, data.amount, data.slot)
    elseif Config.Inventory == "qb" then
        exports['qb-inventory']:RemoveItem(src, data.item, data.amount, data.slot)
    elseif Config.Inventory == "ox" then 
        exports.ox_inventory:RemoveItem(src, data.item, data.amount, data.info, data.slot)
    elseif Config.Inventory == "ps" then
        exports['ps-inventory']:RemoveItem(src, data.item, data.amount, data.slot)
    elseif Config.Inventory == "custom" then
        -- ADD YOUR CUSTOM INVENTORY EXPORT/EVENT
    end
end