local QBCore = exports['qb-core']:GetCoreObject()

-- Create Usable Item -- 

QBCore.Functions.CreateUseableItem("metaldetector", function(src, item)
    TriggerClientEvent('qb-metaldetecting:startdetect', src)
end)

-- Detecting Reward --

RegisterNetEvent('qb-metaldetecting:DetectReward', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local chance = math.random(1,100)

    if chance <= Config.CommonChance then 
        local item = Config.CommonItems[math.random(1, #Config.CommonItems)]
        local amount = Config.CommonAmount
        
        Player.Functions.AddItem(item, amount)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('QBCore:Notify', src, 'You found '.. item ..'!', 'success')
    elseif chance >= Config.RareChance then 
        local item = Config.RareItems[math.random(1, #Config.RareItems)]
        local amount = Config.RareAmount
        
        Player.Functions.AddItem(item, amount)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('QBCore:Notify', src, 'You found '.. item ..'!', 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, 'You found nothing..', 'error')
    end 
end)

-- Common Trade Event --

RegisterServerEvent('qb-metaldetector:server:CommonTrade', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = tostring(data.item)
    local check = Player.Functions.GetItemByName(item)
    
    if data.id == 2 then
        if check ~= nil then
            if check.amount >= 30 then
                Player.Functions.RemoveItem(item, 30)
                Player.Functions.AddItem('metalscrap', 100)
                TriggerClientEvent('QBCore:Notify', src, 'You traded 30 Metal Trash'..' for 100 Metal Scrap.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough Metal Scrap..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any Metal Trash.", 'error')
        end
    elseif data.id == 3 then 
        if check ~= nil then
            if check.amount >= 30 then
                Player.Functions.RemoveItem(item, 30)
                Player.Functions.AddItem('iron', 100)
                TriggerClientEvent('QBCore:Notify', src, 'You traded 30 Iron Trash'..' for 100 Iron.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough Iron Scrap..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any Iron Trash.", 'error')
        end
    elseif data.id == 4 then 
        if check ~= nil then
            if check.amount >= 30 then
                Player.Functions.RemoveItem(item, 30)
                Player.Functions.AddItem('aluminium', 100)
                TriggerClientEvent('QBCore:Notify', src, 'You traded 30 Aluminium Cans'..' for 100 Aluminium.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough Aluminium Cans..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any Aluminium Cans.", 'error')
        end
    elseif data.id == 5 then 
        if check ~= nil then
            if check.amount >= 30 then
                Player.Functions.RemoveItem(item, 30)
                Player.Functions.AddItem('steel', 100)
                TriggerClientEvent('QBCore:Notify', src, 'You traded 30 Steel Trash'..' for 100 Steel.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough Steel Trash..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any Steel Trash.", 'error')
        end
    elseif data.id == 6 then 
        if check ~= nil then
            if check.amount >= 5 then
                Player.Functions.RemoveItem(item, 5)
                Player.Functions.AddItem('weapon_switchblade', 1)
                TriggerClientEvent('QBCore:Notify', src, 'You traded 5 Broken Knives'..' for 1 Switchblade.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough Broken Knives..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any Broken Knives.", 'error')
        end
    elseif data.id == 7 then 
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 220)
                TriggerClientEvent('QBCore:Notify', src, 'You traded 1 broken Gameboy'..' for $220.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough Gameboys..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any Gameboys.", 'error')
        end
    end
end)

-- Rare Trade Event --

RegisterServerEvent('qb-metaldetector:server:RareTrade', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = tostring(data.item)
    local check = Player.Functions.GetItemByName(item)
    
    if data.id == 2 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 5000)
                TriggerClientEvent('QBCore:Notify', src, 'You traded 1 Buried Treasure'..' for $10,000.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough Burried Treasure..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any Burried Treasure.", 'error')
        end
    elseif data.id == 3 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 1500)
                TriggerClientEvent('QBCore:Notify', src, 'You traded 1 Treasure Key'..' for $2500.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough Treasure Keys..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any Treasure Keys.", 'error')
        end
    elseif data.id == 4 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 500)
                TriggerClientEvent('QBCore:Notify', src, 'You traded 1 Antique Coin'..' for $500.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough Antique Coins..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any Antique Coins.", 'error')
        end
    elseif data.id == 5 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 800)
                TriggerClientEvent('QBCore:Notify', src, 'You traded Ancient Coin'..' for $800.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough Ancient Coins..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any Ancient Coins.", 'error')
        end
    elseif data.id == 6 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 800)
                TriggerClientEvent('QBCore:Notify', src, 'You traded 1 WW2 Relic'..' for $800.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough WW2 Relics..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any WW2 Relics.", 'error')
        end
    elseif data.id == 7 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 600)
                TriggerClientEvent('QBCore:Notify', src, 'You traded 1 Pocket Watch'..' for $600.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough Pocket Watches..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "You do not have any Pocket Watches.", 'error')
        end
    end
end)
