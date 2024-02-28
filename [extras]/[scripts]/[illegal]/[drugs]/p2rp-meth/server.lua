local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('p2rp-meth:start')
AddEventHandler('p2rp-meth:start', function()
	local _source = source
	local Player = QBCore.Functions.GetPlayer(source)
	local ItemAcetone = Player.Functions.GetItemByName("acetone")
    local ItemLithium = Player.Functions.GetItemByName("lithium")
	local ItemMethlab = Player.Functions.GetItemByName("methlab")
	if ItemAcetone ~= nil and ItemLithium ~= nil and ItemMethlab ~= nil then
		if ItemAcetone.amount >= 5 and ItemLithium.amount >= 2 and ItemMethlab.amount >= 1 then	
			TriggerClientEvent("p2rp-meth:startprod", _source)
			Player.Functions.RemoveItem("acetone", 5, false)
			Player.Functions.RemoveItem("lithium", 2, false)
		else
		TriggerClientEvent('QBCore:Notify', source, "U don't have enough ingredients to cook!", 'error')
		end	
	else
	TriggerClientEvent('QBCore:Notify', source, "You're missing essential ingredients!", 'error')
	end	
end)

RegisterServerEvent('p2rp-meth:stopf')
AddEventHandler('p2rp-meth:stopf', function(id)
local _source = source
	local xPlayers = QBCore.Functions.GetPlayers()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
	for i=1, #xPlayers, 1 do
		TriggerClientEvent('p2rp-meth:stopfreeze', xPlayers[i], id)
	end	
end)

RegisterServerEvent('p2rp-meth:make')
AddEventHandler('p2rp-meth:make', function(posx,posy,posz)
	local _source = source
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
	if xPlayer.Functions.GetItemByName('methlab') ~= nil then
		if xPlayer.Functions.GetItemByName('methlab').amount >= 1 then	
			local xPlayers = QBCore.Functions.GetPlayers()
			for i=1, #xPlayers, 1 do
				TriggerClientEvent('p2rp-meth:smoke',xPlayers[i],posx,posy,posz, 'a') 
			end		
		else
			TriggerClientEvent('p2rp-meth:stop', _source)
		end
	else
	TriggerClientEvent('QBCore:Notify', source, "You're missing a lab!", 'error')
	end	
end)

RegisterServerEvent('p2rp-meth:finish')
AddEventHandler('p2rp-meth:finish', function(qualtiy)
	local _source = source
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
	local rnd = math.random(-5, 5)
	xPlayer.Functions.AddItem('meth', math.floor(qualtiy / 2) + rnd)	
end)

RegisterServerEvent('p2rp-meth:blow')
AddEventHandler('p2rp-meth:blow', function(posx, posy, posz)
	local _source = source
	local xPlayers = QBCore.Functions.GetPlayers()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
	for i=1, #xPlayers, 1 do
		TriggerClientEvent('p2rp-meth:blowup', xPlayers[i],posx, posy, posz)
	end
	xPlayer.Functions.RemoveItem('methlab', 1)
end)

