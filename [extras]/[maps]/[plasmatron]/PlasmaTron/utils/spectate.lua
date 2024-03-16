local spectateLoop = false
local spectateSomeone = false
local currentcam = nil
local offsetRotX = 0.0
local offsetRotZ = 0.0
local offsetRotY = 0.0




function DisplayHelpText2(str)
    SetTextComponentFormat("STRING")
    AddTextComponentString(str)
    DisplayHelpTextFromStringLabel(0, 0, 0, -1)
end

local cptSpectate = 0

function goToSpectate(data)

	-- local playerIdx = GetPlayerFromServerId(data)
	-- local playerPedx = GetPlayerPed(playerIdx)
	spectateSomeone = false
	print("goToSpectate")
	offsetRotX = 0.0
	offsetRotZ = 0.0
	offsetRotY = 0.0


	Citizen.CreateThread(function()
		-- pedToSpectate = playerPedx
		currentcam = StartFreeCam(90.0,data)
		
		cptSpectate = cptSpectate + 1
		spectateSomeone = true
		-- print("spectateSomeone : "..tostring(spectateSomeone))
		while spectateSomeone do
			Wait(0)
			-- pedToSCoords = GetEntityCoords(pedToSpectate)
			-- pedToSCoordsOffset = GetOffsetFromEntityInWorldCoords(pedToSpectate,0.0,-2.5,0.0)
			-- pedToSHeading = GetEntityHeading(pedToSpectate)
			-- print("Id spectate : "..tostring(cptSpectate))
			
			SetCamCoord(currentcam,data.x,data.y,data.z+1.0)
			
			offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 2.0 * 2.5)
			offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 2.0 * 2.5) -- gauche droite
			if (offsetRotX > 90.0) then offsetRotX = 90.0 elseif (offsetRotX < -90.0) then offsetRotX = -90.0 end
			if (offsetRotY > 90.0) then offsetRotY = 90.0 elseif (offsetRotY < -90.0) then offsetRotY = -90.0 end
			if (offsetRotZ > 360.0) then offsetRotZ = offsetRotZ - 360.0 elseif (offsetRotZ < -360.0) then offsetRotZ = offsetRotZ + 360.0 end
			
			SetCamRot(currentcam,offsetRotX,0.0,offsetRotZ,2)
		end
		-- print("End While")
	end)
end

function StartFreeCam(fov,coords)
	local cam = nil
    ClearFocus()

    locFov = GetGameplayCamFov()
	print("coords : "..tostring(coords.x))
    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", coords.x,coords.y,coords.z, 0.0, 0.0, 0.0, locFov * 1.0, false, 0)

    SetCamActive(cam, true)
    -- RenderScriptCams(true, false, 0, true, false)
    RenderScriptCams(true, false, 1, true, true)
    SetCamAffectsAiming(cam, false)

    -- AttachCamToEntity(cam, entity, 0.0, -3.5, 1.0, true)
	return cam
end

function EndFreeCam()
	print("EndFreeCam")
	spectateSomeone = false
	
    ClearFocus()
	
	-- 
    RenderScriptCams(false, false, 0, true, true)
	SetCamActive(currentcam, false)
	
    -- DestroyCam(currentcam, false)
    DestroyCam(currentcam, true)
	
    offsetRotX = 0.0
    offsetRotY = 0.0
    offsetRotZ = 0.0



    currentcam = nil
end

-- PlasmaTron:GoToSpectate



RegisterNetEvent('PlasmaTron:GoToSpectate')
AddEventHandler('PlasmaTron:GoToSpectate', function(DataPlayerList)
	spectateLoop = false
	Wait(100)
	spectateLoop = true
	currentspectateIDX = 1
	spectatePedList = DataPlayerList
	
	Citizen.CreateThread(function()
		goToSpectate(spectatePedList[currentspectateIDX])
		while spectateLoop do
			Wait(0)
			
			DisplayHelpText2(trad[lang]["PrevPly"].." ~INPUT_CELLPHONE_LEFT~, "..trad[lang]["NextPly"].." ~INPUT_CELLPHONE_RIGHT~")
			if IsControlJustReleased(1, 174) then---- <---
				EndFreeCam()
				currentspectateIDX = currentspectateIDX - 1
				if currentspectateIDX <= 0 then
					currentspectateIDX = #spectatePedList
				end
				goToSpectate(spectatePedList[currentspectateIDX])
				Wait(500)
			end
			
			if IsControlJustReleased(1, 175) then---- ---->
				EndFreeCam()
				currentspectateIDX = currentspectateIDX + 1
				if currentspectateIDX > #spectatePedList then
					currentspectateIDX = 1
				end
				goToSpectate(spectatePedList[currentspectateIDX])
				Wait(500)
			end
		end
		
		EndFreeCam()
	end)
end)

RegisterNetEvent('PlasmaTron:GoToExternalSpectate')
AddEventHandler('PlasmaTron:GoToExternalSpectate', function(DataPlayerList)
	spectateLoop = false
	Wait(100)
	spectateLoop = true
	currentspectateIDX = 1
	spectatePedList = DataPlayerList
	TriggerServerEvent("PataTron:GetVehtoDraw")
	Citizen.CreateThread(function()
		goToSpectate(spectatePedList[currentspectateIDX])
		while spectateLoop do
			Wait(0)
			DisableControlAction(2,51,true)
			DisplayHelpText2(trad[lang]["PrevPly"].." ~INPUT_CELLPHONE_LEFT~, "..trad[lang]["NextPly"].." ~INPUT_CELLPHONE_RIGHT~ "..trad[lang]["leaveSpec"].." ~INPUT_SKIP_CUTSCENE~")
			if IsControlJustReleased(1, 174) then---- <---
				EndFreeCam()
				currentspectateIDX = currentspectateIDX - 1
				if currentspectateIDX <= 0 then
					currentspectateIDX = #spectatePedList
				end
				goToSpectate(spectatePedList[currentspectateIDX])
				Wait(500)
			end
			
			if IsControlJustReleased(1, 175) then---- ---->
				EndFreeCam()
				currentspectateIDX = currentspectateIDX + 1
				if currentspectateIDX > #spectatePedList then
					currentspectateIDX = 1
				end
				goToSpectate(spectatePedList[currentspectateIDX])
				Wait(500)
			end
			
			if IsControlJustReleased(1, 18) then---- ---->
				EndFreeCam()
				spectateSomeone = false
				spectateLoop = false
				TriggerServerEvent("PlasmaTron:EndEXTSpectate")
			end
			
		end
		
		EndFreeCam()
	end)
end)


RegisterNetEvent('PlasmaTron:EndSpectate')
AddEventHandler('PlasmaTron:EndSpectate', function()
	EndFreeCam()
	spectateSomeone = false
	spectateLoop = false
end)