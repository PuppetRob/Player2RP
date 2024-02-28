QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem(Config.SharkRepelentItemName, function(source, item)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)			
		TriggerClientEvent('jake:client:sharkDoRepelent', src, item.name, item.slot)
end)



RegisterServerEvent('jake:server:takeSharkRepelent')
AddEventHandler('jake:server:takeSharkRepelent', function(name, slot)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)	
	
	if Player.Functions.RemoveItem(name, 1, slot) then
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[name], "use")	
	end
end)