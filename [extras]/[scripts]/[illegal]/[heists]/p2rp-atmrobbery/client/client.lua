local QBCore = exports['qb-core']:GetCoreObject()

local RobbingATM = false
local streetName 
local _
local Exploded = false
local CurrentCops = 0 
local coords = {}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    isLoggedIn = true
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload')
AddEventHandler('QBCore:Client:OnPlayerUnload', function()
    isLoggedIn = false
end)

RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

function isNight()
	local hour = GetClockHours()
	if hour >= 0 and hour <= 6 then
	return true
	end
end
		
RegisterNetEvent('atm:item')
AddEventHandler('atm:item', function()
local pos = GetEntityCoords(PlayerPedId())
	if not RobbingATM then
		for k,v in pairs(Config.ATMs) do
			if GetDistanceBetweenCoords(pos.x, pos.y, pos.z, v.x, v.y, v.z, true) <= 1.5 then
				if Config.OnlyNight then 
					if isNight() then
						local src = source
						startRobbingATM()
						coords = {
							x = v.x, 
							y = v.y,
							z = v.z,
						}
					else
					TriggerEvent('QBCore:Notify', "Wait for night!")
					end
				else 
					local src = source
						startRobbingATM()
						coords = {
							x = v.x, 
							y = v.y,
							z = v.z,
						}
				end
			end
		end
	end
end)


-- Starting ATM Robbery:
function startRobbingATM()
	 QBCore.Functions.TriggerCallback("p2rp-atmrobbery:GetCooldown", function(undercd)
		if not undercd then
				if CurrentCops >= Config.RequiredPolice then
					QBCore.Functions.TriggerCallback('p2rp-atmrobbery:getHackerDevice', function(hackerdevice)
						if hackerdevice then
							RobbingATM = true
							FreezeEntityPosition(player,true)
							local player = PlayerPedId()
							local playerPos = GetEntityCoords(player)
							exports['ps-dispatch']:AtmRobbery()
							--TriggerServerEvent("p2rp-atmrobbery:server:callCops", "ATM Robbery", streetLabel, pos, coords)
							--TriggerEvent("p2rp-atmrobbery:PoliceAlert")
							TriggerEvent("p2rp-atmrobbery:RobTimer")

						    GiveWeaponToPed(PlayerPedId(), GetHashKey("weapon_stickybomb"), 1, false, true)
							Citizen.Wait(1000)
							TaskPlantBomb(PlayerPedId(), coords.x, coords.y, coords.z, 218.5)
							TriggerServerEvent("QBCore:Server:RemoveItem", "atmkit", 1)
							
							local time = 6
							while time > 0 do 
								QBCore.Functions.Notify("Blast in about " .. time .. "..")
								Citizen.Wait(1000)
								time = time - 1
							end

							AddExplosion(coords.x, coords.y, coords.z, EXPLOSION_STICKYBOMB, 4.0, true, false, 20.0)

							Exploded = true
							RequestWeaponAsset(GetHashKey("weapon_flare")) 
							while not HasWeaponAssetLoaded(GetHashKey("weapon_flare")) do
								Wait(0)
							end
							Wait(50)
								ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x - 0.001, coords.y - 0.001, coords.z - 0.001, 0, false, GetHashKey("weapon_flare"), 0, true, false, -1.0) 
								ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x - 0.001, coords.y - 0.001, coords.z - 0.001, 0, false, GetHashKey("weapon_flare"), 0, true, false, -1.0) 
									Wait(2000)
								ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x - 0.005, coords.y - 0.005, coords.z - 0.001, 0, false, GetHashKey("weapon_flare"), 0, true, false, -1.0) 
								ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x - 0.005, coords.y - 0.005, coords.z - 0.001, 0, false, GetHashKey("weapon_flare"), 0, true, false, -1.0) 
									Wait(2000)
								ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x - 0.007, coords.y - 0.007, coords.z - 0.001, 0, false, GetHashKey("weapon_flare"), 0, true, false, -1.0) 
								ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x - 0.007, coords.y - 0.007, coords.z - 0.001, 0, false, GetHashKey("weapon_flare"), 0, true, false, -1.0) 
							
							-- undercd = true 
							TriggerServerEvent("p2rp-atmrobbery:CooldownServer", true)
							
						else
							RobbingATM = false
						end
					end)
				else
					RobbingATM = false
					TriggerEvent('QBCore:Notify', 'Not Enough Police in the City!')
				end
		else
			RobbingATM = false
			TriggerServerEvent("p2rp-atmrobbery:CooldownNotify")
		end
	end)
