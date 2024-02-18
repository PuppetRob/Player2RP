local QBCore = exports[Config.Core]:GetCoreObject()

AddEventHandler('onResourceStart', function(resource) if GetCurrentResourceName() ~= resource then return end
	for k, v in pairs(Pearls)
		do for i = 1, #v do
			for l, b in pairs(v[i]) do
				if not QBCore.Shared.Items[l] and l ~= "amount"
					then print("^5Debug^7: ^6Crafting^7: ^2Missing Item from ^4QBCore^7.^4Shared^7.^4Items^7: '^6"..l.."^7'") end
					if type(b) == "table" then
				for j in pairs(b) do if not QBCore.Shared.Items[j]
					then print("^5Debug^7: ^6Crafting^7: ^2Missing Item from ^4QBCore^7.^4Shared^7.^4Items^7: '^6"..j.."^7'")
					end end end end end end
				for k, v in pairs(Koi) do for i = 1, #v do
					for l, b in pairs(v[i]) do if not QBCore.Shared.Items[l] and l ~= "amount" then
						print("^5Debug^7: ^6Crafting^7: ^2Missing Item from ^4QBCore^7.^4Shared^7.^4Items^7: '^6"..l.."^7'") end
						if type(b) == "table" then
						for j in pairs(b) do if not QBCore.Shared.Items[j] then
							print("^5Debug^7: ^6Crafting^7: ^2Missing Item from ^4QBCore^7.^4Shared^7.^4Items^7: '^6"..j.."^7'")
						end end end end end end
	for i = 1, #Ingredients.BarItems.items do
		if not QBCore.Shared.Items[Ingredients.BarItems.items[i].name] then print("^5Debug^7: ^6Store^7: ^2Missing Item from ^4QBCore^7.^4Shared^7.^4Items^7: '^6"..Ingredients.BarItems.items[i].name.."^7'") end
	end
	for i = 1, #Ingredients.FoodItemsPearls.items do
		if not QBCore.Shared.Items[Ingredients.FoodItemsPearls.items[i].name] then print("^5Debug^7: ^6Store^7: ^2Missing Item from ^4QBCore^7.^4Shared^7.^4Items^7: '^6"..Ingredients.FoodItemsPearls.items[i].name.."^7'") end
	end
	for i = 1, #Ingredients.FoodItemsKoi.items do
		if not QBCore.Shared.Items[Ingredients.FoodItemsKoi.items[i].name] then print("^5Debug^7: ^6Store^7: ^2Missing Item from ^4QBCore^7.^4Shared^7.^4Items^7: '^6"..Ingredients.FoodItemsKoi.items[i].name.."^7'") end
	end
	for _, location in pairs(Config.Locations) do if location.job then if not QBCore.Shared.Jobs[location.job] then
                print("^5Debug^7: ^1Error^7: ^2Job role not found ^7- '^6"..location.job.."^7'")
            end
        end
		if location.garage then
			TriggerEvent("jim-jobgarage:server:syncAddLocations", { job = location.job, garage = location.garage }) -- Job Garage creation
		end
		TriggerEvent("jim-jobgarage:server:syncAddLocations", { job = location.job, garage = location.garage }) -- Job Garage creation
			TriggerEvent("jim-djbooth:server:AddLocation", { -- DJ Booth Creation
				job = location.job,
				enableBooth = location.Booth.enableBooth,
				DefaultVolume = location.Booth.DefaultVolume,
				radius = location.Booth.radius,
				coords = location.coords,
				soundLoc = location.soundLoc or nil
			})
		end
end)


--Consumables
if not Config.JimConsumables then
	CreateThread(function()
		local cocktails = { "tillie", "b52", "brussian", "bkamikaze", "cappucc", "ccookie", "iflag", "kamikaze", "sbullet", "voodoo", "woowoo", "schnapps", "gin", "scotch", "rum", "icream", "amaretto", "curaco", "beerglass" }
		for _, v in pairs(cocktails) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('jixel-pearls:client:Consume', source, item.name, "alcohol") end) end

		local beers = { "ambeer", "dusche", "logger", "pisswasser", "pisswasser2", "pisswasser3" }
		for _, v in pairs(beers) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('jixel-pearls:client:Consume', source, item.name, "alcohol") end) end

		local drinks = { "sprunk", "sprunklight", "ecola", "ecolalight", "cranberry" }
		for _, v in pairs(drinks) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('jixel-pearls:client:Consume', source, item.name, "drink") end) end

		local food = { "chocolate", "fishnchips", "tunapog", "steriyaki", "fdicks", "splate", "rplate", "nplate", "wings", "sushi", "ramen", "mplate", "lobstertail", "filetmignon", "smokedsalmon", "fruitgazpacho", "mackrel", "frenchfries" }
		for _, v in pairs(food) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('jixel-pearls:client:Consume', source, item.name, "food") end) end
	end)
