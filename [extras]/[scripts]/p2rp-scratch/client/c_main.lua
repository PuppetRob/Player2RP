local cooldown = 0

RegisterNetEvent("p2rp-scratch:isActiveCooldown", function()
	TriggerServerEvent("p2rp-scratch:handler", cooldown > 0 and true or false, cooldown)
end)

RegisterNetEvent("p2rp-scratch:setCooldown", function()
  cooldown = Config.ScratchCooldownInSeconds
	CreateThread(function()
		while (cooldown ~= 0) do
			Wait(1000)
			cooldown = cooldown - 1
		end
	end)
end)

RegisterNetEvent("p2rp-scratch:startScratchingEmote", function()
	TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_PARKING_METER", 0, true)
end)

RegisterNetEvent("p2rp-scratch:stopScratchingEmote", function()
	ClearPedTasksImmediately(GetPlayerPed(-1))
end)

RegisterNUICallback('deposit', function(data)
	TriggerServerEvent('p2rp-scratch:deposit', data.key, data.price, data.amount, data.type)
end)