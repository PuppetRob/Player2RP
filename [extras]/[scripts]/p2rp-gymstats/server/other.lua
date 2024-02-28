function UpdateStats(playersource, needdataname, needdatanumber)
	if Config.DifferentStatsSystem == false then
		playerneeds[playersource][tostring(needdataname)] = needdatanumber
		TriggerClientEvent("rtx_gym:UpdateStats", playersource, tostring(needdataname), needdatanumber)
	else
		-- add here your set function for stats (needdataname = name of skill, needdatanumber = new data)
	end
end		

function AddStats(playersource, statnamedata, needdatanumber)
	if Config.DifferentStatsSystem == false then
		local statnamedatacalculate = playerneeds[playersource][tostring(statnamedata)]+needdatanumber
		if statnamedatacalculate > 100 then
			playerneeds[playersource][tostring(statnamedata)] = 100
			TriggerClientEvent("rtx_gym:UpdateStats", playersource, tostring(statnamedata), 100)
		else
			playerneeds[playersource][tostring(statnamedata)] = playerneeds[playersource][tostring(statnamedata)]+needdatanumber
			TriggerClientEvent("rtx_gym:UpdateStats", playersource, tostring(statnamedata), playerneeds[playersource][tostring(statnamedata)])
		end
		if Config.ReducingStatsWhenNotExercising == true then
			TriggerClientEvent("rtx_gym:ResetTimer", playersource, tostring(statnamedata))
		end		
	else
		-- add here your add function for stats (needdataname = name of skill, needdatanumber = new data)
	end
end		

function RemoveStats(playersource, statnamedata, needdatanumber)
	if Config.DifferentStatsSystem == false then	
		local statnamedatacalculate = playerneeds[playersource][tostring(statnamedata)]-needdatanumber
		if statnamedatacalculate < 0 then
			playerneeds[playersource][tostring(statnamedata)] = 0
			TriggerClientEvent("rtx_gym:UpdateStats", playersource, tostring(statnamedata), 0)
		else
			playerneeds[playersource][tostring(statnamedata)] = playerneeds[playersource][tostring(statnamedata)]-needdatanumber
			TriggerClientEvent("rtx_gym:UpdateStats", playersource, tostring(statnamedata), playerneeds[playersource][tostring(statnamedata)])
		end
	else
		-- add here your remove function for stats (needdataname = name of skill, needdatanumber = new data)
	end	
end		

function GetStats(playersource, statnamedata)
	if Config.DifferentStatsSystem == false then	
		return playerneeds[playersource][tostring(statnamedata)]
	else
		return 0
	end	
end	

function RemoveStress(playersource, stressdata)
	-- add here your stress function for yoga
end	

if Config.Framework == "esx" then
	ESX.RegisterUsableItem("protein", function(source)
		local playersource = source
		local xPlayer = ESX.GetPlayerFromId(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["protein"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].protein = supplementimereformatedcalculate
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "protein")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtookprotein"])
			xPlayer.removeInventoryItem("protein", 1)	
		end
	end)

	ESX.RegisterUsableItem("creatine", function(source)
		local playersource = source
		local xPlayer = ESX.GetPlayerFromId(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["creatine"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].creatine = supplementimereformatedcalculate	
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "creatine")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtookcreatine"])	
			xPlayer.removeInventoryItem("creatine", 1)	
		end
	end)

	ESX.RegisterUsableItem("preworkout", function(source)
		local playersource = source
		local xPlayer = ESX.GetPlayerFromId(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["preworkout"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].preworkout = supplementimereformatedcalculate	
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "preworkout")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtookpreworkout"])	
			xPlayer.removeInventoryItem("preworkout", 1)	
		end
	end)

	ESX.RegisterUsableItem("testosterone", function(source)
		local playersource = source
		local xPlayer = ESX.GetPlayerFromId(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["testosterone"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].testosterone = supplementimereformatedcalculate	
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "testosterone")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtooktestosterone"])	
			xPlayer.removeInventoryItem("testosterone", 1)	
		end
	end)
