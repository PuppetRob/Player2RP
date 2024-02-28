function Notification1(src, msg, type , time)
    TriggerClientEvent('QBCore:Notify', src, msg, type, time)
end

function Reward(src)
	local Player = Core.Functions.GetPlayer(src)
	local chance = math.random(0 , 100)
	-- Oxy
    Player.Functions.RemoveItem(Config.Package, 1)
	TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[Config.Package], "remove")

    if Config.Reward then
        local itemCount = math.random(Config.MinItemReward, Config.MaxItemReward)
        Player.Functions.AddItem(Config.ItemsReward, itemCount)
        TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[Config.ItemsReward], "add", itemCount)
    end

    if Config.LuckyReward then
        local itemCount2 = math.random(Config.MinLuckyRewardItems, Config.MaxLuckyRewardItems)
        if chance <= Config.LuckyRewardChance then
            Player.Functions.AddItem(Config.LuckyRewardItem, itemCount2)
            TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[Config.LuckyRewardItem], "add", itemCount2)
        end
    end

    if Config.CleanBands then
        if chance < Config.BandsLaunderingChance then
            local bagAmount = exports['qb-inventory']:GetItemByName(src, Config.BandsItem)
            if bagAmount then
                if bagAmount.amount > 0 then
                    local random = math.random(Config.MinBandsToClean,Config.MaxBandsToClean)
                    local giaBand = math.random(Config.MinBandsPayout, Config.MaxBandsPayout)
                    if bagAmount.amount >= random then
                        Player.Functions.AddMoney('cash', random * giaBand)
                        Player.Functions.RemoveItem(Config.BandsItem, random)
                        TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[Config.BandsItem], "remove", random)
                    else
                        Player.Functions.AddMoney('cash', bagAmount.amount * giaBand)
                        Player.Functions.RemoveItem(Config.BandsItem, bagAmount.amount)
                        TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[Config.BandsItem], "remove", bagAmount.amount)
                    end
                end
            end
        end
    end
    
    if Config.CleanRolls then
        if chance < Config.RollsLaunderingChance then
            local bagAmount = exports['qb-inventory']:GetItemByName(src, Config.RollsItem)
            if bagAmount then
                if bagAmount.amount > 0 then
                    local random = math.random(Config.MinRollsToClean,Config.MaxRollsToClean)
                    local giaRoll = math.random(Config.MinRollsToCleanPayout, Config.MaxRollsToCleanPayout)
                    if bagAmount.amount >= random then
                        Player.Functions.AddMoney('cash', random * giaRoll)
                        Player.Functions.RemoveItem(Config.RollsItem, random)
                        TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[Config.RollsItem], "remove", random)
                    else
                        Player.Functions.AddMoney('cash', bagAmount.amount * giaRoll)
                        Player.Functions.RemoveItem(Config.RollsItem, bagAmount.amount)
                        TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[Config.RollsItem], "remove", bagAmount.amount)
                    end
                end
            end
        end
    end
end