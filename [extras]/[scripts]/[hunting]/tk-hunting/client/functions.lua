local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local isLoggedIn = LocalPlayer.state.isLoggedIn
local vehicle = nil

RegisterNetEvent('tk-hunting:client:callPolice', function() -- Use This Event For Your own Call Police Function 
    --For Codesigns Dispatch
    -- local data = exports['cd_dispatch']:GetPlayerInfo()
    -- TriggerServerEvent('cd_dispatch:AddNotification', {
    --     job_table = {'police'}, 
    --     coords = data.coords,
    --     title = '10-15 - House Robbery',
    --     message = 'A '..data.sex..' robbing a house at '..data.street, 
    --     flash = 0,
    --     unique_id = tostring(math.random(0000000,9999999)),
    --     blip = {
    --         sprite = 431, 
    --         scale = 1.2, 
    --         colour = 3,
    --         flashes = false, 
    --         text = '911 - House Robbery',
    --         time = (5*60*1000),
    --         sound = 1,
    --     }
    -- })

    --For Base QBCore Police Call
    TriggerServerEvent('police:server:policeAlert', Lang:t("notify.hunter_detected"))

    -- Other Custom Dispatch or Police Call functions
end)

function SpawnVehicle(coords)
    QBCore.Functions.SpawnVehicle(Config.Vehicle, function(veh)
        vehicle = veh
        SetEntityHeading(veh, coords.w)
        exports[Config.FuelScript]:SetFuel(veh, 100.0)
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        SetEntityAsMissionEntity(veh,true,true)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
    end, coords, true)
end

function DeleteVeh()
    DeleteVehicle(vehicle)
end