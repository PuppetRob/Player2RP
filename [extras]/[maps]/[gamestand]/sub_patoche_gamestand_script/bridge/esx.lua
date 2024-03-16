if Shared.Framework ~= 'ESX' then return end
print('ESX framework detected')
ESX = ESX or exports.es_extended:getSharedObject()

local server = IsDuplicityVersion()

if server then
    RegisterServerEvent('patoche_gamestand:chinUpPlay', function(method)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)

        if method == "cash" then
            xPlayer.removeMoney(Config.chinUpPlayCost)
        elseif method == "bank" then
            xPlayer.removeAccountMoney("bank", Config.chinUpPlayCost)
        end
        print('player ^3', src, '^7 paid for play the chin up challenge')
    end)

    RegisterServerEvent('patoche_gamestand:chinUpReward', function(source)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)
        xPlayer.addMoney(Config.chinUpReward)
    end)

    ESX.RegisterServerCallback('patoche_gamestand:esx:haveMoneyCash', function(source, cb)
        local xPlayer = ESX.GetPlayerFromId(source)
        if not xPlayer then cb(0) return end
        local playerCash = xPlayer.getMoney()
        cb(playerCash)
    end)

    ESX.RegisterServerCallback('patoche_gamestand:esx:haveMoneyBank', function(source, cb)
        local xPlayer = ESX.GetPlayerFromId(source)
        if not xPlayer then cb(0) return end
        local playerBank = xPlayer.getAccount('bank').money
        cb(playerBank)
    end)
end

function hasMoney(quantity, method)
    print(quantity, method)
    if method == 'cash' then
        local cashResult
        ESX.TriggerServerCallback('patoche_gamestand:esx:haveMoneyCash', function(playerCash)
            cashResult = playerCash
            print('playerCash', playerCash)
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
        ESX.TriggerServerCallback('patoche_gamestand:esx:haveMoneyBank', function(playerBank)
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

function notifyPlayer(msg)
    ESX.ShowNotification(msg)
end