end

RegisterNetEvent("p2rp-atmrobbery:PoliceAlert")
AddEventHandler("p2rp-atmrobbery:PoliceAlert", function()

	exports['ps-dispatch']:AtmRobbery()

end)

RegisterNetEvent('p2rp-atmrobbery:Drilling')
AddEventHandler('p2rp-atmrobbery:Drilling', function()		
	local ped = PlayerPedId()
	local animDict = "anim@heists@fleeca_bank@drilling"
	local animLib = "drill_straight_idle"
			
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do
		Citizen.Wait(50)
	end	
	SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"),true)
	Citizen.Wait(500)				
	local drillProp = GetHashKey('hei_prop_heist_drill')
	local boneIndex = GetPedBoneIndex(ped, 28422)			
	RequestModel(drillProp)
	while not HasModelLoaded(drillProp) do
		Citizen.Wait(100)
	end			
	TaskPlayAnim(ped,animDict,animLib,1.0, -1.0, -1, 2, 0, 0, 0, 0)			
	attachedDrill = CreateObject(drillProp, 1.0, 1.0, 1.0, 1, 1, 0)
	AttachEntityToEntity(attachedDrill, ped, boneIndex, 0.0, 0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 0, 2, 1)			
	SetEntityAsMissionEntity(attachedDrill, true, true)					
	PlaySoundFromEntity(drillSound, "Drill", attachedDrill, "DLC_HEIST_FLEECA_SOUNDSET", 1, 0)
	
	TriggerEvent("Drilling:Start",function(success)
		if (success) then
			DeleteObject(attachedDrill)
			DeleteEntity(attachedDrill)
			ClearPedTasksImmediately(ped)
			hackingEvent(true)
		else
			DeleteObject(attachedDrill)
			DeleteEntity(attachedDrill)
			ClearPedTasksImmediately(ped)
			hackingEvent(false)
		end
	end)	
				
end)

------------------------

local allowedtime = 0 
local secs = 60 

RegisterNetEvent("p2rp-atmrobbery:RobTimer")
AddEventHandler("p2rp-atmrobbery:RobTimer", function()
	allowedtime = Config.RobberyTime * 60 
	secs = 60
	Wait(50)
	Timer()
end)

function Timer()
    while true do
        Citizen.Wait(1000)
        allowedtime = allowedtime - 1
		
        if allowedtime < 0 then 
			-- hackingEvent(false)
			TriggerEvent("Drilling:Stop")
			Wait(50)
            break
        end

		if allowedtime ~= 0 then 
            if secs ~= 0 then 
                secs = secs - 1
            else 
                secs = 60
                secs = secs - 1 
            end
		end
        if allowedtime == 0  then
            secs = 0 
		end
    end
end

-- Hacking Event:
function hackingEvent(success)
	local player = PlayerPedId()
    FreezeEntityPosition(player,false)
    if success then
		TriggerServerEvent("p2rp-atmrobbery:success")	
		TriggerEvent('QBCore:Notify', "Robbery Succesfully Completed!")
    else
		TriggerEvent('QBCore:Notify', "Robbery Failed! Better Luck Next Time")
		-- TriggerServerEvent('itemsil', source)
	end
	ClearPedTasks(player)
	ClearPedSecondaryTask(player)	
	RobbingATM = false
	Exploded = false
end

-- AFTER BLAST DRILLING

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(5)
        if Exploded then 
            local dist = #(GetEntityCoords(PlayerPedId()) - vector3(coords.x, coords.y, coords.z)) 

			drawTxt('Robbery Time Remaining: ' ..math.ceil((allowedtime/60) - 1).. " Minutes " .. secs .. " Seconds ",4,0.5,0.93,0.50,255,255,255,180)
   
            if dist < 10 then 
                DrawText3Ds(coords.x, coords.y, coords.z + 0.5, '[F] to Drill into the Final Safe')
                if IsControlJustReleased(0, 23) then
                    TriggerEvent('p2rp-atmrobbery:Drilling')            
                end
            else 
                Citizen.Wait(1500)
            end 
        end
    end 
end)

-- Draw 3D text Function:
function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz= table.unpack(GetGameplayCamCoords())

    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 500
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end

function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end