end

if Config.Framework == "qbcore" then
	QBCore.Functions.CreateUseableItem("protein", function(source, item)
		local playersource = source
		local xPlayer = QBCore.Functions.GetPlayer(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["protein"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].protein = supplementimereformatedcalculate
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "protein")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtookprotein"])
			xPlayer.Functions.RemoveItem("protein", 1)	
		end
	end)

	QBCore.Functions.CreateUseableItem("creatine", function(source, item)
		local playersource = source
		local xPlayer = QBCore.Functions.GetPlayer(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["creatine"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].creatine = supplementimereformatedcalculate	
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "creatine")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtookcreatine"])	
			xPlayer.Functions.RemoveItem("creatine", 1)	
		end
	end)

	QBCore.Functions.CreateUseableItem("preworkout", function(source, item)
		local playersource = source
		local xPlayer = QBCore.Functions.GetPlayer(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["preworkout"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].preworkout = supplementimereformatedcalculate	
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "preworkout")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtookpreworkout"])	
			xPlayer.Functions.RemoveItem("preworkout", 1)	
		end
	end)

	QBCore.Functions.CreateUseableItem("testosterone", function(source, item)
		local playersource = source
		local xPlayer = QBCore.Functions.GetPlayer(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["testosterone"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].testosterone = supplementimereformatedcalculate	
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "testosterone")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtooktestosterone"])	
			xPlayer.Functions.RemoveItem("testosterone", 1)
		end
	end)
end

if Config.Framework == "standalone" then
	--[[ 

	-- you need edit this usable for your framework (this is example from esx) (You can create ticket on our discord and we can help you with that)	
	ESX.RegisterUsableItem("protein", function(source)
		local playersource = source
		local xPlayer = ESX.GetPlayerFromId(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["protein"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].protein = supplementimereformatedcalculate
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "protein")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtookprotein"])
			xPlayer.removeInventoryItem("protein", 1)	
		end
	end)

	ESX.RegisterUsableItem("creatine", function(source)
		local playersource = source
		local xPlayer = ESX.GetPlayerFromId(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["creatine"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].creatine = supplementimereformatedcalculate	
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "creatine")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtookcreatine"])	
			xPlayer.removeInventoryItem("creatine", 1)	
		end
	end)

	ESX.RegisterUsableItem("preworkout", function(source)
		local playersource = source
		local xPlayer = ESX.GetPlayerFromId(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["preworkout"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].preworkout = supplementimereformatedcalculate	
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "preworkout")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtookpreworkout"])	
			xPlayer.removeInventoryItem("preworkout", 1)	
		end
	end)

	ESX.RegisterUsableItem("testosterone", function(source)
		local playersource = source
		local xPlayer = ESX.GetPlayerFromId(playersource)
		if xPlayer then		
			local supplementtimereformated = 60 * Config.Supplements["testosterone"].duration
			local supplementimereformatedcalculate = os.time() + supplementtimereformated
			playersupplements[playersource].testosterone = supplementimereformatedcalculate	
			TriggerClientEvent("rtx_gym:SupplementAnim", playersource, "testosterone")
			TriggerClientEvent("rtx_gym:Notify", playersource, Language[Config.Language]["youtooktestosterone"])	
			xPlayer.removeInventoryItem("testosterone", 1)	
		end
	end)
	]]--
	function GetPlayerIdentifierRTX(playersource)
		local identifierdata = GetPlayerIdentifiers(playersource)[2]
		return identifierdata
	end	
	
	function AddMoneyRTX(playersource, moneydata)
		-- add here money add funciton
	end	

	function RemoveMoneyRTX(playersource, moneydata)
		-- add here money remove funciton
	end	

	function GetMoneyRTX(playersource)
		-- add here money get funciton
		return 99999999999
	end		
end