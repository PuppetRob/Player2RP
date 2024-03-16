
RegisterServerEvent('PlasmaTron:CreatedVehicle')
AddEventHandler('PlasmaTron:CreatedVehicle', function(idVeh)
	local veh = NetworkGetEntityFromNetworkId(idVeh)
	
	
end)


function GetSpecPlayerName(id)
	local PlayerName = ""
	---------------------------
	-- ADD HERE YOUR SPECIFIC FUNCTION TO GET THE PLAYER NAME
	
	
	PlayerName = GetPlayerName(id) -- This is for STEAM / FIVEM Player Name
	
	
	
	---------------------------
	return PlayerName or ""
end