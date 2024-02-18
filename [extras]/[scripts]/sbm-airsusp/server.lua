local VehData = {}


AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		local loadFile = LoadResourceFile(GetCurrentResourceName(), "./saveData.json")  
		if not json.decode(loadFile) then
			SaveResourceFile(GetCurrentResourceName(), "saveData.json", json.encode({}), -1)
		end
	end
end)
 

RegisterNetEvent("baseevents:enteredVehicle", function(currentVehicle, currentSeat)
    local src = source
    if (currentSeat == -1) then
        TriggerClientEvent("sbm-airsusp:enterVeh", src, currentVehicle)
    end 
end)


RegisterNetEvent('entityCreating', function(entity)
	if VehData[GetVehicleNumberPlateText(entity)] then 
		TriggerClientEvent('sbm-airsusp:fetchChange', -1, entity, VehData[GetVehicleNumberPlateText(entity)].value, VehData[GetVehicleNumberPlateText(entity)].level)
	end
end)

RegisterServerEvent('sbm-airsusp:fetch', function(netID)
	local src = source
	local loadFile = LoadResourceFile(GetCurrentResourceName(), "./saveData.json")  
	local openData = json.decode(loadFile)
	local found = false
	plate = GetVehicleNumberPlateText(NetworkGetEntityFromNetworkId(netID))
	if CodeStudio.SaveAfterRestart then 
		if openData then
			for k, v in pairs(openData) do
				if v.plate == plate then
					found = true
					TriggerClientEvent('sbm-airsusp:fetchChange', -1, netID, v.value, v.level)
					if not VehData[plate] then
						local newValue = {plate = v.plate, value = v.value, level = v.level}
						VehData[plate] = newValue
					end
				end
			end
			if not found then
				TriggerClientEvent('sbm-airsusp:fetchChange', src, netID, 0, 0)
			end
		end
	else
		if VehData[plate] then 
			TriggerClientEvent('sbm-airsusp:fetchChange', -1, netID, VehData[plate].value, VehData[plate].level)
		else
			TriggerClientEvent('sbm-airsusp:fetchChange', src, netID, 0, 0)
		end
	end
end)



RegisterServerEvent('sbm-airsusp:update', function(netID, level, value)
	local loadFile = LoadResourceFile(GetCurrentResourceName(), "./saveData.json")  
	local openData = json.decode(loadFile)
	local newopenData = {}
	local found = false
	plate = GetVehicleNumberPlateText(NetworkGetEntityFromNetworkId(netID))
	if CodeStudio.SaveAfterRestart then 
		if openData then
			for k, v in pairs(openData) do
				if v.plate == plate then
					found = true
					v.value = value
					v.level = level
					VehData[plate].value = value
					VehData[plate].level = level
				end
				newopenData[#newopenData+1] = v
			end
			if not found then 
				local newValue = {plate = plate, value = value, level = level}
				newopenData[#newopenData+1] = newValue
				VehData[plate] = newValue
			end
			SaveResourceFile(GetCurrentResourceName(), "saveData.json", json.encode(newopenData), -1)
		end
		TriggerClientEvent('sbm-airsusp:fetchChange', -1, netID, value, level)
	else
		if VehData[plate] then 
			VehData[plate].value = value
			VehData[plate].level = level
		else
			local newValue = {plate = plate, value = value, level = level}
			VehData[plate] = newValue
		end
		TriggerClientEvent('sbm-airsusp:fetchChange', -1, netID, value, level)
	end
end)



