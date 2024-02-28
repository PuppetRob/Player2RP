local QBCore = exports['qb-core']:GetCoreObject()
local firstAlarm = false
local smashing = false

local storeHit = false
local doorHacked = false
local doorLocked = false

-- Functions

local function loadParticle()
	if not HasNamedPtfxAssetLoaded("scr_jewelheist") then
		RequestNamedPtfxAsset("scr_jewelheist")
    end
    while not HasNamedPtfxAssetLoaded("scr_jewelheist") do
		Wait(0)
    end
    SetPtfxAssetNextCall("scr_jewelheist")
end

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(3)
    end
end

local function LockDoors() -- Locks Los Santos Vangelico's Main Door
    TriggerEvent('qb-doorlock:client:setState', source, Config.CityDoor, true, src, false, false)
    TriggerEvent('qb-doorlock:client:setState', source, Config.CitySec, true, src, false, false)
    if storeHit then -- If the hack has been done it locks doors and ensures that state for all players
        TriggerServerEvent('qb-doorlock:server:updateState', Config.CityDoor, true, false, false, true)
		if doorHacked then 
    	    TriggerServerEvent('qb-doorlock:server:updateState', Config.CitySec, true, false, false, true)
        end
        print('iStore Locked')
    end
    doorLocked = true
end

local function UnlockDoors() -- Unocks Los Santos Vangelico's Main Door
    TriggerEvent('qb-doorlock:client:setState', source, Config.CityDoor, false, src, false, false)
    if storeHit then -- If the thermite has been done it locks doors and ensures that state for all players
        TriggerServerEvent('qb-doorlock:server:updateState', Config.CityDoor, false, false, false, true)
		if doorHacked then 
    	    TriggerServerEvent('qb-doorlock:server:updateState', Config.CityDoor, false, false, false, true)
            TriggerEvent('qb-doorlock:client:setState', source, Config.CitySec, false, src, false, false)
        end
        print('iStore Unlocked')
    end
    doorLocked = false
end

local function CheckRobberyTime()
    local start = Config.IstoreHours.range.open
    local ends = Config.IstoreHours.range.close
    local hour = GetClockHours()
    local minute = GetClockMinutes()
    local shopHour = false
    if start > ends then
        if hour == start then
            shopHour = true
        elseif hour == 0 then
            shopHour = true
        elseif hour <= ends then
            shopHour = true
        else
            shopHour = false
        end
    else
        if start <= hour and ends >= hour then
            shopHour = true
        else
            shopHour = false
        end
    end
    return shopHour
end

local function validWeapon()
    local ped = PlayerPedId()
    local pedWeapon = GetSelectedPedWeapon(ped)

    for k, _ in pairs(Config.WhitelistedWeapons) do
        if pedWeapon == k then
            return true
        end
    end
    return false
end

local function IsWearingHandshoes()
    local armIndex = GetPedDrawableVariation(PlayerPedId(), 3)
    local model = GetEntityModel(PlayerPedId())
    local retval = true
    if model == `mp_m_freemode_01` then
        if Config.MaleNoHandshoes[armIndex] ~= nil and Config.MaleNoHandshoes[armIndex] then
            retval = false
        end
    else
        if Config.FemaleNoHandshoes[armIndex] ~= nil and Config.FemaleNoHandshoes[armIndex] then
            retval = false
        end
    end
    return retval
end

