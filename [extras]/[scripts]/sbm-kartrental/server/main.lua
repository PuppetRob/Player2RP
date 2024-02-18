local QBCore = exports['qb-core']:GetCoreObject()

local RentedVehicles = {}

RegisterServerEvent('kartrental:server:SetVehicleRented')
AddEventHandler('kartrental:server:SetVehicleRented', function(plate, bool, vehicleData)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local plyCid = Player.PlayerData.citizenid

    if bool then
        if Player.PlayerData.money.cash >= vehicleData.price then
            Player.Functions.RemoveMoney('cash', vehicleData.price, "vehicle-rentail-bail") 
            RentedVehicles[plyCid] = plate
            TriggerClientEvent('QBCore:Notify', src, 'You paid $'..vehicleData.price..' cash.', 'success', 3500)
            TriggerClientEvent('kartrental:server:SpawnRentedVehicle', src, plate, vehicleData) 
        elseif Player.PlayerData.money.bank >= vehicleData.price then 
            Player.Functions.RemoveMoney('bank', vehicleData.price, "vehicle-rentail-bail") 
            RentedVehicles[plyCid] = plate
            TriggerClientEvent('QBCore:Notify', src, 'You paid $'..vehicleData.price..' via your bank account.', 'success', 3500)
            TriggerClientEvent('kartrental:server:SpawnRentedVehicle', src, plate, vehicleData) 
        else
            TriggerClientEvent('QBCore:Notify', src, 'You do not have enough money', 'error', 3500)
        end
        return
    end
    TriggerClientEvent('QBCore:Notify', src, 'You recieved $'..vehicleData.price..' back for renting.', 'success', 3500)
   Player.Functions.AddMoney('cash', vehicleData.price, "vehicle-rentail-bail")
   RentedVehicles[plyCid] = nil
end)




