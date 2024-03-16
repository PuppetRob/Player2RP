if Shared.Framework ~= 'QBCore' then return end
print('QBCore framework detected')
QBCore = QBCore or exports['qb-core']:GetCoreObject()

local server = IsDuplicityVersion()

if server then
    RegisterServerEvent('patoche_gamestand:chinUpPlay', function(method)
        local src = source
        local xPlayer = QBCore.Functions.GetPlayer(src)
        local paid = xPlayer.Functions.RemoveMoney(method, Config.chinUpPlayCost, "play_chinUp_challenge")
        print('player ^3', src, '^7 paid for play the chin up challenge', paid)
    end)

    RegisterServerEvent('patoche_gamestand:chinUpReward', function(source)
        local src = source
        local xPlayer = QBCore.Functions.GetPlayer(src)
        xPlayer.Functions.AddMoney('cash', Config.chinUpReward)
    end)

    QBCore.Functions.CreateCallback('patoche_bumpercar:qb:haveMoneyCash', function(source, cb)
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if not xPlayer then cb(0) return end
        local playerCash = xPlayer.Functions.GetMoney("cash")
        cb(playerCash)
    end)

    QBCore.Functions.CreateCallback('patoche_bumpercar:qb:haveMoneyBank', function(source, cb)
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if not xPlayer then cb(0) return end
        local playerBank = xPlayer.Functions.GetMoney("bank")
        cb(playerBank)
    end)
end

function hasMoney(quantity, method)
    print(quantity, method)
    if method == 'cash' then
        local cashResult
        QBCore.Functions.TriggerCallback('patoche_bumpercar:qb:haveMoneyCash', function(playerCash)
            cashResult = playerCash
        end)
        repeat Wait(0) until cashResult ~= nil
        if quantity <= cashResult then
            return true
        else
            lib.notify({
                id = 'noMoney',
                type = 'error',
                description = locale('noEnoughMoney'),
                duration = 3000
            })
            return false
        end
    elseif method == 'bank' then
        local bankResult
        QBCore.Functions.TriggerCallback('patoche_bumpercar:qb:haveMoneyBank', function(playerBank)
            bankResult = playerBank
        end)
        repeat Wait(0) until bankResult ~= nil
        if quantity <= bankResult then
            return true
        else
            lib.notify({
                id = 'noMoney',
                type = 'error',
                description = locale('noEnoughMoney'),
                duration = 3000
            })
            return false
        end
    end
end