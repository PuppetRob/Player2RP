yellow = 	{pri = 0, sec = 126, perl =  0}
green = 	{pri = 0, sec = 55, perl =  0}
pink = 		{pri = 0, sec = 135, perl =  0}
red = 		{pri = 0, sec = 28, perl =  0}
blue = 		{pri = 0, sec = 140, perl =  0}
white = 	{pri = 0, sec = 134, perl =  0}

local IDXColor = {
[1] = {pri = 0, sec = 126, perl =  0},      -- yellow 
[2] = {pri = 0, sec = 55, perl =  0},       -- green  
[3] = {pri = 0, sec = 135, perl =  0},      -- pink 
[4] = {pri = 0, sec = 140, perl =  0},      -- blue 
[5] = {pri = 0, sec = 28, perl =  0},       -- red 
[6] = {pri = 0, sec = 134, perl =  0},      -- white 
}

local IDXCoords = {
[1] = "yellowCoords",      -- yellow 
[2] = "greenCoords",       -- green  
[3] = "pinkCoords",        -- pink 
[4] = "blueCoords",        -- blue 
[5] = "redCoords",         -- red 
[6] = "whiteCoords",       -- white 
}


local IDXOutFitColor = {
[1] = 0,      -- yellow 
[2] = 1,       -- green  
[3] = 4,        -- pink 
[4] = 3,        -- blue 
[5] = 5,         -- red 
[6] = 8,       -- white 

}




local playerTenu = {
[3] = {model = 0, color = 2},
[4] = {model = 0, color = 2},
[6] = {model = 0, color = 3},
						   
[7] = {model = 0, color = 2},
[8] = {model = 0, color = 2},
[11] = {model = 0, color = 2},
["hat"] = {model = 91, color = 2}
}

local womenOutFit = {
[3] = {model = 215, color = 0}, 		-- Torso / Arms / Bras
[4] = {model = 79}, 	-- Legs / Pants / Jambe
[6] = {model = 58}, 	-- Feet / Shoes / Chaussure

[7] = {model = 0}, 		--Accessories / Accessoires
[8] = {model = 8}, 		--Undershirt / T-Shirt
[11] = {model = 180}, 	--Tops / Veste
["hat"] = {model = 90}
}

local menOutFit = {
[3] = {model = 178, color = 0},		-- Torso / Arms / Bras
[4] = {model = 77},    -- Legs / Pants / Jambe
[6] = {model = 55},     -- Feet / Shoes / Chaussure
                                                
[7] = {model = 0},      --Accessories / Accessoires
[8] = {model = 15},     --Undershirt / T-Shirt
[11] = {model = 178},   --Tops / Veste
["hat"] = {model = 91}
}

local isCostumed = false

function switchTenu(color)
	local sex 
	local ped = PlayerPedId()
	if IsPedModel(ped,GetHashKey('mp_m_freemode_01')) then
		sex = "men"
	elseif IsPedModel(ped,GetHashKey('mp_f_freemode_01')) then
		sex = "women"
	else
		sex = "ped"
	end
	if sex ~= "ped" then
		if not isCostumed then -- Si n' pas sa tenue
			playerTenu[11].model = GetPedDrawableVariation(ped,11)
			playerTenu[11].color = GetPedTextureVariation(ped,11)
			
			playerTenu[4].model = GetPedDrawableVariation(ped,4)
			playerTenu[4].color = GetPedTextureVariation(ped,4)
			
			playerTenu[6].model = GetPedDrawableVariation(ped,6)
			playerTenu[6].color = GetPedTextureVariation(ped,6)
			
			playerTenu[7].model = GetPedDrawableVariation(ped,7)
			playerTenu[7].color = GetPedTextureVariation(ped,7)
			
			playerTenu[8].model = GetPedDrawableVariation(ped,8)
			playerTenu[8].color = GetPedTextureVariation(ped,8)
			
			playerTenu[3].model = GetPedDrawableVariation(ped,3)
			playerTenu[3].color = GetPedTextureVariation(ped,3)
			
			playerTenu["hat"].model = GetPedPropIndex(ped,0)
			playerTenu["hat"].color = GetPedPropTextureIndex(ped,0)
			
			print("hat : "..tostring(playerTenu["hat"].model).." "..tostring(playerTenu["hat"].color))
			
			if sex == "men" then
				isCostumed = true
				local Color = IDXOutFitColor[color]
				-- local randColor = 
				for k,v in pairs(menOutFit) do
					if k ~= "hat" then
						SetPedComponentVariation(ped,k,v.model, Color,2)
					elseif k == "hat" then
						SetPedPropIndex(ped,0,v.model, Color,true)
					end
				end
			else
				isCostumed = true
				local Color = IDXOutFitColor[color]
				for k,v in pairs(womenOutFit) do
					if k ~= "hat" then
						SetPedComponentVariation(ped,k,v.model, Color,2)
					elseif k == "hat" then
						SetPedPropIndex(ped,0,v.model, Color,true)
					end
				end
			end
		else
			isCostumed = false
			for k,v in pairs(playerTenu) do
				if k ~= "hat" then
					SetPedComponentVariation(ped,k,v.model,v.color,2)
				elseif k == "hat" then
					print("set hat : "..tostring(v.model))
					if v.model == -1 then
					ClearPedProp(ped,0)
					else
					SetPedPropIndex(ped,0,v.model, v.color,false)
					end
				end
			end
		end
	else
		print("Use custom ped so no outfit")
	end
end



RegisterNetEvent('PlasmaTron:CreatedVehicle')
AddEventHandler('PlasmaTron:CreatedVehicle', function(idVeh)
	local veh = NetworkGetEntityFromNetworkId(idVeh)
	local plate = GetVehicleNumberPlateText(veh)
	TriggerEvent("vehiclekeys:client:SetOwner",plate) --QBUS KEY
	
	
	
	
	
	
end)


RegisterNetEvent('PlasmaTron:SetInvicible')
AddEventHandler('PlasmaTron:SetInvicible', function(enable)
	SetPlayerInvincible(PlayerId(),enable)
end)

RegisterNetEvent('PlasmaTron:SetVehInvicible')
AddEventHandler('PlasmaTron:SetVehInvicible', function(vehicle)
	SetEntityInvincible(vehicle,true)
end)


function DisplayHelpText(str) -- THIS IS THE DEFAULT GTA NOTIF, YOU CAN USE YOUR OWN HERE
	--str is the string to display (check the config file for the string)
	--care i use some ~INPUT_CONTEXT~ or other build in key for the display you have to make a replace of it
	
    SetTextComponentFormat("STRING")                --DEFAULT GTA
    AddTextComponentString(str)						--DEFAULT GTA
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)		--DEFAULT GTA
end