local cam
local vardemerde = true
--------------Travelling
local waitingPath = {
	[0]={x=-2051.6767578125,y=553.24847412109,z=6.4600133895874,h=81.934921264648},
	[1]={x=-2188.2114257812,y=567.85278320312,z=6.4657604122162,h=265.82330322266},
}

function createCam(data,timeP)
	print("createCam")
	
	cam = CreateCamWithParams("DEFAULT_SPLINE_CAMERA", GetEntityCoords(PlayerPedId()), 0, 0, 0, GetGameplayCamFov() * 1.0)
	-- duration = 10000
	duration = timeP
	vardemerde = true
	for k,v in pairs(data) do
		
		-- print("RandZ : "..tostring(randZ))
		AddCamSplineNode(cam,v.x,v.y,v.z,-5.0,0.0,v.h+0.001,duration,3,2)
		-- OverrideCamSplineVelocity(cam,k,200.0,200.0)
		-- SetCamSplineDuration(2000)
		-- randZ = randZ + 30.0
		-- if randZ > 360.0 then randZ = randZ - 360.0 end
		-- Wait(1000)
	end
    SetCamActive(cam, true)
    RenderScriptCams(true, false, 1, true, false)
    SetCamSplinePhase(cam,1)
	Citizen.CreateThread(function()
		while vardemerde do
			Wait(100)
			-- local camrot = {}
			-- camrot.x,camrot.y,camrot.z = table.unpack(GetCamRot(cam,2))
			-- print("Cam node: "..tostring(GetCamSplineNodeIndex(cam)).." Node phase: "..tostring(GetCamSplineNodePhase(cam)))
			local camCoords = {}
			camCoords.x,camCoords.y,camCoords.z = table.unpack(GetCamCoord(cam))
			-- SetFocusPosAndVel(camCoords.x,camCoords.y,camCoords.z,camCoords.x,camCoords.y,camCoords.z)
			-- SetEntityCoords(PlayerPedId(),camCoords.x,camCoords.y,camCoords.z-75.0)
			-- FreezeEntityPosition(PlayerPedId(),true)
			-- OverrideCamSplineVelocity(cam,1,200.0,200.0)
			-- SetCamRot(cam,0,0,camrot.z+1.0,2)
			local phase = GetCamSplinePhase(cam)
			local node = GetCamSplineNodeIndex(cam)
			-- print("node: "..tostring(node).." phase : "..tostring(phase))
			if not IsCamInterpolating(cam) then
				-- print("IsCamInterpolating")
				  SetCamSplinePhase(cam,1)
			end
		end
		SetCamActive(cam, false)
		vardemerde = false
		RenderScriptCams(0)
		local camCoords = {}
		camCoords.x,camCoords.y,camCoords.z = table.unpack(GetEntityCoords(PlayerPedId()))
		SetFocusPosAndVel(camCoords.x,camCoords.y,camCoords.z,0,0,0)
		ClearFocus()
	end)
end



function stopcam()
	vardemerde = false
	RenderScriptCams(0)
	local camCoords = {}
	camCoords.x,camCoords.y,camCoords.z = table.unpack(GetEntityCoords(PlayerPedId()))
	SetFocusPosAndVel(camCoords.x,camCoords.y,camCoords.z,0,0,0)
	ClearFocus()
	
	DestroyCam(cam,true)
	DestroyCam(cam,false)

end

RegisterNetEvent("PlasmaTron:Cam")
AddEventHandler("PlasmaTron:Cam", function(maps)
	print("create cam for : "..tostring(maps))
	createCam(Maps[maps].MapPreview,Maps[maps].TimePreview)
end)

RegisterNetEvent("PlasmaTron:StopCam")
AddEventHandler("PlasmaTron:StopCam", function(maps)
	stopcam()
end)




if ENABLECOMMAND then

	RegisterCommand('testCam', function(source)
		createCam(waitingPath,10000)
	end)

	RegisterCommand('stopCam', function(source)
		stopcam()
	end)

end