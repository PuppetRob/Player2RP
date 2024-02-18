local QBCore = exports['qb-core']:GetCoreObject()

local keys = {
	[1] = {label = "Red Decryption Key", itemName = "redchip", colorId = 1},
	[2] = {label = "Green Decryption Key", itemName = "greenchip", colorId = 6},
	[3] = {label = "Blue Decryption Key", itemName = "bluechip", colorId = 2},
}

local activeKeys = {}
local keysUsed = 0
local delayKeyChange = false
local weaponDropped = false

local heistId = 0

local dropItems = {
	{itemName = "weapon_microsmg", label = "Micro SMG", chance = 8},
	{itemName = "weapon_smg", label = "SMG", chance = 8},
	{itemName = "weapon_smg_mk2", label = "SMG Mk II", chance = 8},
	{itemName = "weapon_combatpdw", label = "Combat PDW", chance = 8},
	{itemName = "weapon_minismg", label = "Mini SMG", chance = 8},
	{itemName = "weapon_pistol_mk2", label = "Pistol Mk II", chance = 15},
	{itemName = "weapon_combatpistol", label = "Combat Pistol", chance = 15},
	{itemName = "weapon_appistol", label = "AP Pistol", chance = 15},
	{itemName = "weapon_snspistol_mk2", label = "SNS Pistol Mk II", chance = 15},
	{itemName = "burnerphone", label = "Burner Phone", chance = 15},
	{itemName = "weapon_bullpupshotgun", label = "Bullpup Shotgun", chance = 8},
	{itemName = "weapon_musket", label = "Musket", chance = 8},
	{itemName = "building4key", label = "Building 4 Key", chance = 15},

	{itemName = "blueprint_weapon_appistol", label = "Blueprint", chance = 2},
	{itemName = "blueprint_weapon_machinepistol", label = "Blueprint", chance = 2},
	{itemName = "blueprint_weapon_mac10", label = "Blueprint", chance = 2},
	{itemName = "blueprint_weapon_remington", label = "Blueprint", chance = 2},
	{itemName = "blueprint_smg-receiver", label = "Blueprint", chance = 1},
	{itemName = "blueprint_shotgun-receiver", label = "Blueprint", chance = 2},
	{itemName = "blueprint_pistol-receiver", label = "Blueprint", chance = 2},
	{itemName = "blueprint_thermitecharge", label = "Blueprint", chance = 1},

}

local totalChances = 0
local pickupLocations = 415

local activeDrops = {}
local dropIds = 0

Citizen.CreateThread(function()
	for i = 1, #dropItems do
		totalChances = totalChances + dropItems[i].chance
	end
end)

RegisterServerEvent('p2rp-guns:wonHacking')
AddEventHandler('p2rp-guns:wonHacking', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local chipSlot = Player.Functions.GetItemByName('electronickit')
	local firstcolor = keys[activeKeys[1]].colorId
	local secondcolor = keys[activeKeys[2]].colorId
	local thirdcolor = keys[activeKeys[3]].colorId
	if Player then
		if chipSlot.amount > 0 then
			delayKeyChange = true
			
			if firstcolor == 6 then
				TriggerClientEvent('chatMessage', source, "FIRST", "report",  keys[activeKeys[1]].label)
			elseif firstcolor == 2 then
				TriggerClientEvent('chatMessage', source,"FIRST", "normal", keys[activeKeys[1]].label)
			elseif firstcolor == 1 then
				TriggerClientEvent('chatMessage', source, "FIRST", "error", keys[activeKeys[1]].label)
			end

			if secondcolor == 6 then
				TriggerClientEvent('chatMessage', source, "SECOND", "report",  keys[activeKeys[2]].label)
			elseif secondcolor == 2 then
				TriggerClientEvent('chatMessage', source,"SECOND", "normal", keys[activeKeys[2]].label)
			elseif secondcolor == 1 then
				TriggerClientEvent('chatMessage', source, "SECOND", "error", keys[activeKeys[2]].label)
			end

			if thirdcolor == 6 then
				TriggerClientEvent('chatMessage', source, "THIRD", "report",  keys[activeKeys[3]].label)
			elseif thirdcolor == 2 then
				TriggerClientEvent('chatMessage', source,"THIRD", "normal", keys[activeKeys[3]].label)
			elseif thirdcolor == 1 then
				TriggerClientEvent('chatMessage', source, "THIRD", "error", keys[activeKeys[3]].label)
			end
		end
	end
end)


 
RegisterServerEvent('p2rp-guns:server:useDecryptionKey')
AddEventHandler('p2rp-guns:server:useDecryptionKey', function(item)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	

	if Player then
		local keySlot = Player.Functions.GetItemByName(item)

		if keySlot.amount > 0 then
			Player.Functions.RemoveItem(item, 1)
			delayKeyChange = true
			if keys[activeKeys[keysUsed + 1]].itemName == item then
				keysUsed = keysUsed + 1
				if keysUsed == 3 then
					TriggerClientEvent('p2rp-guns:hackingMinigame', src)
				else
					TriggerClientEvent('QBCore:Notify', src, "Correct key!")
				end
			else
				TriggerClientEvent('QBCore:Notify', src, "Wrong key!", "error")
			end
		end
	end
end)

