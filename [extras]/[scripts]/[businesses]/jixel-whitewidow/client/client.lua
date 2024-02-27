local QBCore = exports[Config.Core]:GetCoreObject()
RegisterNetEvent('QBCore:Client:UpdateObject', function() QBCore = exports[Config.Core]:GetCoreObject() end)

PlayerJob = {}
local Targets = {}
local Props =  {}
--local CraftLock = false

local function jobCheck() canDo = true if not onDuty then triggerNotify(nil, Loc[Config.Lan].error["not_clockin"], 'error') canDo = false end return canDo end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        for k, v in pairs(Config.Locations) do
            if PlayerData.job.onduty then if PlayerData.job.name == v.job then TriggerServerEvent("QBCore:ToggleDuty") end end
        end
    end)
end)
RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo) PlayerJob = JobInfo onDuty = PlayerJob.onduty end)
RegisterNetEvent('QBCore:Client:SetDuty', function(duty) onDuty = duty end)

AddEventHandler('onResourceStart', function(r) if GetCurrentResourceName() ~= r then return end
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        for k, v in pairs(Config.Locations) do if PlayerJob.onduty then if PlayerJob.name == v.job then TriggerServerEvent("QBCore:ToggleDuty") end end end
    end)
end)

--[[CRAFTING]]--
RegisterNetEvent('jixel-whitewidow:Crafting:MakeItem', function(data)
    local itemName = data.itemName
    local ped = PlayerPedId()
    local stress, health, armour, animDictNow, animNow, bartext, bartime, bong = table.unpack({"", "", "", "", "", "", 0, false})
    if data.header == Loc[Config.Lan].menu["header_tablebong"] or data.header == Loc[Config.Lan].menu["header_bong"] then bong = true end
    for _, v in pairs(Bud) do if data.item == v.Name then stress = v.Stress health = v.Health armour = v.Armour end end
    if data.header == Loc[Config.Lan].menu["header_oven"] then -- Oven
        animDictNow = "amb@prop_human_bbq@male@base" animNow = "base"
        bartext = Loc[Config.Lan].progressbar["progress_cook"] bartime = 5000
    elseif data.header == Loc[Config.Lan].menu["header_harvest"] then -- Harvest
        animDictNow = "anim@amb@business@weed@weed_inspecting_lo_med_hi@" animNow = "weed_crouch_checkingleaves_idle_01_inspector"
        bartext = Loc[Config.Lan].progressbar["progress_harvest"] bartime = 5000
    elseif data.header == Loc[Config.Lan].menu["header_joints"] then -- Joints
        animDictNow = "amb@prop_human_parking_meter@female@base" animNow = "base_female"
        bartext = Loc[Config.Lan].progressbar["progress_rolling"] bartime = 5000
    elseif data.header == Loc[Config.Lan].menu["header_trimming"] then -- Trimming
        animDictNow = "amb@prop_human_parking_meter@female@base" animNow = "base_female"
        bartext = Loc[Config.Lan].progressbar["progress_trimming"] bartime = 5000
    elseif data.header == Loc[Config.Lan].menu["header_tablebong"] then -- BongTable
        ExecuteCommand("e bong")
        bartext = Loc[Config.Lan].progressbar["progress_smoke"] bartime = 10000
        animDictNow = nil animNow = nil
        if Config.ParitcleEffects then
            ParticleFx()
        end
    elseif data.header == Loc[Config.Lan].menu["header_bong"] then -- BongTable
        if Config.ParitcleEffects then
            ParticleFx()
        end
        if Config.CustomBong then
            ExecuteCommand("e "..itemName)-- use the passed itemName instead of data.item
            bartext = Loc[Config.Lan].progressbar["progress_smoke"]
            bartime = 10000
            animDictNow = nil
            animNow = nil
        else
            ExecuteCommand("e bong")
            bartext = Loc[Config.Lan].progressbar["progress_smoke"]
            bartime = 10000
            animDictNow = nil
            animNow = nil
        end
    end
    if (data.amount and data.amount ~= 1) then data.craft["amount"] = data.amount
		for k, v in pairs(data.craft[data.item]) do	data.craft[data.item][k] *= data.amount	end
		bartime *= data.amount bartime *= 0.9
	end
    if Config.ProgressBar == "ox" then
        if exports.ox_lib:progressBar({ duration = bartime, label = bartext..QBCore.Shared.Items[data.item].label.."..", useWhileDead = false, canCancel = true,
            anim = { dict = animDictNow, clip = animNow, flag = 49 }, disable = { combat = true },}) then
            if bong then
                ExecuteCommand("e c")
                toggleItem(false, data.item, 1)
                SetEntityHealth(ped, GetEntityHealth(ped) + health)
                TriggerServerEvent('hud:server:RelieveStress', stress)
                AddArmourToPed(ped, GetPedArmour(ped) + armour)
                ClearPedTasks(ped)
                if Config.ScreenEffects then CreateThread(function() BongEffect() end) end
            else
                TriggerServerEvent("jixel-whitewidow:Crafting:GetItem", data.item, data.craft)
            end
            Wait(500)
            if Config.ParitcleEffects then
                StopParticleFx()
            end
            TriggerEvent("jixel-whitewidow:Crafting", data)
        else
            ClearPedTasks(PlayerPedId())
            TriggerEvent('inventory:client:busy:status', false)
            if bong then ExecuteCommand("e c") end
        end
    else
        QBCore.Functions.Progressbar('making_food', bartext..QBCore.Shared.Items[data.item].label, bartime, false, true,
        { disableMovement = true, disableCarMovement = false, disableMouse = false, disableCombat = false, },
        { animDict = animDictNow, anim = animNow, flags = 49, }, {}, {}, function()
            if bong then
                ExecuteCommand("e c")
                toggleItem(false, data.item, 1)
                SetEntityHealth(ped, GetEntityHealth(ped) + health)
                TriggerServerEvent('hud:server:RelieveStress', stress)
                AddArmourToPed(ped, GetPedArmour(ped) + armour)
                ClearPedTasks(ped)
                if Config.ScreenEffects then CreateThread(function() BongEffect() end) end
            else
                TriggerServerEvent("jixel-whitewidow:Crafting:GetItem", data.item, data.craft)
            end
            Wait(500)
            if Config.ParitcleEffects then
                StopParticleFx()
            end
            TriggerEvent("jixel-whitewidow:Crafting", data)
        end, function() -- Cancel
            ClearPedTasks(PlayerPedId())
            TriggerEvent('inventory:client:busy:status', false)
            if bong then ExecuteCommand("e c") end
        end, data.item)
    end
end)

