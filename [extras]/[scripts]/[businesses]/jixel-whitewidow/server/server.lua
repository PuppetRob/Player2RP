local QBCore = exports[Config.Core]:GetCoreObject()

AddEventHandler('onResourceStart', function(r) if GetCurrentResourceName() ~= r then return end
	for i = 1, #Config.Locations do
		if Config.Locations[i].zoneEnable then
			TriggerEvent("jim-jobgarage:server:syncAddLocations", { job = Config.Locations[i].job, garage = Config.Locations[i].garage }) -- Job Garage creation
		end
	end
	for k, v in pairs(Crafting) do for i = 1, #v do
			for l, b in pairs(v[i]) do if not QBCore.Shared.Items[l] then print("^5Debug^7: ^6Crafting^7: ^2Missing Item from ^4QBCore^7.^4Shared^7.^4Items^7: '^6"..l.."^7'") end
				for j, c in pairs(b) do if not QBCore.Shared.Items[j] then print("^5Debug^7: ^6Crafting^7: ^2Missing Item from ^4QBCore^7.^4Shared^7.^4Items^7: '^6"..j.."^7'") end end end end end
	for i = 1, #Config.Items.items do
		if not QBCore.Shared.Items[Config.Items.items[i].name] then print("^5Debug^7: ^6Store^7: ^2Missing Item from ^4QBCore^7.^4Shared^7.^4Items^7: '^6"..Config.Items.items[i].name.."^7'") end
	end
	for _, v in pairs(Config.Locations) do
		if v.zoneEanble and not QBCore.Shared.Jobs[v.job] then print("Error: Job role not found - '"..v.job.."' for location: "..v.label) end
	end
end)

RegisterServerEvent('jixel-whitewidow:Crafting:GetItem', function(ItemMake, craftable)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	--This grabs the table from client and removes the item requirements
	local amount = 1
	if craftable then
		if craftable["amount"] then amount = craftable["amount"] end
		for k, v in pairs(craftable[ItemMake]) do TriggerEvent("jixel-whitewidow:server:toggleItem", false, tostring(k), v, src) end
	end
	--This should give the item, while the rest removes the requirements
	TriggerEvent("jixel-whitewidow:server:toggleItem", true, ItemMake, amount, src)
end)

local function dupeWarn(src, item)
	local P = QBCore.Functions.GetPlayer(src)
	print("^5DupeWarn: ^1"..P.PlayerData.charinfo.firstname.." "..P.PlayerData.charinfo.lastname.."^7(^1"..tostring(src).."^7) ^2Tried to remove item ^7('^3"..item.."^7')^2 but it wasn't there^7")
	if not Config.Debug then DropPlayer(src, "^1Kicked for attempting to duplicate items") end
	print("^5DupeWarn: ^1"..P.PlayerData.charinfo.firstname.." "..P.PlayerData.charinfo.lastname.."^7(^1"..tostring(src).."^7) ^2Dropped from server for item duplicating^7")
end

RegisterNetEvent('jixel-whitewidow:server:toggleItem', function(give, item, amount, newsrc)
	local src = newsrc or source
	local Player = QBCore.Functions.GetPlayer(src)
	local remamount = (amount or 1)
	if give == 0 or give == false then
		if HasItem(src, item, amount or 1) then -- check if you still have the item
			while remamount > 0 do if Player.Functions.RemoveItem(item, 1) then end remamount -= 1 end
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "remove", amount or 1)
			if Config.Debug then print("^5Debug^7: ^1Removing ^2from Player^7(^2"..src.."^7) '^6"..QBCore.Shared.Items[item].label.."^7(^2x^6"..(amount or "1").."^7)'") end
		else dupeWarn(src, item) end -- if not boot the player
	else
		if Player.Functions.AddItem(item, amount or 1) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add", amount or 1)
			if Config.Debug then print("^5Debug^7: ^4Giving ^2Player^7(^2"..src.."^7) '^6"..QBCore.Shared.Items[item].label.."^7(^2x^6"..(amount or "1").."^7)'") end
		end
	end
end)

if Config.Inv == "ox" then
	--Create ox_inv based shop using qb-core versions in config.lua

	for k, v in pairs(Config.Locations) do
		if v.zoneEnable then exports.ox_inventory:RegisterShop(v.job.."ingredients", { name = Config.Items.label, inventory = Config.Items.items} )	end
	end
	for i = 1, 8 do exports.ox_inventory:RegisterStash("WWTable_"..i, "Whitewidow Table"..i, 20, 400000) end
	for i = 1, 8 do exports.ox_inventory:RegisterStash("WWTray_"..i, "Whitewidow Tray"..i, 20, 400000) end
	for i = 1, 3 do exports.ox_inventory:RegisterStash("WWShelf_"..i, "Whitewidow Shelf"..i, 20, 400000) end

	for i = 1, 8 do exports.ox_inventory:RegisterStash("BBTable_"..i, "BestBuds Table"..i, 20, 400000) end
	for i = 1, 8 do exports.ox_inventory:RegisterStash("BBTray_"..i, "BestBuds Tray"..i, 20, 400000) end
	for i = 1, 3 do exports.ox_inventory:RegisterStash("BBShelf_"..i, "BestBuds Shelf"..i, 20, 400000) end

	for i = 1, 8 do exports.ox_inventory:RegisterStash("WCTable_"..i, "Weed Clinic Table"..i, 20, 400000) end
	for i = 1, 8 do exports.ox_inventory:RegisterStash("WCTray_"..i, "Weed Clinic Tray"..i, 20, 400000) end
	for i = 1, 3 do exports.ox_inventory:RegisterStash("WCShelf_"..i, "Weed Clinic Shelf"..i, 20, 400000) end
	function HasItem(src, items, amount)
		local count = exports.ox_inventory:Search(src, 'count', items)
		if count >= (amount or 1) then if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^5FOUND^7 x^3"..count.."^7 ^3"..tostring(items)) end return true
        else if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^2Items ^1NOT FOUND^7") end return false end
	end
