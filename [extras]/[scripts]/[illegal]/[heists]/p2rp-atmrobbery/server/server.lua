local QBCore = exports['qb-core']:GetCoreObject()

-- Callback to get hacker device count:
QBCore.Functions.CreateCallback("p2rp-atmrobbery:getHackerDevice",function(source,cb)
	local xPlayer = QBCore.Functions.GetPlayer(source)
	if xPlayer.Functions.GetItemByName("atmkit") and xPlayer.Functions.GetItemByName("drill") then
		cb(true)
	else
		cb(false)
		TriggerClientEvent('QBCore:Notify', source, "You need an Electronic Kit and a Drill to proceed.")
	end
end)

RegisterServerEvent('p2rp-atmrobbery:server:callCops')
AddEventHandler('p2rp-atmrobbery:server:callCops', function(type, safe, streetLabel, coords)
    local data = {displayCode = '10-68', description = 'ATM Robbery', isImportant = 0, recipientList = {'police'}, length = '20000', infoM = 'fa-info-circle', info = 'ATM Robbery In Progress'}
    local dispatchData = {dispatchData = data, caller = 'Alarm', coords = vector3(coords.x, coords.y, coords.z)} 
    TriggerEvent('wf-alerts:svNotify', dispatchData) 
end)

RegisterServerEvent('itemsil')
AddEventHandler('itemsil', function()
local xPlayer = QBCore.Functions.GetPlayer(source)
	xPlayer.Functions.RemoveItem('drill', 1)
end)

QBCore.Functions.CreateUseableItem('atmkit', function(source)
	TriggerClientEvent('atm:item', source)
end)


-- Event to reward after successfull robbery

RegisterServerEvent("p2rp-atmrobbery:success")
AddEventHandler("p2rp-atmrobbery:success",function()
	local xPlayer = QBCore.Functions.GetPlayer(source)
    local reward = math.random(Config.MinReward,Config.MaxReward)
		xPlayer.Functions.AddMoney(Config.RewardAccount, tonumber(reward))

		TriggerClientEvent("QBCore:Notify",source,"Succesful Robbery | You earn't $"..reward.. " !")
end)

---

cooldowntime = Config.Cooldown 

undercd = false

RegisterServerEvent('p2rp-atmrobbery:CooldownServer')
AddEventHandler('p2rp-atmrobbery:CooldownServer', function(bool)
    undercd = bool
	if bool then 
		cooldown()
	end	 
end)

RegisterServerEvent('p2rp-atmrobbery:CooldownNotify')
AddEventHandler('p2rp-atmrobbery:CooldownNotify', function()
	TriggerClientEvent("QBCore:Notify",source,"An ATM Robbery has happened Recently. Please Wait "..cooldowntime.." Minutes!")
end)

function cooldown()

	while true do 
	Citizen.Wait(60000)

	cooldowntime = cooldowntime - 1 

	if cooldowntime <= 0 then
		undercd = false
		break
	end

end
end

QBCore.Functions.CreateCallback("p2rp-atmrobbery:GetCooldown",function(source,cb)
	cb(undercd)
end)
