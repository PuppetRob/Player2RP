QBCore = exports['qb-core']:GetCoreObject()

local AnyPlayerNearShark = nil
local isSharkAttack = false
local inZone = false
local sharkDoRepelent = false

function SpawnShark()

    local model = 0x06C3F072
    RequestModel(model)
	
    while not HasModelLoaded(model) do
        Citizen.Wait(10)
    end

    local pCoords = GetEntityCoords(PlayerPedId())
	local EnemyShark = CreatePed(1, model, pCoords.x+10, pCoords.y+10, pCoords.z-2, 100, true, false)
	
	-- AddBlipForEntity(EnemyShark)
	
	SetPedSeeingRange(EnemyShark, 100.0)
	SetPedHearingRange(EnemyShark, 80.0)
	SetPedCombatAttributes(EnemyShark, 46, 1)
	SetPedFleeAttributes(EnemyShark, 0, 0)
	SetPedCombatRange(EnemyShark,2)
	SetPedDiesInWater(EnemyShark, false)
	TaskCombatPed(EnemyShark, GetPlayerPed(-1), 0, 16)
	
	isSharkAttack = true

    if not NetworkGetEntityIsNetworked(EnemyShark) then
        NetworkRegisterEntityAsNetworked(EnemyShark)
    end

	SetPedRelationshipGroupHash(EnemyShark, GetHashKey("HATES_PLAYER"))
	SetRelationshipBetweenGroups(5,GetHashKey("PLAYER"),GetHashKey("SHARK"))
	SetRelationshipBetweenGroups(5,GetHashKey("SHARK"),GetHashKey("PLAYER"))
	
end

Citizen.CreateThread(function()
	while true do
		local ped = PlayerPedId()
		local pedcoords = GetEntityCoords(ped, true)		
			
		if inZone == false and isSharkAttack == false then
		
			local name = GetNameOfZone(pedcoords.x, pedcoords.y, pedcoords.z)
		
			if name == 'OCEANA' or name == 'PALCOV' then
				local InWater = IsEntityInWater(ped)
				-- print('no attack')
				if InWater and not sharkDoRepelent then
				-- print('attack')
					inZone = true
					SpawnShark()		
				end
			end		
		end
		
		if isSharkAttack == true then
		-- Citizen.Wait(10000)
		Citizen.Wait(1200000)
		isSharkAttack = false 
		end
		
		Citizen.Wait(120000)
		-- Citizen.Wait(10000)
	end
end)

RegisterNetEvent('jake:client:sharkDoRepelent')
AddEventHandler('jake:client:sharkDoRepelent', function(name, slot)
	if not sharkDoRepelent then
		Notif('I smell like farts now...')
		TriggerServerEvent('jake:server:takeSharkRepelent', name, slot)
		sharkDoRepelent = true
		local count = 180 -- 15min
		while sharkDoRepelent do
			Citizen.Wait(5000) 
			count = count - 1
			if count <= 0 then
					sharkDoRepelent = false
					Notif('Fart smell has worn off...')
				break
			end
		end
	else
		Notif('You already smell like farts...')
	end
end)

function Notif(msg)
	QBCore.Functions.Notify(msg)
end