else
	function HasItem(source, items, amount)
		local amount, count = amount or 1, 0
		local Player = QBCore.Functions.GetPlayer(source)
		if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^2Checking if player has required item^7 '^3"..tostring(items).."^7'") end
		for _, itemData in pairs(Player.PlayerData.items) do
			if itemData and (itemData.name == items) then
				if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^2Item^7: '^3"..tostring(items).."^7' ^2Slot^7: ^3"..itemData.slot.." ^7x(^3"..tostring(itemData.amount).."^7)") end
				count += itemData.amount
			end
		end
		if count >= amount then if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^2Items ^5FOUND^7 x^3"..count.."^7") end return true end
		if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^2Items ^1NOT FOUND^7") end	return false
	end
end

-- EATY/SMOKEYSMOKEY FUNCTION WOOO -- make sure to put support for Jim Consumables
if not Config.JimConsumables then
	for _, v in pairs(Joints) do QBCore.Functions.CreateUseableItem(v.Name, function(source, item) TriggerClientEvent('jixel-whitewidow:client:UseDroog', source, item.name) end) end
	for _, v in pairs(Edibles) do QBCore.Functions.CreateUseableItem(v.Name, function(source, item) TriggerClientEvent('jixel-whitewidow:client:UseDroog', source, item.name) end) end
else
	local foodTable = {
		["afghankush_joint"] = {	emote = "joint",	time = 7500, stress = math.random(1, 24), heal = 20, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["bluedream_joint"] = { 	emote = "joint",	time = 7500, stress = math.random(1, 10), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["granddaddypurple_joint"] = { emote = "joint",	time = 7500, stress = math.random(1, 10), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["greencrack_joint"] = { 	emote = "joint",	time = 7500, stress = math.random(1, 10), heal = math.random(1, 10), armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["jackherrer_joint"] = { 	emote = "joint",	time = 7500, stress = math.random(1, 10), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["sourdiesel_joint"] = { 	emote = "joint",	time = 7500, stress = math.random(1, 10), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["weddingcake_joint"] = { 	emote = "joint",	time = 7500, stress = math.random(1, 10), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["whitewidow_joint"] = { 	emote = "joint",	time = 7500, stress = math.random(1, 10), stamina = 10, heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },

		["gummy_rasberry"] = {		emote = "oxy",	time = 2000, stress = math.random(1, 24), heal = 20, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["gummy_blueberry"] = {		emote = "oxy",	time = 2000, stress = math.random(1, 10), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["gummy_grape"] = {			emote = "oxy",	time = 2000, stress = math.random(1, 10), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["gummy_applering"] = {		emote = "oxy",	time = 2000, stress = math.random(1, 10), heal = math.random(1, 10), armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["edible_ricecrispy"] = {	emote = "oxy",	time = 2000, stress = math.random(1, 10), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["gummy_belt"] = {			emote = "oxy",	time = 2000, stress = math.random(1, 10), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["edible_snickerdoodle"] = {	emote = "oxy",	time = 2000, stress = math.random(1, 10), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["edible_peanutcookie"] = {	emote = "oxy",	time = 2000, stress = math.random(1, 10), stamina = 10, heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["edible_cchip"] = {	emote = "oxy",	time = 2000, stress = math.random(1, 10), stamina = 10, heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
	}
	local emoteTable = {
		["joint"] = {"timetable@gardener@smoking_joint", "smoke_idle", "Drug", AnimationOptions = { Prop = "prop_sh_joint_01", PropBone = 57005, PropPlacement = {0.12, 0.03, -0.05, 240.0, -60.0}, EmoteMoving = true, EmoteLoop = true, }},
	}
	for k, v in pairs(foodTable) do TriggerEvent("jim-consumables:server:syncAddItem", k, v) end
	for k, v in pairs(emoteTable) do TriggerEvent("jim-consumables:server:syncAddEmote", k, v) end
end
if Config.CustomBong then
    local bongs = { "bong", "bong2", "bong3", "bong4", "bong5", "bong6", "bong7", "bong8", "bong9", "bong10" }
    for _, itemName in pairs(bongs) do
        QBCore.Functions.CreateUseableItem(itemName, function(source, item)
            TriggerClientEvent("jixel-whitewidow:Crafting:TableBong", source, {
                itemName = itemName,
                label = Loc[Config.Lan].target["bong"],
                craftable = Crafting.TableBong,
                header = Loc[Config.Lan].menu["header_bong"]
            })
        end)
    end
else
    QBCore.Functions.CreateUseableItem("bong", function(source, item)
        TriggerClientEvent("jixel-whitewidow:Crafting:TableBong", source, {
            itemName = "bong",
            label = Loc[Config.Lan].target["bong"],
            craftable = Crafting.TableBong,
            header = Loc[Config.Lan].menu["header_bong"]
        })
    end)
end