RegisterNetEvent('jixel-whitewidow:Crafting', function(data)
    --[[ if CraftLock then return end ]]
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
					if b == 0 then number = "" else number = " x"..b end
					if not QBCore.Shared.Items[l] then print("^3Error^7: ^2Script can't find ingredient item in QB-Core items.lua - ^1"..l.."^7") return end
					if Config.Menu == "ox" then text = text..QBCore.Shared.Items[l].label..number.."\n" end
					if Config.Menu == "qb" then text = text.."- "..QBCore.Shared.Items[l].label..number.."<br>" end
					settext = text
					checktable[l] = HasItem(l, b)
				end
                for _, v in pairs(checktable) do if v == false then disable = true break end end
                if not disable then setheader = setheader.." ✔️" end
                local event = "jixel-whitewidow:Crafting:MakeItem"
                if Config.MultiCraft then event = "jixel-whitewidow:Crafting:MultiCraft" end
                Menu[#Menu + 1] = {
                    disabled = disable,
					icon = "nui://"..Config.img..QBCore.Shared.Items[tostring(k)].image,
                    header = setheader, txt = settext,
                    title = setheader, description = settext,
                    event = event, args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header, coords = data.coords  }, --ox_lib
                    params = { event = event, args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header, coords = data.coords } }
                }
                settext, setheader = nil
            end
        end
    end
	if Config.Menu == "ox" then exports.ox_lib:registerContext({id = 'Crafting', title = data.header, position = 'top-right', options = Menu })	exports.ox_lib:showContext("Crafting")
	elseif Config.Menu == "qb" then	exports['qb-menu']:openMenu(Menu) end
    lookEnt(data.coords)