local function smashVitrine(k)
    if not firstAlarm then
        exports['ps-dispatch']:TechStore()
      --  TriggerServerEvent('police:server:policeAlert', 'Suspicious Activity')
        firstAlarm = true
    end

    QBCore.Functions.TriggerCallback('p2rp-techtwo:server:getCops', function(cops)
        if not CheckRobberyTime() then
            if cops >= Config.RequiredCops then
                local animDict = "missheist_jewel"
                local animName = "smash_case"
                local ped = PlayerPedId()
                local plyCoords = GetOffsetFromEntityInWorldCoords(ped, 0, 0.6, 0)
                local pedWeapon = GetSelectedPedWeapon(ped)
                if math.random(1, 100) <= 80 and not IsWearingHandshoes() then
                    TriggerServerEvent("evidence:server:CreateFingerDrop", plyCoords)
                elseif math.random(1, 100) <= 5 and IsWearingHandshoes() then
                    TriggerServerEvent("evidence:server:CreateFingerDrop", plyCoords)
                    QBCore.Functions.Notify(Lang:t('error.fingerprints'), "error")
                end
                smashing = true
                QBCore.Functions.Progressbar("smash_vitrine", Lang:t('info.progressbar'), Config.WhitelistedWeapons[pedWeapon]["timeOut"], false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    exports['ps-dispatch']:TechStore()
                    TriggerServerEvent('p2rp-techtwo:server:vitrineReward', k)
                    TriggerServerEvent('p2rp-techtwo:server:setTimeout')
                 --   TriggerServerEvent('police:server:policeAlert', 'Robbery in progress')
                    smashing = false
                    TaskPlayAnim(ped, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
                end, function() -- Cancel
                    TriggerServerEvent('p2rp-techtwo:server:setVitrineState', "isBusy", false, k)
                    smashing = false
                    TaskPlayAnim(ped, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
                end)
                TriggerServerEvent('p2rp-techtwo:server:setVitrineState', "isBusy", true, k)

                CreateThread(function()
                    while smashing do
                        loadAnimDict(animDict)
                        TaskPlayAnim(ped, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
                        Wait(500)
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "breaking_vitrine_glass", 0.25)
                        loadParticle()
                        StartParticleFxLoopedAtCoord("scr_jewel_cab_smash", plyCoords.x, plyCoords.y, plyCoords.z, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
                        Wait(2500)
                    end
                end)
            else
                QBCore.Functions.Notify(Lang:t('error.minimum_police', {value = Config.RequiredCops}), 'error')
            end
        else
            QBCore.Functions.Notify(Lang:t('error.stores_open'), 'error')
        end
    end)
end

local function thermiteHack(k)
    if not firstAlarm and math.random(1, 100) <= 50 then
        exports['ps-dispatch']:TechStore()
      --  TriggerServerEvent('police:server:policeAlert', 'Suspicious Activity')
        firstAlarm = true
    end

    QBCore.Functions.TriggerCallback('p2rp-techtwo:server:getCops', function(cops)
        if not CheckRobberyTime() then
            if cops >= Config.RequiredCops then
                local ped = PlayerPedId()
                local coords = GetEntityCoords(ped)
                local Dist = #(coords - Config.Thermite[k].coords)
                if Dist <= 1.5 then
                    QBCore.Functions.TriggerCallback('p2rp-techtwo:server:GetItemsNeeded', function(hasItem)
                        if hasItem then
                            if math.random(1, 100) <= 80 and not IsWearingHandshoes() then
                                TriggerServerEvent("evidence:server:CreateFingerDrop", coords)
                            elseif math.random(1, 100) <= 5 and IsWearingHandshoes() then
                                TriggerServerEvent("evidence:server:CreateFingerDrop", coords)
                                QBCore.Functions.Notify(Lang:t('error.fingerprints'), "error")
                            end
                            SetEntityHeading(ped, Config.Thermite[k].h)
                            exports['ps-ui']:Thermite(function(success) -- success
                                if success then    
                                    QBCore.Functions.Notify("Placing Charge...", 'success', 4500)
                                    local loc = Config.Thermite[k].anim
                                    local rotx, roty, rotz = table.unpack(vec3(GetEntityRotation(ped)))
                                    local bagscene = NetworkCreateSynchronisedScene(loc.x, loc.y, loc.z, rotx, roty, rotz, 2, false, false, 1065353216, 0, 1.3)
                                    local bag = CreateObject(GetHashKey('hei_p_m_bag_var22_arm_s'), loc.x, loc.y, loc.z,  true,  true, false)
                                    SetEntityCollision(bag, false, true)
                                    NetworkAddPedToSynchronisedScene(ped, bagscene, 'anim@heists@ornate_bank@thermal_charge', 'thermal_charge', 1.5, -4.0, 1, 16, 1148846080, 0)
                                    NetworkAddEntityToSynchronisedScene(bag, bagscene, 'anim@heists@ornate_bank@thermal_charge', 'bag_thermal_charge', 4.0, -8.0, 1)
                                    NetworkStartSynchronisedScene(bagscene)
                                    Wait(1500)
                                    local x, y, z = table.unpack(GetEntityCoords(ped))
                                    local thermal_charge = CreateObject(GetHashKey('hei_prop_heist_thermite'), x, y, z + 0.2,  true,  true, true)
                                
                                    SetEntityCollision(thermal_charge, false, true)
                                    AttachEntityToEntity(thermal_charge, ped, GetPedBoneIndex(ped, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)
                                    Wait(4000)
                                    TriggerServerEvent('p2rp-techtwo:server:RemoveDoorItem')
                                
                                    DetachEntity(thermal_charge, 1, 1)
                                    FreezeEntityPosition(thermal_charge, true)
                                    Wait(100)
                                    DeleteObject(bag)
                                    ClearPedTasks(ped)
                                
                                    Wait(100)
                                    RequestNamedPtfxAsset('scr_ornate_heist')
                                    while not HasNamedPtfxAssetLoaded('scr_ornate_heist') do
                                        Wait(1)
                                    end
                                    
                                    local termcoords = GetEntityCoords(thermal_charge)
                                    ptfx = vector3(termcoords.x, termcoords.y + 1.0, termcoords.z)

                                    SetPtfxAssetNextCall('scr_ornate_heist')
                                    local effect = StartParticleFxLoopedAtCoord('scr_heist_ornate_thermal_burn', ptfx, 0, 0, 0, 0x3F800000, 0, 0, 0, 0)
                                    Wait(3000)
                                    StopParticleFxLooped(effect, 0)
                                    storeHit = true
                                    DeleteObject(thermal_charge)
                                    TriggerEvent('p2rp-techtwo:client:ElectricBox')
                                else
                                    QBCore.Functions.Notify("You Failure!", 'error', 4500)
                                    storeHit = false
                                end
                            end, Config.ThermiteSettings.time, Config.ThermiteSettings.gridsize, Config.ThermiteSettings.incorrectBlocks)
                        else
                            QBCore.Functions.Notify("You don't have the correct items!", 'error')
                        end
                    end, "thermite")
                else
                    QBCore.Functions.Notify("You just can't quite reach..", 'error')
                end
            else
                QBCore.Functions.Notify(Lang:t('error.minimum_police', {value = Config.RequiredCops}), 'error')
            end
        else
            QBCore.Functions.Notify(Lang:t('error.stores_open'), 'error')
        end
    end)
end

local function startHack()
    CreateThread(function()
        local ped = PlayerPedId()
        RequestAnimDict("amb@world_human_seat_wall_tablet@female@base")
        while not HasAnimDictLoaded("amb@world_human_seat_wall_tablet@female@base") do
            Citizen.Wait(0)
        end
        tab = CreateObject(GetHashKey("prop_cs_tablet"), 0, 0, 0, true, true, true)
        AttachEntityToEntity(tab, ped, GetPedBoneIndex(ped, 57005), 0.17, 0.10, -0.13, 20.0, 180.0, 180.0, true, true, false, true, 1, true)
        TaskPlayAnim(ped, "amb@world_human_seat_wall_tablet@female@base", "base" ,8.0, -8.0, -1, 50, 0, false, false, false)
    end)
end

local function stopHack()
    local ped = PlayerPedId()
    StopAnimTask(ped, "amb@world_human_seat_wall_tablet@female@base", "base" ,8.0, -8.0, -1, 50, 0, false, false, false)
    DeleteEntity(tab)
end

-- Events

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
	QBCore.Functions.TriggerCallback('p2rp-techtwo:server:getVitrineState', function(result)
		Config.Locations = result
	end)
end)

RegisterNetEvent('p2rp-techtwo:client:setVitrineState', function(stateType, state, k)
    Config.Locations[k][stateType] = state
end)

RegisterNetEvent('p2rp-techtwo:client:ElectricBox', function()
    if storeHit or doorHacked then
        if storeHit  and not doorHacked then
            QBCore.Functions.Notify("Fuses blown! Should be opening soon..", 'success')
            UnlockDoors()
            Wait(Config.Cooldown)
            if not CheckRobberyTime() then
                LockDoors()
            end
            storeHit = false
        else 
            QBCore.Functions.Notify("Hack successful: All doors unlocked..", 'success')
            UnlockDoors()
            Wait(Config.Cooldown)
            if not CheckRobberyTime() then
                LockDoors()
            end
            doorHacked = false
        end
    end
end)

RegisterNetEvent('p2rp-techtwo:client:pchack', function()
    QBCore.Functions.TriggerCallback('p2rp-techtwo:server:getCops', function(cops)
        if not CheckRobberyTime() then
            if cops >= Config.RequiredCops then
                local ped = PlayerPedId()
                local coords = GetEntityCoords(ped)
                for k, v in pairs(Config.Hacks) do
                    local Dist = #(coords - v.coords)
                    if Dist <= 1.5 then
                        QBCore.Functions.TriggerCallback('p2rp-techtwo:server:GetItemsNeeded', function(hasItem)
                            if hasItem then
                                startHack()
                                QBCore.Functions.Notify("connecting to security system...", 'success', 2500)
                                --[[if math.random(1, 100) <= 80 and not IsWearingHandshoes() then
                                    TriggerServerEvent("evidence:server:CreateFingerDrop", targetPosition)
                                elseif math.random(1, 100) <= 5 and IsWearingHandshoes() then
                                    TriggerServerEvent("evidence:server:CreateFingerDrop", targetPosition)
                                end]]
                                Wait(2500)
                                exports['ps-ui']:VarHack(function(success)
                                    if success then
                                        stopHack()
                                        doorHacked = true
                                        TriggerEvent('p2rp-techtwo:client:ElectricBox')
                                    else
                                        QBCore.Functions.Notify("I'll have to try that again..", 'error', 3500)
                                        stopHack()
                                        FreezeEntityPosition(ped, false)
                                        doorHacked = false
                                    end
                                end, Config.VarHackSettings.blocks, Config.VarHackSettings.time)
                            else
                                QBCore.Functions.Notify("You don't have the correct items!", 'error')
                            end
                        end, "phone")
                    else
                        QBCore.Functions.Notify("You just can't quite reach..", 'error')
                    end
                end
            else
                QBCore.Functions.Notify(Lang:t('error.minimum_police', {value = Config.RequiredCops}), 'error')
            end
        else
            QBCore.Functions.Notify(Lang:t('error.stores_open'), 'error')
        end
    end)
end)

-- Threads

--[[ CreateThread(function()
    local Dealer = AddBlipForCoord(Config.JewelleryLocation["coords"]["x"], Config.JewelleryLocation["coords"]["y"], Config.JewelleryLocation["coords"]["z"])
    SetBlipSprite (Dealer, 617)
    SetBlipDisplay(Dealer, 4)
    SetBlipScale  (Dealer, 0.7)
    SetBlipAsShortRange(Dealer, true)
    SetBlipColour(Dealer, 3)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Vangelico Jewelery")
    EndTextCommandSetBlipName(Dealer)
end)
 ]]
CreateThread(function()
    local loopDone = false
    while true do
        Wait(1000)
        if not CheckRobberyTime() then
            if not storeHit and not doorHacked and not doorLocked then
                Wait(1000)
                LockDoors()
                loopDone = false
            end
        else
            if not loopDone then
                Wait(1000)
                UnlockDoors()
                loopDone = true
            end
        end
    end
end)

local listen = false
local function Listen4Control(case)
    listen = true
    CreateThread(function()
        while listen do
            if IsControlJustPressed(0, 38) then
                listen = false
                if not Config.Locations[case]["isBusy"] and not Config.Locations[case]["isOpened"] then
                    exports['qb-core']:KeyPressed()
                        if validWeapon() then
                            smashVitrine(case)
                        else
                            QBCore.Functions.Notify(Lang:t('error.wrong_weapon'), 'error')
                        end
                    else
                        exports['qb-core']:DrawText(Lang:t('general.drawtextui_broken'), 'left')
                    end
                end
            Wait(1)
        end
    end)
end

CreateThread(function()
    if Config.UseTarget then
        for k, v in pairs(Config.Locations) do
            exports["qb-target"]:AddBoxZone("istore" .. k, v.coords, 1, 1, {
                name = "istore" .. k,
                heading = 40,
                minZ = v.coords.z - 1,
                maxZ = v.coords.z + 1,
                debugPoly = false
            }, {
                options = {
                    {
                        type = "client",
                        icon = "fa fa-hand",
                        label = Lang:t('general.target_label'),
                        action = function()
                            if validWeapon() then
                                smashVitrine(k)
                            else
                                QBCore.Functions.Notify(Lang:t('error.wrong_weapon'), 'error')
                            end
                        end,
                        canInteract = function()
                            if v["isOpened"] or v["isBusy"] then
                                return false
                            end
                            return true
                        end,
                    }
                },
                distance = 1.5
            })
        end
    else
        for k, v in pairs(Config.Locations) do
            local boxZone = BoxZone:Create(v.coords, 1, 1, {
                name="istore"..k,
                heading = 40,
                minZ = v.coords.z - 1,
                maxZ = v.coords.z + 1,
                debugPoly = false
            })
            boxZone:onPlayerInOut(function(isPointInside)
                if isPointInside then
                    Listen4Control(k)
                    exports['qb-core']:DrawText(Lang:t('general.drawtextui_grab'), 'left')
                else
                    listen = false
                    exports['qb-core']:HideText()
                end
            end)
        end
    end
end)

CreateThread(function()
    if Config.UseTarget then
        for k, v in pairs(Config.Thermite) do
            exports['qb-target']:AddBoxZone("istorethermite" .. k, v.coords, 0.4, 0.8, {
            name = "istorethermite" .. k,
            heading = v.h, -- 300.0
            debugPoly = false,
            minZ= v.minZ, -- 50.12
            maxZ= v.maxZ, -- 51.32
            }, {
                options = {
                    {
                    type = "client",
                    icon = 'fas fa-bug',
                    label = 'Blow Fuse Box',
                    item = 'thermite',
                    action = function()
                        thermiteHack(k)
                    end
                    }
                },
                distance = 2.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
            })
        end
    end
end)

CreateThread(function()
    if Config.UseTarget then
        for k, v in pairs(Config.Hacks) do
            exports['qb-target']:AddBoxZone("istorepc" .. k, v.coords, 0.4, 0.6, {
            name = "istorepc" .. k,
            heading = v.h, -- 37.0
            debugPoly = false,
            minZ= v.minZ, -- 37.56
            maxZ= v.maxZ, -- 38.56
            }, {
                options = {
                    {
                    type = "client",
                    event = "p2rp-techtwo:client:pchack",
                    icon = 'fas fa-bug',
                    label = 'Hack Security System',
                    item = 'phone',
                    }
                },
                distance = 2.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
            })
        end
    end
end)
