QBCore = nil

local WeedPlants = {}
local inRange = false
local nearestPlant = nil
local PlayerData = {}
local isSpawned = false
local currentPlantId = 0
currentObj = nil

if Config.OldQBCore then
	Citizen.CreateThread(function()
		while QBCore == nil do
			TriggerEvent(Config.Core..':GetObject', function(obj) QBCore = obj end)
			Citizen.Wait(200)
		end
	end)
else
	QBCore = exports[Config.CoreFolderName]:GetCoreObject()
end

RegisterNetEvent(Config.Core..":Client:OnPlayerLoaded")
AddEventHandler(Config.Core..":Client:OnPlayerLoaded", function()
	QBCore.Functions.TriggerCallback('p2rp-weedplanting:server:getTables', function(plantsTable)
        for k, v in ipairs(plantsTable) do
			v.textH = vector3(v.coords[1], v.coords[2], v.coords[3]+1.5)	--health status text
			v.textP = vector3(v.coords[1], v.coords[2], v.coords[3]+1.7)	--progress status text
			v.textN = vector3(v.coords[1], v.coords[2], v.coords[3]+1.9)	--label status text
		end
		WeedPlants = plantsTable
		isSpawned = true
    end)
end)

RegisterNetEvent(Config.Core..':Client:OnPlayerUnload')
AddEventHandler(Config.Core..':Client:OnPlayerUnload', function()
	isSpawned = false
    if WeedPlants then
		for k, v in pairs(WeedPlants) do
			DeleteEntity(v.obj)
			v.obj = nil
		end
	end
end)


AddEventHandler('onResourceStop', function(resource)
	if (GetCurrentResourceName() ~= resource) then return end
	if WeedPlants then
		for k, v in pairs(WeedPlants) do
			DeleteEntity(v.obj)
		end
	end
end)

AddEventHandler('onResourceStart', function(resource)
	if (GetCurrentResourceName() ~= resource) then return end

		Wait(100)
		local p = promise.new()
		QBCore.Functions.TriggerCallback("p2rp-weedplanting:server:getTables", function(plantsTable)
			p:resolve(plantsTable)
		end)
		WeedPlants = Citizen.Await(p)
		isSpawned = true
		print("Weedplants loaded")
		print(json.encode(WeedPlants))
	
end)

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

function DoDestroyAnim(id, coords)
	ProgressBar("destroy-plant", id, coords, nil)
	
end

RegisterNetEvent("p2rp-weedplanting:client:checkClosestPlant")
AddEventHandler("p2rp-weedplanting:client:checkClosestPlant", function(data)
	closestDistance = 2.0
	local index = 0
	if WeedPlants then
		for k, v in ipairs(WeedPlants) do
			if v.obj == data.entity then
				index = k
			end
		end
		if index == 0 then
			ShowNotification(Config.Locale["invalid_plant"], "error")
			return
		else
			TriggerEvent("p2rp-weedplanting:client:OpenOptions", index)
		end
	end
end)

RegisterNetEvent("p2rp-weedplanting:client:OpenOptions")
AddEventHandler("p2rp-weedplanting:client:OpenOptions", function(id)
	currentPlantId = id
	nearestPlant = id
	currentObj = WeedPlants[id].obj
	if not showingDetail then
        showingDetail = true
        SendNUIMessage({
            action = "show",
            Label = WeedPlants[id].label,
            Progress = WeedPlants[id].progress,
            Health = WeedPlants[id].health,
			State = WeedPlants[id].state,
			Water = WeedPlants[id].water,
            ShowOptions = true,
			DestroyOptions = Config.DestroyOptions,
        })
    end
	SetNuiFocus(true, true)
end)

RegisterNUICallback("FocusOff" , function(data , cb)
    SetNuiFocus(false , false)
    showingDetail = false
end)

