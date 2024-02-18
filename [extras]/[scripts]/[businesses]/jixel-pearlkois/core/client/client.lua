local QBCore = exports[Config.Core]:GetCoreObject()
PlayerJob = {}
local Targets, Props, Blips, CraftLock, alcoholCount = {}, {}, {},  false, 0

local function jobCheck()
	canDo = true
	if not onDuty then triggerNotify(nil, Loc[Config.Lan].error["not_clockin"], 'error') canDo = false end
	return canDo
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job if PlayerJob.onduty then for k, v in pairs(Config.Locations) do if PlayerData.job.name == v.job then TriggerServerEvent("QBCore:ToggleDuty") end end end end)
end)
RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo) PlayerJob = JobInfo onDuty = PlayerJob.onduty end)
RegisterNetEvent('QBCore:Client:SetDuty', function(duty) onDuty = duty end)
AddEventHandler('onResourceStart', function(r) if GetCurrentResourceName() ~= r then return end
	QBCore.Functions.GetPlayerData(function(PlayerData)	PlayerJob = PlayerData.job for k, v in pairs(Config.Locations) do if PlayerData.job.name == v.job then onDuty = PlayerJob.onduty end end end)
end)

CreateThread(function()
	for locationName, Location in pairs(Config.Locations) do
		if Location.zoneEnabled then
			local bossroles = {}
		for grade in pairs(QBCore.Shared.Jobs[Location.job].grades) do
			if QBCore.Shared.Jobs[Location.job].grades[grade].isboss == true then
				if bossroles[Location.job] then
					if bossroles[Location.job] > tonumber(grade) then bossroles[Location.job] = tonumber(grade) end
				else bossroles[Location.job] = tonumber(grade)	end
			end
		end
		if Location.zones then
			JobLocation = PolyZone:Create(Location.zones, { name = Location.label, debugPoly = Config.Debug })
			JobLocation:onPlayerInOut(function(isPointInside)
				if PlayerJob.name == Location.job then
					if Location.autoClock and Location.autoClock.enter then if isPointInside and not onDuty then TriggerServerEvent("QBCore:ToggleDuty") end end
					if Location.autoClock and Location.autoClock.exit then if not isPointInside and onDuty then TriggerServerEvent("QBCore:ToggleDuty") end end
				end
			end)
		end
		if Location.blip then Blips[#Blips+1] = makeBlip({coords = Location.blip, sprite = Location.blipsprite or 106, col = Location.blipcolor, scale = Location.blipscale, disp = Location.blipdisp, category = nil, name = Location.label}) end
		for i, chop in ipairs(Location.ChopBoard) do
					local targetName = locationName.."PKChop"..i
					Targets[targetName] =
						exports['qb-target']:AddBoxZone(targetName, chop.coords, chop.l, chop.w,
							{ name=targetName, heading = chop.heading, debugPoly=Config.Debug, minZ = chop.coords.z-0.5 , maxZ = chop.coords.z+1, },
							{ options = {
								{
									event = "jixel-pearls:Crafting",
									icon = "fas fa-hamburger",
									label = Loc[Config.Lan].target["chopboard"],
									header = Loc[Config.Lan].menu["header_chopboard"],
									craftable = chop.craftable,
									job = Location.job,
									coords = chop.coords,
								}
							}, distance = 2.0 })
				end
				for i, counter in ipairs(Location.CounterTarget) do
					local targetName = locationName.."PKCounter"..i
					if Config.Inv == "ox" then
						TriggerServerEvent("jixel-pearls:makeOXStash", targetName, "Counter")
					end
					Targets[targetName] =
						exports['qb-target']:AddBoxZone(targetName, counter.coords , counter.l, counter.w,
							{ name=targetName, heading = counter.heading, debugPoly=Config.Debug, minZ = counter.coords.z-0.5, maxZ = counter.coords.z+1, },
							{ options = {
								{
									event = "jixel-pearls:Stash",
									icon = "fas fa-hamburger",
									label = Loc[Config.Lan].target["counter"],
									stash = "Counter"..i,
									stashName = targetName,
									job = Location.job
								},
							}, distance = 2.0 })
				end
				for i, tray in ipairs(Location.TrayTargets) do
					local targetName = locationName.."PKTray"..i
					if Config.Inv == "ox" then
						TriggerServerEvent("jixel-pearls:makeOXStash", targetName, "Tray")
					end
					Targets[targetName] =
						exports['qb-target']:AddBoxZone(targetName, tray.coords, tray.l, tray.w,
							{ name=targetName, heading = tray.heading, debugPoly=Config.Debug, minZ = tray.coords.z-0.5, maxZ = tray.coords.z+1, },
							{ options = {
								{
									event = "jixel-pearls:Stash",
									icon = "fas fa-hamburger",
									label = Loc[Config.Lan].target["open_tray"],
									stash = "Tray"..i,
									stashName = targetName,

								}
							}, distance = 2.0 })
				end
				for i, fridge in ipairs(Location.IngredientFridges) do
					local targetName = locationName.."PKfridge"..i
					if Config.Inv == "ox" then
						TriggerServerEvent("jixel-pearls:makeOXShop", targetName, fridge.shop.label, fridge.shop.items, fridge.coords, Location.job)
					end
					Targets[targetName] = exports['qb-target']:AddBoxZone(targetName, fridge.coords, fridge.l, fridge.w,
				{ name = targetName, heading = fridge.heading, debugPoly = Config.Debug, minZ = fridge.coords.z-0.5, maxZ = fridge.coords.z+1, },
				{ options = {
					{
						event = "jixel-pearls:Shop", icon = "fas fa-archive",
						label = Loc[Config.Lan].target["food_fridge"], shop = fridge.shop,
						job = Location.job, shopname = targetName, coords = fridge.coords,
					}
				}, distance = 2.0, })
				end
				for i, sink in ipairs(Location.SinkTargets) do
					local targetName = locationName.."PKSink"..i
					Targets[targetName] = exports['qb-target']:AddBoxZone(targetName, sink.coords, sink.l, sink.w,
					{ name = targetName, heading = sink.heading, debugPoly = Config.Debug, minZ = sink.coords.z-0.5, maxZ = sink.coords.z+1 },
					{ options = {
						{
							event = "jixel-pearls:washHands", icon = "fas fa-hand-holding-water",
							label = Loc[Config.Lan].target["hands"],
							coords = sink.coords,
						}
					}, distance = 2.0 })
				end
				for i, pos in ipairs(Location.PosTargets) do
				local targetName = locationName.."PKPOS"..i
				Targets[targetName] = exports['qb-target']:AddBoxZone(targetName, pos.coords, pos.l, pos.w,
				{ name = targetName, heading = pos.heading, debugPoly = Config.Debug, minZ = pos.coords.z-0.5, maxZ = pos.coords.z+1, },
					{ options = {
						{ type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-user-check", label = Loc[Config.Lan].target["clockin"], job = Location.job },
							{ event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = Loc[Config.Lan].target["boss"], job = bossroles, },
							{ event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].target["charge"], job = Location.job,
							coords = pos.coords, img = "<center><p><img src="..tostring(pos.POSImg).." width=150px></p>", },
					}, distance = 2.0, })
				end
				for i, bar in ipairs(Location.BarTap) do

					local targetName = locationName.."PKBarTap"..i
					Targets[targetName] = exports['qb-target']:AddBoxZone(targetName, bar.coords, bar.l, bar.w,
						{ name = targetName, heading = bar.heading, debugPoly = Config.Debug, minZ = bar.coords.z-0.5, maxZ = bar.coords.z+1, },
						{ options = {
							{
								event = "jixel-pearls:Crafting",
								icon = "fas fa-utensils", label = Loc[Config.Lan].target["beer"],
								header = Loc[Config.Lan].menu["header_beer"],
								job = Location.job, craftable = bar.craftable,
								coords = bar.coords,
						}
						}, distance = 2.0, })
				end
				for i, coffee in ipairs(Location.CoffeeTargets) do
					local targetName = locationName.."PKCoffee"..i
					Targets[targetName] = exports['qb-target']:AddBoxZone(targetName, coffee.coords, coffee.l, coffee.w,
						{ name = targetName, heading = coffee.heading, debugPoly = Config.Debug, minZ = coffee.coords.z-0.5, maxZ = coffee.coords.z+1, },
						{ options = {
							{
								event = "jixel-pearls:Crafting",
								icon = "fas fa-coffee", label = Loc[Config.Lan].target["coffee"],
								header = Loc[Config.Lan].menu["header_coffee"],
								job = Location.job, craftable = coffee.craftable,
								coords = coffee.coords
							}
						}, distance = 2.0, })
				end
				for i, oven in ipairs(Location.OvenTargets) do
					local targetName = locationName.."PKOven"..i
					Targets[targetName] = exports['qb-target']:AddBoxZone(targetName, oven.coords, oven.w, oven.l,
						{ name = targetName, heading = oven.heading, debugPoly = Config.Debug, minZ = oven.coords.z-0.5, maxZ = oven.coords.z+1, },
						{ options = {
						{
							event = "jixel-pearls:Crafting",
							icon = "fas fa-utensils", label = Loc[Config.Lan].target["oven"],
							header = Loc[Config.Lan].menu["header_oven"],
							job = Location.job, craftable = oven.craftable,
							coords = oven.coords
						}
						}, distance = 2.0, })
				end
				for i, fryer in ipairs(Location.FryerTargets) do
					local targetName = locationName.."PKFryer"..i
					Targets[targetName] = exports['qb-target']:AddBoxZone(targetName, fryer.coords, fryer.w, fryer.l,
						{ name = targetName, heading = fryer.heading, debugPoly = Config.Debug, minZ = fryer.coords.z-0.5, maxZ = fryer.coords.z+1, },
						{ options = {
							{
								event = "jixel-pearls:Crafting",
								icon = "fas fa-utensils",
								label = Loc[Config.Lan].target["fryer"],
								header = Loc[Config.Lan].menu["header_fryer"],
								job = Location.job, craftable = fryer.craftable,
								coords = fryer.coords,
							}
						}, distance = 2.0, })
				end
				for i, boss in ipairs(Location.BossTargets) do
					local targetName = locationName.."PKBoss"..i
					Targets[targetName] = exports['qb-target']:AddBoxZone(targetName, boss.coords, boss.l, boss.w,
						{ name = targetName, heading = boss.heading, debugPoly = Config.Debug, minZ = boss.coords.z-0.5, maxZ = boss.coords.z+1, },
						{ options = {
							{ event = "qb-bossmenu:client:OpenMenu",
								icon = "fas fa-list", label = Loc[Config.Lan].target["boss"],
								job = bossroles,
								coords = boss.coords,
							}
						}, distance = 2.5, })
				end

				for i, sushi in ipairs(Location.SushiRolling) do
					if sushi then
					local targetName = locationName.."PKRolling"..i
					Targets[targetName] = exports['qb-target']:AddBoxZone(targetName, sushi.coords, sushi.l, sushi.w,
						{ name = targetName, heading = sushi.heading, debugPoly = Config.Debug, minZ = sushi.coords.z-0.5, maxZ = sushi.coords.z+1, },
						{ options = {
							{ event = "jixel-pearls:Crafting",
								icon = "fas fa-utensils", label = Loc[Config.Lan].target["roll_sushi"],
								header = Loc[Config.Lan].menu["header_sushi"],
								job = Location.job, craftable = sushi.craftable,
								coords = sushi.coords,
							}
						} , distance = 2.0, })
					end
				end
				for i, drink in ipairs(Location.DrinkFridges) do
					local targetName =  locationName.."PKDrink_fridge"..i
					if Config.Inv == "ox" then
						TriggerServerEvent("jixel-pearls:makeOXShop",targetName, Ingredients.BarItems.label, Ingredients.BarItems.items, drink.coords, Location.job)
					end

					Targets[targetName] =
						exports['qb-target']:AddBoxZone(targetName, drink.coords, drink.l, drink.w,
							{ name = targetName, heading = drink.heading, debugPoly = Config.Debug, minZ = drink.coords.z-0.5, maxZ = drink.coords.z+1, },
							{ options = {
								{
									event = "jixel-pearls:Shop", icon = "fas fa-archive",
									label = Loc[Config.Lan].target["drink_fridge"], shop = Ingredients.BarItems,
									job = Location.job, shopname = targetName, coords = drink.coords
								}
							}, distance = 2.0, })
				end

				for i, cocktail in ipairs(Location.CocktailTargets) do
					local targetName = locationName.."PKCocktail"..i
					Targets[targetName] = exports['qb-target']:AddBoxZone(targetName, cocktail.coords, 0.6, 0.6,
						{ name = targetName, heading = cocktail.heading, debugPoly = Config.Debug, minZ = cocktail.coords.z-0.5, maxZ = cocktail.coords.z+1, },
						{ options = {
							{
								event = "jixel-pearls:Crafting",
								icon = "fas fa-cocktail", label = Loc[Config.Lan].target["cocktail"],
								header = Loc[Config.Lan].menu["header_cocktail"],
								job = Location.job, craftable = cocktail.craftable,
								coords = cocktail.coords,
							}
						}, distance = 2.0, })
					if cocktail.prop then
						Props[#Props+1] = makeProp({prop = `v_res_mchopboard`, coords = vec4(cocktail.coords.x, cocktail.coords.y, cocktail.propzoffset or cocktail.coords.z, cocktail.heading)}, true, false)
					end
				end
				for i, desk in ipairs(Location.FrontDesk) do
					if desk then
					local targetName = locationName.."PKDesk"..i
					Targets[targetName] = exports['qb-target']:AddBoxZone(targetName, desk.coords, 0.6, 0.6,
						{ name = targetName, heading = desk.heading, debugPoly = Config.Debug, minZ = desk.coords.z-0.5, maxZ = desk.coords.z+1, },
						{ options = {
							{ type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-user-check", label = Loc[Config.Lan].target["clockin"], job = Location.job },
							{ event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = Loc[Config.Lan].target["boss"], job = bossroles, },
							{ event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].target["charge"], job = Location.job,
							coords = desk.coords, img = "<center><p><img src="..Location.POSImg.." width=150px></p>", },
						}, distance = 2.0, })
					end
				end
		end
	end
end)

RegisterNetEvent('jixel-pearls:washHands', function(data)
	lookEnt(data.coords)
	QBCore.Functions.Progressbar('washing_hands', Loc[Config.Lan].progressbar["progress_washing"], 5000, false, false, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
	{ animDict = "mp_arresting", anim = "a_uncuff", flags = 8, }, {}, {}, function()
		triggerNotify(nil, Loc[Config.Lan].success["washed_hands"], 'success')
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
		triggerNotify(nil, Loc[Config.Lan].error["cancel"], 'error')
    end, data.icon)
end)

RegisterNetEvent('jixel-pearls:Stash', function(data)
	lookEnt(data.coords)
	if Config.Inv == "ox" then exports.ox_inventory:openInventory('stash', data.stashName)
	else
		TriggerEvent("inventory:client:SetCurrentStash", "pearls_"..data.stash)
		TriggerServerEvent("inventory:server:OpenInventory", "stash", "pearls_"..data.stash)
	end
end)


RegisterNetEvent('jixel-pearls:Shop', function(data)
	print("Hey Look a shop")
	lookEnt(data.coords)
	if data.job then print("test") end
	if Config.Inv == "ox" and not Config.JimShop then exports.ox_inventory:openInventory('shop', { type = data.shopname }) else
		print("Hey look I got this far")
	TriggerServerEvent(((Config.JimShop) and "jim-shops:ShopOpen" or "inventory:server:OpenInventory"), "shop", "pearls", data.shop) end
end)

RegisterNetEvent('jixel-pearls:Crafting:MakeItem', function(data)
	if data.header == Loc[Config.Lan].menu["header_cocktail"] then -- Cocktail
		bartext = Loc[Config.Lan].progressbar["progress_mix"]..QBCore.Shared.Items[data.item].label	bartime = 3500
			animDictNow = "mp_ped_interaction" animNow = "handshake_guy_a"
	elseif data.header == Loc[Config.Lan].menu["header_beer"] then -- Beer
		bartext = Loc[Config.Lan].progressbar["progress_pour"]..QBCore.Shared.Items[data.item].label bartime = 3500
		animDictNow = "mp_ped_interaction" animNow = "handshake_guy_a"
	elseif data.header == Loc[Config.Lan].menu["header_coffee"] then -- Coffee
		bartext = Loc[Config.Lan].progressbar["progress_pour"]..QBCore.Shared.Items[data.item].label	bartime = 3500
		animDictNow = "mp_ped_interaction" animNow = "handshake_guy_a"
	elseif data.header == Loc[Config.Lan].menu["header_oven"] then -- Oven
		bartext = Loc[Config.Lan].progressbar["progress_cook"]..QBCore.Shared.Items[data.item].label bartime = 3500
		animDictNow = "amb@prop_human_bbq@male@base" animNow = "base"
	elseif data.header == Loc[Config.Lan].menu["header_fryer"] then -- Frying
		bartext = Loc[Config.Lan].progressbar["progress_fry"]..QBCore.Shared.Items[data.item].label bartime = 3500
		animDictNow = "amb@prop_human_bbq@male@base" animNow = "base"
	elseif data.header == Loc[Config.Lan].menu["header_sushi"] then -- Sushi
		bartext = Loc[Config.Lan].progressbar["progress_rolling"]..QBCore.Shared.Items[data.item].label bartime = 3500
		animDictNow = "anim@heists@prison_heiststation@cop_reactions" animNow = "cop_b_idle"
	elseif data.header == Loc[Config.Lan].menu["header_chopboard"] then -- ChopBoard
		bartext = Loc[Config.Lan].progressbar["progress_chop"]..QBCore.Shared.Items[data.item].label bartime = 3500
		animDictNow = "anim@heists@prison_heiststation@cop_reactions" animNow = "cop_b_idle"
	else
		bartext = Loc[Config.Lan].progressbar["progress_cook"] bartime = 3500
		animDictNow = "amb@prop_human_bbq@male@base" animNow = "base"
	end
	if (data.amount and data.amount ~= 1) then data.craft["amount"] = data.amount
		for k, v in pairs(data.craft[data.item]) do	data.craft[data.item][k] *= data.amount	end
		bartime *= data.amount bartime *= 0.9
	end
	if progressBar({ label = bartext, time = bartime, canel = true, dict = animDictNow, anim = animNow, flag = 1, icon = data.item}) then
		TriggerServerEvent("jixel-pearls:Crafting:GetItem", data.item, data.craft)
		Wait(500)
	else
		TriggerEvent("inventory:client:busy:status", false)
	end
	ClearPedTasks(PlayerPedId())
end)


RegisterNetEvent('jixel-pearls:Crafting', function(data)
	if not jobCheck() then return end
	local Menu = {}
	if Config.Menu == "qb" then
		Menu[#Menu + 1] = { header = data.header, txt = "", isMenuHeader = true }
		Menu[#Menu + 1] = { icon = "fas fa-circle-xmark", header = "", txt = Loc[Config.Lan].menu["close"], params = { event = "" } }
	end
	for i = 1, #data.craftable do
		for k, v in pairs(data.craftable[i]) do
			if k ~= "amount" then
				local text = ""
				setheader = QBCore.Shared.Items[tostring(k)].label
				if data.craftable[i]["amount"] ~= nil then setheader = setheader.." x"..data.craftable[i]["amount"] end
				local disable = false
				local checktable = {}
				for l, b in pairs(data.craftable[i][tostring(k)]) do
					if b == 0 or b == 1 then number = "" else number = " x"..b end
					if not QBCore.Shared.Items[l] then print("^3Error^7: ^2Script can't find ingredient item in QB-Core items.lua - ^1"..l.."^7") return end
					if Config.Menu == "ox" then text = text..QBCore.Shared.Items[l].label..number.."\n" end
					if Config.Menu == "qb" then text = text.."- "..QBCore.Shared.Items[l].label..number.."<br>" end
					settext = text
					checktable[l] = HasItem(l, b)
				end
				for _, v in pairs(checktable) do if v == false then disable = true break end end
				if not disable then setheader = setheader.." ✔️" end
				Menu[#Menu + 1] = {
					disabled = disable,
					icon = "nui://"..Config.img..QBCore.Shared.Items[tostring(k)].image,
					header = setheader, txt = settext, --qb-menu
					title = setheader, description = settext, -- ox_lib
					event = "jixel-pearls:Crafting:MakeItem", -- ox_lib
					args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header, anim = data.craftable["anim"] }, -- ox_lib
					params = { event = "jixel-pearls:Crafting:MakeItem", args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header, anim = data.craftable["anim"] } } -- qb-menu
				}
				settext, setheader = nil
			end
		end
	end
	print(data.header)
	if Config.Menu == "ox" then	exports.ox_lib:registerContext({id = 'Crafting', title = data.header, position = 'top-right', options = Menu })	exports.ox_lib:showContext("Crafting")
	elseif Config.Menu == "qb" then	exports['qb-menu']:openMenu(Menu) end
	lookEnt(data.coords)
end)

function FoodProgress(ItemMake, craftable)
	QBCore.Functions.Progressbar('making_food', Loc[Config.Lan].progressbar["progress_pour"]..QBCore.Shared.Items[ItemMake].label, 3000, false, false,
	{ disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
	{ animDict = "mp_ped_interaction", anim = "handshake_guy_a", flags = 8, }, {}, {}, function()
		TriggerServerEvent('jixel-pearls:Crafting:GetItem', ItemMake, craftable)
	end, function() -- Cancel
		TriggerEvent('inventory:client:busy:status', false)
		triggerNotify(nil, Loc[Config.Lan].error["cancel"], 'error')
	end, ItemMake)
end

RegisterNetEvent('jixel-pearls:JustGive', function(data) if not onDuty then triggerNotify(nil, Loc[Config.Lan].error["not_clockin"], 'error') else lookEnt(data.coords) FoodProgress(data.id) end end)

RegisterNetEvent('jixel-pearls:client:Consume', function(itemName, type)
	local emoteTable = {
		--Beers
		["ambeer"] = "beer3", ["dusche"] = "beer1", ["logger"] = "beer2", ["pisswasser"] = "beer4", ["pisswasser2"] = "beer5", ["pisswasser3"] = "beer6",
		--Cocktails
		["b52"] = "whiskey", ["brussian"] = "whiskey", ["bkamikaze"] = "whiskey", ["cappucc"] = "whiskey", ["ccookie"] = "whiskey", ["iflag"] = "whiskey", ["kamikaze"] = "whiskey", ["sbullet"] = "whiskey", ["voodoo"] = "whiskey", ["woowoo"] = "whiskey",
		["tillie"] = "browncup",
		--Spirits
		["icream"] = "icream", ["rum"] = "rumb", ["gin"] = "ginb", ["scotch"] = "whiskeyb", ["vodka"] = "vodkab", ["amaretto"] = "vodkab", ["curaco"] = "vodkab",
		--Drinks
		["sprunk"] = "sprunk", ["sprunklight"] = "sprunk",
		["ecola"] = "ecola", ["ecolalight"] = "ecola",
		["cranberry"] = "wine",
		--Food
		["crisps"] = "crisps",

	}
	local progstring, defaultemote = Loc[Config.Lan].progressbar["progress_drink"], "drink"
	if type == "food" then progstring = Loc[Config.Lan].progressbar["progress_eat"] defaultemote = "burger" end
	ExecuteCommand("e "..(emoteTable[itemName] or defaultemote))
    QBCore.Functions.Progressbar("consume", Loc[Config.Lan].progressbar["progress_drink"]..QBCore.Shared.Items[itemName].label.."..", math.random(3000, 6000), false, true, {
        disableMovement = false, disableCarMovement = false, disableMouse = false,  disableCombat = true, }, {}, {}, {}, function() -- Done
        ExecuteCommand("e c")
		toggleItem(false, itemName, 1)
        if QBCore.Shared.Items[itemName].hunger then
			TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger)
			--TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger)
		end
		if QBCore.Shared.Items[itemName].thirst then
			TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst)
			--TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst)
		end
		if type == "alcohol" then alcoholCount += 1
			if alcoholCount > 1 and alcoholCount < 4 then TriggerEvent("evidence:client:SetStatus", "alcohol", 200)	elseif alcoholCount >= 4 then TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200) AlienEffect() end
		end
        if Config.RewardItem == itemName then toggleItem(true, Config.RewardPool[math.random(1, #Config.RewardPool)], 1) end
	end, function() -- Cancel
		ExecuteCommand("e c")
    end, itemName)
end)

AddEventHandler('onResourceStop', function(resource) if resource ~= GetCurrentResourceName() then return end
	for k in pairs(Targets) do exports['qb-target']:RemoveZone(k) end
	for _, v in pairs(Props) do unloadModel(GetEntityModel(v)) DeleteEntity(v) end
end)