end)

RegisterNetEvent('jixel-whitewidow:Crafting:MultiCraft', function(data)
    local success = Config.MultiCraftAmounts local Menu = {}
    for k in pairs(success) do success[k] = true
        for l, b in pairs(data.craft[data.item]) do
            local has = HasItem(l, (b * k)) if not has then success[k] = false break else success[k] = true end
		end end
    if Config.Menu == "qb" then Menu[#Menu + 1] = { header = data.header, txt = "", isMenuHeader = true } end
	Menu[#Menu + 1] = { icon = "fas fa-arrow-left", title = Loc[Config.Lan].menu["back"], header = "", txt = Loc[Config.Lan].menu["back"], params = { event = "jixel-whitewidow:Crafting", args = data }, event = "jixel-whitewidowc:Crafting", args = data }
	for k in pairsByKeys(success) do
		Menu[#Menu + 1] = {
			disabled = not success[k],
			icon = "nui://"..Config.img..QBCore.Shared.Items[data.item].image, header = QBCore.Shared.Items[data.item].label.." [x"..k.."]", title = QBCore.Shared.Items[data.item].label.." [x"..k.."]",
			event = "jixel-whitewidow:Crafting:MakeItem", args = { item = data.item, craft = data.craft, craftable = data.craftable, header = data.header, amount = k },
			params = { event = "jixel-whitewidow:Crafting:MakeItem", args = { item = data.item, craft = data.craft, craftable = data.craftable, header = data.header, amount = k } }
		}
	end
	if Config.Menu == "ox" then	exports.ox_lib:registerContext({id = 'Crafting', title = data.header, position = 'top-right', options = Menu })	exports.ox_lib:showContext("Crafting")
	elseif Config.Menu == "qb" then	exports['qb-menu']:openMenu(Menu) end
end)

RegisterNetEvent('jixel-whitewidow:Crafting:TableBong', function(data, itemName) -- Alternative Event to help separtate the type of
    local Menu = {}
    if Config.Menu == "qb" then
        Menu[#Menu+1] = { header = data.header, txt = "", isMenuHeader = true }
        Menu[#Menu+1] = { icon = "fas fa-circle-xmark", header = "", txt = Loc[Config.Lan].menu["close"], params = { event = ""} }
    end
    for i = 1, #data.craftable do
        for k, v in pairs(data.craftable[i]) do
            if k ~= "amount" then
                local text, disable, checktable = table.unpack({"", false, {}})
                setheader = QBCore.Shared.Items[tostring(k)].label
                if data.craftable[i]["amount"] ~= nil then setheader = setheader.." x"..data.craftable[i]["amount"] end
                for l, b in pairs(data.craftable[i][tostring(k)]) do
                    if not QBCore.Shared.Items[l] then print("^3Error^7: ^2Script can't find ingredient item in QB-Core items.lua - ^1"..l.."^7") return end
                    checktable[l] = HasItem(l, b)
                end
                for _, v in pairs(checktable) do if v == false then disable = true break end end
                Menu[#Menu + 1] = {
                    disabled = disable,
                    icon = "nui://"..Config.img..QBCore.Shared.Items[tostring(k)].image,
                    header = setheader,
                    title = setheader,
                    params = { event = "jixel-whitewidow:Crafting:MakeItem", args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header, itemName =  data.itemName } },
                    event = "jixel-whitewidow:Crafting:MakeItem", args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header, itemName =  data.itemName }
                }
                settext, setheader = nil
            end
        end
    end
    if (Config.Menu == "qb" and #Menu > 2) or (Config.Menu == "ox" and #Menu > 0) then
        if Config.Menu == "ox" then exports.ox_lib:registerContext({id = 'Crafting', title = data.header, position = 'top-right', options = Menu }) exports.ox_lib:showContext("Crafting")
        elseif Config.Menu == "qb" then exports['qb-menu']:openMenu(Menu) end
    else
        triggerNotify(nil, Loc[Config.Lan].error["wrong_ingred"], 'error')
    end
    lookEnt(data.coords)
end)

local function consumeSuccess(itemName, item)
    local ped = PlayerPedId()
    toggleItem(false, item.Name, 1)
    if QBCore.Shared.Items[itemName].hunger then
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger)
        --TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger)
    end
    if QBCore.Shared.Items[itemName].thirst then
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst)
        --TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst)
    end
    SetEntityHealth(ped, GetEntityHealth(ped) + tonumber(item.Health))
    TriggerServerEvent('hud:server:RelieveStress', tonumber(item.Stress))
    AddArmourToPed(ped, GetPedArmour(ped) + tonumber(item.Armour))
    ClearPedTasks(ped)
