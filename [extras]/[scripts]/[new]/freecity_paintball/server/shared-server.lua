-- EDIT THIS TO ADD AND REMOVE THE WEAPON TO PED WHILE IN GAME

function giveWeaponToPed(player)
    local xPlayer = QBCore.Functions.GetPlayer(player)
    TriggerEvent('paintball:server:saveAndClearItems', xPlayer.PlayerData.source)
end

function removeWeaponFromPed(player)
    local xPlayer = QBCore.Functions.GetPlayer(player)
    TriggerEvent('paintball:server:removeAndGiveItems', xPlayer.PlayerData.source)
end

-- Give Items
RegisterNetEvent('paintball:server:saveAndClearItems', function(source)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local ped = GetPlayerPed(src)
    
    if not xPlayer then return end
    if not xPlayer.PlayerData.metadata["paintballitems"] or not next(xPlayer.PlayerData.metadata["paintballitems"]) then
        xPlayer.Functions.SetMetaData("paintballitems", xPlayer.PlayerData.items)
        Wait(1500)
        xPlayer.Functions.ClearInventory()
        SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, false)
        Wait(2000)
        xPlayer.Functions.AddItem('WEAPON_PAINTGUN', 1)
        SetCurrentPedWeapon(ped, `WEAPON_PAINTGUN`, true)
    end
end)

-- Remove Items
RegisterNetEvent('paintball:server:removeAndGiveItems', function(source)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local ped = GetPlayerPed(src)
    
    if not xPlayer then return end
        Wait(1000)

        for _, v in pairs(xPlayer.PlayerData.metadata["paintballitems"]) do
            xPlayer.Functions.AddItem(v.name, v.amount, false, v.info)
        end
        Wait(1000)
            xPlayer.Functions.SetMetaData("paintballitems", {})
            xPlayer.Functions.RemoveItem('WEAPON_PAINTGUN', 1)
            SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, false)
end)

-- Edit this for your own notifications

function sendMessage(targetPlayer, message, alertType, time)
    if Config.notificationsType == 'okokNotify' then
        TriggerClientEvent('okokNotify:Alert', targetPlayer, "Paintball", message, time, alertType)
    elseif Config.notificationsType == 'mythic_notify' then
        if alertType == 'success' then
            TriggerClientEvent('mythic_notify:client:SendAlert', targetPlayer, { type = 'success', text = message, time})
        elseif alertType == 'info' then
            TriggerClientEvent('mythic_notify:client:SendAlert', targetPlayer, { type = 'inform', text = message, time})
        elseif alertType == 'error' then
            TriggerClientEvent('mythic_notify:client:SendAlert', targetPlayer, { type = 'error', text = message, time})
        end
    elseif Config.notificationsType == 'default' then
        if alertType == 'success' then
            TriggerClientEvent('QBCore:Notify', targetPlayer, message, alertType)
        elseif alertType == 'error' then
            TriggerClientEvent('QBCore:Notify', targetPlayer, message, alertType)
        elseif alertType == 'info' then
            TriggerClientEvent('QBCore:Notify', targetPlayer, message, 'primary')
        else
            TriggerClientEvent('QBCore:Notify', targetPlayer, message, 'primary')
        end
    end
end

-- Edit this to reward players that won the game

function giveRewards(winningteam)
    -- Receives a table of {playername:playerid}
    --for k, v in pairs(winningteam) do
        -- give reward or something
    --end
end