end

---Crafting
RegisterServerEvent('jixel-pearls:Crafting:GetItem', function(ItemMake, craftable)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local amount = 1
	if craftable then
		if craftable["amount"] then amount = craftable["amount"] end
		for k, v in pairs(craftable[ItemMake]) do TriggerEvent("jixel-pearls:server:toggleItem", false, tostring(k), v, src) end
	end
	TriggerEvent("jixel-pearls:server:toggleItem", true, ItemMake, amount, src)
end)


RegisterNetEvent('jixel-pearls:server:toggleItem', function(give, item, amount, newsrc)
	local src = newsrc or source
	local amount = amount or 1
	local remamount = amount
	if not give then
		if HasItem(src, item, amount) then -- check if you still have the item
			if QBCore.Functions.GetPlayer(src).Functions.GetItemByName(item).unique then -- If unique item, keep removing until gone
				while remamount > 0 do
					QBCore.Functions.GetPlayer(src).Functions.RemoveItem(item, 1)
					remamount -= 1
				end
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "remove", amount) -- Show removal item box when all are removed
				return
			end
			if QBCore.Functions.GetPlayer(src).Functions.RemoveItem(item, amount) then
				if Config.Debug then print("^5Debug^7: ^1Removing ^2from Player^7(^2"..src.."^7) '^6"..QBCore.Shared.Items[item].label.."^7(^2x^6"..(amount or "1").."^7)'") end
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "remove", amount)
			end
		else TriggerEvent("jixel-pearls:server:DupeWarn", item, src) end -- if not boot the player
	elseif give then
		if QBCore.Functions.GetPlayer(src).Functions.AddItem(item, amount) then
			if Config.Debug then print("^5Debug^7: ^4Giving ^2Player^7(^2"..src.."^7) '^6"..QBCore.Shared.Items[item].label.."^7(^2x^6"..(amount or "1").."^7)'") end
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add", amount)
		end
	end
end)

RegisterNetEvent("jixel-pearls:server:DupeWarn", function(item, newsrc)
	local src = newsrc or source
	local P = QBCore.Functions.GetPlayer(src)
	print("^5DupeWarn: ^1"..P.PlayerData.charinfo.firstname.." "..P.PlayerData.charinfo.lastname.."^7(^1"..tostring(src).."^7) ^2Tried to remove item ^7('^3"..item.."^7')^2 but it wasn't there^7")
	if not Config.Debug then DropPlayer(src, "Kicked for attempting to duplicate items") end
	print("^5DupeWarn: ^1"..P.PlayerData.charinfo.firstname.." "..P.PlayerData.charinfo.lastname.."^7(^1"..tostring(src).."^7) ^2Dropped from server for item duplicating^7")
end)

if Config.Inv == "ox" then
	RegisterNetEvent("jixel-pearls:makeOXShop", function(id, label, items, loc)
        exports.ox_inventory:RegisterShop(id, { name = label, inventory = items})
        --print("^5Debug^7 Registering Shop:" , id, label)
    end)
    RegisterNetEvent("jixel-pearls:makeOXStash", function(id, label)
        exports.ox_inventory:RegisterStash(id, label, 20, 400000, nil)
        --print("^5Debug^7:" , id, label)
    end)
	function HasItem(src, items, amount)
		local count = exports.ox_inventory:Search(src, 'count', items)
		if count >= amount then if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^5FOUND^7 x^3"..count.."^7 ^3"..tostring(items)) end return true
        else if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^2Items ^1NOT FOUND^7") end return false end
	end
else
	function HasItem(source, items, amount)
		local amount = amount or 1
		local Player = QBCore.Functions.GetPlayer(source)
		if not Player then return false end
		local count = 0

		if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^2Checking if player has required item^7 '^3"..tostring(items).."^7'") end

		for _, itemData in pairs(Player.PlayerData.items) do
			if itemData and (itemData.name == items) then
				if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^2Item^7: '^3"..tostring(items).."^7' ^2Slot^7: ^3"..itemData.slot.." ^7x(^3"..tostring(itemData.amount).."^7)") end
				count += itemData.amount
			end
		end
		if count >= amount then
			if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^2Items ^5FOUND^7 x^3"..count.."^7") end
			return true
		end
		if Config.Debug then print("^5Debug^7: ^3HasItem^7: ^2Items ^1NOT FOUND^7") end
		return false
	end
end