end

RegisterNetEvent("jixel-whitewidow:client:UseDroog", function(args) --Functions for usable items
    local ped, item, animDictNow, animNow, duration, prop, bone, rotation, bartext, bartime, joint = table.unpack({PlayerPedId(), {}, "", "", 0, "", nil, nil, "", 3000, false --[[0.03, -0.05, 0.0, 10.0, 70.0]]})
    for _, v in pairs(Edibles) do if args == v.Name then item = v animDictNow = "mp_suicide" animNow = "Pill" prop = nil bone = nil rotation = nil bartime = 3000 bartext = Loc[Config.Lan].progressbar["progress_eat"] break end end
    for _, v in pairs(Joints) do if args == v.Name then item = v animDictNow = "timetable@gardener@smoking_joint" animNow = "smoke_idle" prop = "p_amb_joint_01" bone = "57005" rotation = 0.12 joint = true bartime = 7500 bartext = Loc[Config.Lan].progressbar["progress_smoke"] break end end
    if Config.ProgressBar == "ox" then
        if exports.ox_lib:progressBar({ duration = bartime,    label = bartext..QBCore.Shared.Items[itemName].label.."..", useWhileDead = false, canCancel = true,
            anim = { dict = animDictNow, clip = animNow, flag = 49 },disable = { combat = true },}) then
            consumeSuccess(item.Name, item)
        else ExecuteCommand("e c") end
    else
        QBCore.Functions.Progressbar(item.Name, bartext..QBCore.Shared.Items[item.Name].label.."..", bartime, false, true,
            { disableMovement = true, disableCarMovement = false, disableMouse = false, disableCombat = true, },
            { animDict = animDictNow, anim = animNow, flags = 49, }, {}, {}, function()
                consumeSuccess(item.Name, item)
                if Config.ScreenEffects then if joint then CreateThread(function() JointEffect() end) else CreateThread(function() EdiblesEffect() end) end end
        end, function() -- Cancel
                ClearPedTasks(ped)
                TriggerEvent('inventory:client:busy:status', false)
        end)
    end
end)

RegisterNetEvent('jixel-whitewidow:client:Menu:Close', function() exports['qb-menu']:closeMenu() end)

RegisterNetEvent('jixel-whitewidow:Stash', function(data)
	if data.job and not jobCheck() then return end
    if Config.Inv == "ox" then exports.ox_inventory:openInventory('stash', data.stash)
    else TriggerEvent("inventory:client:SetCurrentStash", data.stash) TriggerServerEvent("inventory:server:OpenInventory", "stash", data.stash) end
    lookEnt(data.coords)
end)

RegisterNetEvent('jixel-whitewidow:Shop', function(data)
	--if not jobCheck() then return end
	local event = "inventory:server:OpenInventory"
	if Config.JimShop then event = "jim-shops:ShopOpen"
    elseif Config.Inv == "ox" then exports.ox_inventory:openInventory('shop', { type = data.wjob.."ingredients" }) end
	TriggerServerEvent(event, "shop", "whitewidow", Config.Items)
    lookEnt(data.coords)
end)

AddEventHandler('onResourceStop', function(r) if r ~= GetCurrentResourceName() then return end
    if GetResourceState("qb-target") == "started" or GetResourceState("ox_target") == "started" then
        for _, v in pairs(Props) do unloadModel(GetEntityModel(v)) DeleteObject(v) end
        for k in pairs(Targets) do exports['qb-target']:RemoveZone(k) end
        exports[Config.Core]:HideText()
        exports['qb-menu']:closeMenu()
    end
end)