local cooldown = 0

RegisterNetEvent("sbm-scratch:isActiveCooldown", function()
	TriggerServerEvent("sbm-scratch:handler", cooldown > 0 and true or false, cooldown)
end)

RegisterNetEvent("sbm-scratch:setCooldown", function()
  cooldown = Config.ScratchCooldownInSeconds
	CreateThread(function()
		while (cooldown ~= 0) do
			Wait(1000)
			cooldown = cooldown - 1
		end
	end)
end)

RegisterNetEvent("sbm-scratch:startScratchingEmote", function()
	TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_PARKING_METER", 0, true)
end)

RegisterNetEvent("sbm-scratch:stopScratchingEmote", function()
	ClearPedTasksImmediately(GetPlayerPed(-1))
end)

RegisterNUICallback('deposit', function(data)
	TriggerServerEvent('sbm-scratch:deposit', data.key, data.price, data.amount, data.type)
end)