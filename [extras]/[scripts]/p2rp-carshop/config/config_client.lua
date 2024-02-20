CallbackFunction = nil

if Config.Framework == "QBCore" then
    QBCore = exports[Config.CoreName]:GetCoreObject()
    CallbackFunction = QBCore.Functions.TriggerCallback
elseif Config.Framework == "ESX" then
    CallbackFunction = ESX.TriggerServerCallback
end

------------------------------------------------------------------
----                      WARNING                             ----
----    DO NOT TOUCH IF YOU DON'T KNOW WHAT YOU'RE DOING      ----
----                                                          ----
------------------------------------------------------------------

currentShop = 'none'

Citizen.CreateThread(function()

    ClearFocus()

    if Config.Framework == "QBCore" then

        while not QBCore.Functions.GetPlayerData().job do
            Wait(1)
        end

        PlayerData = QBCore.Functions.GetPlayerData()

    elseif Config.Framework == "ESX" then

        while not ESX.GetPlayerData().job do
            Wait(1)
        end

        PlayerData = ESX.GetPlayerData()
    end

    CreateTargetPeekToPlayers()

    repeat Citizen.Wait(0) until not loadShopData

    for shop, data in pairs(Config.Shops) do

        Config.Shops[shop]["Init"]()

        if data.PolyZone then

            exports["p2rp-carshop"]:AddCircleZone("p2rp-carshop:isNear", data.ShopCoords, 100, {
                data = shop,
            })

            polyZoneShops[shop] = PolyZone:Create(data.PolyZone, { name = shop, debugPoly = false })
            polyZoneShops[shop]:onPlayerInOut(function(isPointInside)
                if isPointInside then
                    currentShop = shop
                    insideShop = true
                    TriggerServerEvent("dealership:requestVehiclesData")
                else
                    currentShop = 'none'
                    insideShop = false

                    loadShopData = nil
                    vehiclesInfoData = nil   
                end
            end)
        end
    end
end)

AddEventHandler("qb-polyzone:enter", function(zone, data)
    if zone == "nxt-carshop:isNear" then
        print('data', data)
        if not showroomIsActive then
            closestShowroom = data
            spawnShowroomVehicles()
        end
    end
end)

AddEventHandler("qb-polyzone:exit", function(zone, data)
    if zone == "nxt-carshop:isNear" then
        print('data', data)
        if showroomIsActive and closestShowroom == data then
            despawnShowroomVehicles()
        end
    end
end)

RegisterNUICallback("trySelectPlayerToSell", function(data, cb)

    vehicleSelectedToBuy = data

    local dialog = exports['qb-input']:ShowInput({
        header = Lang("sell_vehicle"),
        submitText = Lang("confirm"),
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'buyer',
                text =  Lang("buyer_id"),
            }
        }
    })

    TriggerServerEvent('CARSHOP:SendIdToBuyVehicle', dialog.buyer, data, currentShop)
end)

-- Receive this event with the vehicle and license plate of the car that was purchased
AddEventHandler('vehicleshop:client:boughtaVehicle', function(vehicle, plate)

end)

-- Receive this event with the vehicle and license plate of the car on test drive
AddEventHandler('carshop:client:SetOwner', function(vehicle, plate)

end)
-- RegisterCommand('cds', function()
--     print(GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
-- end)