RegisterServerEvent('p2rp-guns:createHeistLoop')
AddEventHandler('p2rp-guns:createHeistLoop', function()
	heistId = heistId + 1

	local thisId = heistId

	Citizen.CreateThread(function()
		keysUsed = 0
		weaponDropped = false

		local key1 = math.random(3)
		local key2
		local key3

		while not key2 or not key3 do
			local possibleKey = math.random(3)

			if not key2 and possibleKey ~= key1 then
				key2 = possibleKey
			end

			if possibleKey ~= key1 and possibleKey ~= key2 then
				key3 = possibleKey
			end

			Citizen.Wait(0)
		end

		activeKeys = {key1, key2, key3}
	end)

	Citizen.Wait(300000)

	if heistId == thisId then
		if delayKeyChange then
			Citizen.Wait(300000)
			delayKeyChange = false
		end

		if heistId == thisId then
			TriggerEvent('p2rp-guns:createHeistLoop')
		end
	end
end)

RegisterServerEvent('p2rp-guns:obtainDrops')
AddEventHandler('p2rp-guns:obtainDrops', function()
	TriggerClientEvent('p2rp-guns:obtainDrops', source, activeDrops)
end)


RegisterServerEvent('checkDrill')

AddEventHandler('checkDrill', function(dropId) 
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local drill = Player.Functions.GetItemByName('drill')
	if drill ~= nil and drill.amount > 0 then
		TriggerClientEvent('do', src, dropId)
	else
		TriggerClientEvent('QBCore:Notify', src, 'you have no drill!', 'error')
	end
end)

RegisterServerEvent('p2rp-guns:pickUpDrop')
AddEventHandler('p2rp-guns:pickUpDrop', function(dropId)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local drillSlot = Player.Functions.GetItemByName('drill')

	if activeDrops[dropId] then
		

		if Player then
			if drillSlot ~= nil and drillSlot.amount >= 1 then
				Player.Functions.RemoveItem('drill', 1)
				local dropData = activeDrops[dropId]

				activeDrops[dropId] = nil

				Player.Functions.AddItem(dropData.itemName, 1)

				TriggerClientEvent('QBCore:Notify', src, "Picked up " .. dropData.label)
				TriggerClientEvent('clearTasks', src)

				TriggerClientEvent('p2rp-guns:manipulateDrop', -1, dropId)
			else
				TriggerClientEvent("QBCore:Notify", src, "You need to have a drill on you...", "error")
			end
		end
	end
end)

RegisterServerEvent('p2rp-guns:hackingCompleted')
AddEventHandler('p2rp-guns:hackingCompleted', function()
	local src = source

	if not weaponDropped then
		weaponDropped = true

		local itemLottery = math.random(totalChances)
		local loopedThrough = 0
		local item

		for i = 1, #dropItems do
			loopedThrough = loopedThrough + dropItems[i].chance

			if itemLottery <= loopedThrough then
				item = dropItems[i]

				break
			end
		end

		if item then
			dropIds = dropIds + 1
			activeDrops[dropIds] = {pickupLocation = math.random(pickupLocations), itemName = item.itemName, label = item.label}

			TriggerClientEvent('p2rp-guns:manipulateDrop', -1, dropIds, activeDrops[dropIds])
			TriggerClientEvent('p2rp-guns:createBlipOnDrop', src, dropIds, item.label)
			TriggerEvent('p2rp-guns:createHeistLoop')
		end
	end
end)

TriggerEvent('p2rp-guns:createHeistLoop')


QBCore.Functions.CreateUseableItem('electronickit', function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
		TriggerClientEvent('p2rp-guns:useChip', source)
	end
end)

QBCore.Functions.CreateUseableItem("greenchip", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
		local itemName = item.name
		TriggerClientEvent('p2rp-guns:useDecryptionKey', source,  'greenchip')
    end
end)

QBCore.Functions.CreateUseableItem("redchip", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
		local itemName = item.name
		TriggerClientEvent('p2rp-guns:useDecryptionKey', source,  'redchip')
    end
end)

QBCore.Functions.CreateUseableItem("bluechip", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
		local itemName = item.name
		TriggerClientEvent('p2rp-guns:useDecryptionKey', source, 'bluechip')
    end
end)
