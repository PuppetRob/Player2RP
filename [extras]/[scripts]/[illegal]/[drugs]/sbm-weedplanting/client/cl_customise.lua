inZone = false

function ShowNotification(msg, type)
    if Config.QBCoreNotify then
        QBCore.Functions.Notify(msg, type)
    elseif Config.okokNotify then
        exports['okokNotify']:Alert(Config.OkOkNotifyTitle,msg, 5000, type)
    elseif Config.pNotify then
        exports.pNotify:SendNotification({text = msg, type = type, layout = Config.pNotifyLayout, timeout = 5000})
    end
end

function string.starts(String,Start)    
    return string.sub(String,1,string.len(Start))==Start 
end

function CreateTargetExports(obj)
	exports[Config.Target]:AddTargetEntity(obj, {
		options = {
			{
				type = "client",
				event = "p2rp-weedplanting:client:checkClosestPlant",
				icon = "fas fa-cannabis",
				label = "Check Plant",
			},
		},
		distance = 2.5
	})
end

function ProgressBar(type, id, coords, obj) -- do not change these parameters
	local ped = PlayerPedId()
	if type == "giving-water" then
		QBCore.Functions.Progressbar("harvesting_weed", Config.Locale["giving_water_progressbar"], 2000, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
		}, {
			animDict = "pickup_object",
			anim = "putdown_low",
			flags = 49,
		}, {}, {}, function() -- Done    
			ClearPedTasks(ped)
			ClearPedSecondaryTask(ped)
			TriggerServerEvent("p2rp-weedplanting:server:removeItem", Config.Items["water"])  -- do not touch this
			TriggerServerEvent("p2rp-weedplanting:server:updateWeedPlantWater", id, coords)  -- do not touch this
		end, function()	--cancel
			ClearPedTasks(ped)
			ClearPedSecondaryTask(ped)
		end, Config.ProgressBarIcon["giving_water"])
	elseif type == "destroy-plant" then
		QBCore.Functions.Progressbar("harvesting_weed", Config.Locale["destroying_plant"], 8000, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
		}, {
			animDict = "weapons@first_person@aim_rng@generic@projectile@thermal_charge@",
			anim = "plant_floor",
			flags = 49,
		}, {}, {}, function() -- Done    
			ClearPedTasks(ped)
			ClearPedSecondaryTask(ped)
			TriggerServerEvent("p2rp-weedplanting:server:deleteWeedPlant", id, coords)  -- do not touch this
		end, function()	--cancel
			ClearPedTasks(ped)
			ClearPedSecondaryTask(ped)
		end, Config.ProgressBarIcon["destroy_weed"])
	elseif type == "giving-insecticide" then
		QBCore.Functions.Progressbar("harvesting_weed", Config.Locale["giving_insecticide_progressbar"], 2000, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
		}, {
			animDict = "pickup_object",
			anim = "putdown_low",
			flags = 49,
		}, {}, {}, function() -- Done    
			ClearPedTasks(ped)
			ClearPedSecondaryTask(ped)
			TriggerServerEvent("p2rp-weedplanting:server:removeItem", Config.Items["insecticide"])  -- do not touch this
			TriggerServerEvent("p2rp-weedplanting:server:updateWeedPlantHealth", id, coords)  -- do not touch this
		end, function()	--cancel
			ClearPedTasks(ped)
			ClearPedSecondaryTask(ped)
		end, Config.ProgressBarIcon["giving_insecticide"])
	elseif type == "harvest" then
		QBCore.Functions.Progressbar("harvesting_weed", Config.Locale["harvesting_weed_progressbar"], 8000, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
				task = "WORLD_HUMAN_GARDENER_PLANT",
			}, {}, {}, function() -- Done    
			ClearPedTasks(ped)
			ClearPedSecondaryTask(ped)
			if DoesEntityExist(obj) then
				TriggerServerEvent("p2rp-weedplanting:server:harvestWeed", id, coords) -- do not touch this
				currentObj = nil  -- do not touch this
			end
		end, function()	--cancel
			ClearPedTasks(ped)
			ClearPedSecondaryTask(ped)
		end, Config.ProgressBarIcon["harvesting_weed"])
	end
end

function ProgressBarPlant(a, b, c, d) -- do not change the parameters
	local ped = PlayerPedId()
	QBCore.Functions.Progressbar("adding_weedplant", Config.Locale["plant_weed_progressbar"], 8000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		}, {
			task = "WORLD_HUMAN_GARDENER_PLANT",
		}, {}, {}, function() -- Done    
		ClearPedTasks(ped)
		ClearPedSecondaryTask(ped)
		TriggerServerEvent("p2rp-weedplanting:server:addWeedPlant", a, b, c, d) -- do not touch this
	end, function()	--cancel
		ClearPedTasks(ped)
		ClearPedSecondaryTask(ped)
	end, Config.ProgressBarIcon["planting_weed"])
end