RegisterNUICallback("OptionHandler" , function(data , cb)
    if showingDetail then
        SendNUIMessage({
            action = "hide",
        })
        SetNuiFocus(false , false)
		showingDetail = false
    end
    if data.action == "harvest-option" then
		if WeedPlants[currentPlantId].progress >= 100 then
			HarvestWeed(currentPlantId, currentObj)
		else
			ShowNotification(Config.Locale["plant_not_ready"], "error")
		end
	elseif data.action == "insecticide-option" then
		TriggerEvent("p2rp-weedplanting:client:giveInsecticide")
	elseif data.action == "destroy-option" then
		
		DoDestroyAnim(currentPlantId, WeedPlants[currentPlantId].coords)
	elseif data.action == "water-option" then
		TriggerEvent("p2rp-weedplanting:client:giveWater")
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(7)
		if isSpawned and WeedPlants then
			inRange = false
			local ped = PlayerPedId()
			local pos = GetEntityCoords(ped)
			--print(nearestPlant)
			for k,v in ipairs(WeedPlants) do
				local dist = #(pos - v.coords)
				if dist <= 150.0 then
					if v.obj == nil then
						for a, b in pairs(Config.Stages) do
							if v.progress >= b.min and v.progress <= b.max then
								local obj = CreateObject(GetHashKey(b.model), vector3(v.coords.x, v.coords.y, v.coords.z + b.offset), false)
								FreezeEntityPosition(obj, true)
								v.obj = obj
								CreateTargetExports(obj)
							end
						end
					end
				else
					if v.obj then
						exports[Config.Target]:RemoveTargetEntity(v.obj, 'Check Plant')
						DeleteEntity(v.obj)
						v.obj = nil
					end
				end
				
				if Config.CanBurnPlants then
					if v.obj and IsEntityOnFire(v.obj) and v.IsBurning==nil then
						v.IsBurning = true
						burnWeedPlants(k, v.coords)
					end
				end
			end
		end

		if not inRange then
			Citizen.Wait(500)
		end
	end
end)

function HarvestWeed(id, obj)
	local loc = WeedPlants[id].coords
	local ped = PlayerPedId()
	ProgressBar("harvest", id, loc, obj)
	
end


RegisterNetEvent('p2rp-weedplanting:client:placeWeedPlant')
AddEventHandler('p2rp-weedplanting:client:placeWeedPlant', function(seed, label)
	checkPlantingSurface(seed, label)
end)

RegisterNetEvent('p2rp-weedplanting:client:addWeedPlant')
AddEventHandler('p2rp-weedplanting:client:addWeedPlant', function(data)
	local plant = data
	if #(GetEntityCoords(PlayerPedId()) - data.coords)<= 150.0 then
		local obj = CreateObject(Config.Stages[1].model, data.coords.x, data.coords.y, data.coords.z + Config.Stages[1].offset, false)
		FreezeEntityPosition(obj, true)
		plant.obj = obj
		CreateTargetExports(obj)
	end
	table.insert(WeedPlants, plant)
end)

RegisterNetEvent('p2rp-weedplanting:client:updatePlantStatus')
AddEventHandler('p2rp-weedplanting:client:updatePlantStatus', function(data)
	for k,v in ipairs(WeedPlants) do
		v.health = data[k].health
		v.progress = data[k].progress
		v.water = data[k].water
		if v.state ~= Config.HarvestingState then
			for a, b in pairs(Config.Stages) do
				if v.progress >= b.min and v.progress <= b.max and v.state ~= b.state then
					DeleteEntity(v.obj)
					local obj = CreateObject(GetHashKey(b.model), vector3(v.coords.x, v.coords.y, v.coords.z + b.offset), false)
					FreezeEntityPosition(obj, true)
					v.obj = obj
					CreateTargetExports(obj)
				end
			end
		end
		v.state = data[k].state
	end
end)

