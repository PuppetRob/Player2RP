
RegisterNetEvent('unionheist:client:giveVehicleKey')
AddEventHandler('unionheist:client:giveVehicleKey', function(vehiclePlate)
    local plate = string.gsub(vehiclePlate, '^%s*(.-)%s*$', '%1')
    --Write your give vehicle key event for cutter
    TriggerEvent('vehiclekeys:client:SetOwner', plate)
  --  TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
end)

function ShowHelpNotification(text)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, 50)
end

function ShowNotification(msg)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(msg)
	DrawNotification(0, 1)
end

----------------------------------

RegisterNetEvent('unionheist:client:showNotification')
AddEventHandler('unionheist:client:showNotification', function(str)
    ShowNotification(str)
end)

--This event send to all police players
RegisterNetEvent('unionheist:client:policeAlert')
AddEventHandler('unionheist:client:policeAlert', function(targetCoords)
    exports['ps-dispatch']:UnionRobbery()
end)
