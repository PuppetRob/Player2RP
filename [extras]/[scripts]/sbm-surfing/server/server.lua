local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent('rent:server:surf')
AddEventHandler('rent:server:surf', function(totales, soldi, boatModel, BerthId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local societa = 'surfjob'
    local totalamount = totales
    local verify = false
    local PlayerMoney = {
        cash = Player.PlayerData.money.cash,
        bank = Player.PlayerData.money.bank,
    }
   if PlayerMoney.bank >= totalamount then
        Player.Functions.RemoveMoney('bank', soldi, "carking")
        TriggerClientEvent('QBCore:Notify', src, 'You rented a Surfboard for $ '..soldi..'', 'success', 4000)
        --QBCore.Functions.ExecuteSql(false, "UPDATE `society_invoice` SET amount='"..tonumber(totalamount).."' WHERE `society` = '"..societa.."'")

        local plate = "surf"..math.random(111, 999)

        TriggerClientEvent('sbm-surfing:Auto', src, boatModel, plate)
    else

    TriggerClientEvent('QBCore:Notify', src, 'You have no money to Rent a Surfboard', 'error', 4000)
    end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------
------------CONTROLLO SOLDI NEL DATABASE SOCIETA e STAMPO MESSAGGIO-----------------------------------------------------------------------------------R

QBCore.Functions.CreateCallback('leggo:server:soldisurf', function(source, cb, dock)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local societa = 'surfjob'
    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `society_invoice` WHERE `society` = '"..societa.."'", function(result)
        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------RITIRO SOLDI------------------------------------------------------------------------------
RegisterServerEvent('ritiro:server:surf')
AddEventHandler('ritiro:server:surf', function(total)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local societa = "surfjob"
    local totalamount = 0

    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `society_invoice` WHERE `society` = '"..societa.."'", function(result)
        if result[1] ~= nil then
            for k, v in pairs(result) do
            controllo = v.amount

                Player.Functions.AddMoney('cash', tonumber(total), "Delet")

                TriggerClientEvent('QBCore:Notify', src, 'You have withdrawn $'.. total ..' cash rent surf ' ..societa..'', "success")

                QBCore.Functions.ExecuteSql(false, "UPDATE `society_invoice` SET amount='"..tonumber(totalamount).."' WHERE `society` = '"..societa.."'")

            end
        else

        end
    end)
end)
-----------------------------[Preleva soldi]------------------------------------------------------------------------

                                       