RegisterNetEvent('p2rp-weedplanting:client:giveInsecticide')
AddEventHandler('p2rp-weedplanting:client:giveInsecticide', function()
	local pos = GetEntityCoords(PlayerPedId())

	local p = promise.new()
	QBCore.Functions.TriggerCallback("p2rp-weedplanting:server:hasItem", function(result)
		p:resolve(result)
	end, Config.Items["insecticide"])
	local result = Citizen.Await(p)

	if result then
		if currentPlantId and #(pos - WeedPlants[currentPlantId].coords)<=2.5 then
			local ped = PlayerPedId()
			local plantID = currentPlantId
			local plantLoc = WeedPlants[currentPlantId].coords
			ProgressBar("giving-insecticide", plantID, plantLoc, nil)
		else
			ShowNotification(Config.Locale["no_plant_nearby"], "error")
		end
	else
		ShowNotification(Config.Locale["no_insecticide"], "error")
	end
end)

RegisterNetEvent('p2rp-weedplanting:client:giveWater')
AddEventHandler('p2rp-weedplanting:client:giveWater', function()
	local pos = GetEntityCoords(PlayerPedId())

	local p = promise.new()
	QBCore.Functions.TriggerCallback("p2rp-weedplanting:server:hasItem", function(result)
		p:resolve(result)
	end, Config.Items["water"])
	local result = Citizen.Await(p)

	if result then
		if currentPlantId and #(pos - WeedPlants[currentPlantId].coords)<=2.5 then
			local ped = PlayerPedId()
			local plantID = currentPlantId
			local plantLoc = WeedPlants[currentPlantId].coords
			ProgressBar("giving-water", plantID, plantLoc, nil)
		else
			ShowNotification(Config.Locale["no_plant_nearby"], "error")
		end
	else
		ShowNotification(Config.Locale["no_water"], "error")
	end
end)

RegisterNetEvent('p2rp-weedplanting:client:deleteWeedPlant')
AddEventHandler('p2rp-weedplanting:client:deleteWeedPlant', function(plantID, action)
	if WeedPlants[plantID] then
		DeleteEntity(WeedPlants[plantID].obj)
		table.remove(WeedPlants, plantID)
		if nearestPlant==plantID then
			nearestPlant = nil
		end
	end
end)


function checkPlantingSurface(seed, label)
	Citizen.CreateThread(function()
		local ped = PlayerPedId()
		local coordA = GetEntityCoords(ped)
		local coordB = GetOffsetFromEntityInWorldCoords(ped, 0.0, 2.0, -3.0)
		local testRay = StartExpensiveSynchronousShapeTestLosProbe(coordA, coordB, 17, ped, 7)
		local _, hit, endCoords, surfaceNormal, materialHash, _ = GetShapeTestResultIncludingMaterial(testRay)
		if Config.Debug then
			print("Soil-Hash : ", materialHash)
		end

		if hit then
			materialHash = tostring(materialHash)
			if Config.Soil[materialHash] == nil then
				ShowNotification(Config.Locale["not_suitable_soil"], "error")
				return
			end
			if surfaceNormal.z >= 0.7 then
				local soil_nature = Config.Soil[materialHash].ph
				local item = nil

				if soil_nature == "acidic" then
					item = Config.Items["acidic_soil_item"]
				elseif soil_nature == "basic" then
					item = Config.Items["alkaline_soil_item"]
				end
				local result = false
				if item ~= nil then
					local p = promise.new()
					QBCore.Functions.TriggerCallback("p2rp-weedplanting:server:hasItem", function(result)
						p:resolve(result)
					end, item)
					result = Citizen.Await(p)
				else
					result = true
				end

				if result or soil_nature == "neutral" then
					TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true)
					ProgressBarPlant(endCoords, materialHash, seed, label)
					
				else
					if soil_nature == "acidic" then
						ShowNotification(Config.Locale["soil_acidity_notify"], "error")
					elseif soil_nature == "basic" then
						ShowNotification(Config.Locale["soil_alkaline_notify"], "error")
					end
				end
			else
				ShowNotification(Config.Locale["slant_surface_notify"], "error")
			end
		else
			ShowNotification(Config.Locale["no_surface_notify"], "error")
		end
	end)
end

function burnWeedPlants(id, loc)
	Citizen.CreateThread(function()
		Citizen.SetTimeout(3000, function()
			TriggerServerEvent("p2rp-weedplanting:server:deleteWeedPlant", id, loc)
		end)
	end)
end
