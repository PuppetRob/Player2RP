

RegisterNetEvent("PlasmaKart:SpawnedKartFunction")
AddEventHandler("PlasmaKart:SpawnedKartFunction", function(kart,kartPlate)
	-- This is Called when the kart is created
	-- You can add here all that you need (client side)
	-- key for hotwire script
	-- fuel
	-- etc...
	
	-- kart is the id of the entity
	-- kartPlate is the license plate of the kart
	
	print("SpawnedKartFunction")
	
	
	Citizen.CreateThread(function()
		Wait(1000)
		TriggerEvent("p2rp-fuel:setFuel",kart,10000.0)
		SetVehicleFuelLevel(kart, 1000 + 0.0)
	end)
	TriggerEvent("vehiclekeys:client:SetOwner",kartPlate)
	TriggerEvent("cd_garage:AddKeys",kartPlate)
	TriggerEvent('seatbeltToggle')
end)


RegisterNetEvent("PlasmaKart:ExtCpPassed")
AddEventHandler("PlasmaKart:ExtCpPassed", function(currentShop,curCP,curLap,kart)
	print("ExtCpPassed")
	-- This is called each time the kart pass a checkpoint
	-- you can add here all that you need (client side)
	-- repair function
	-- refuel
	-- etc...
	-- 
	-- currentShop is the place where the race as been launch (if you have only one lobby this will be the same each time)
	-- curCP  this is the number of the currentCP passed
	-- curLap this is the number of the current lap
	-- kart this is the kart entity
end)