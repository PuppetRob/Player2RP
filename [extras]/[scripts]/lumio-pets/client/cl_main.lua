local Core = Config.Core.core
Core = exports[Config.Core.name]:GetCoreObject()

local spawnDistanceRadius = 1.0
local companion = nil
local animalSpawnedType = nil
local following = false
local ball = nil
local searchball = false
local isAttached = false
local getball = false
local animalId = nil

animalSpawned = false
companionname = nil

PlayerData = Core.Functions.GetPlayerData()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = Core.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
end)

CreateThread(function()
    local blip = AddBlipForCoord(Config.Store.blipcoords)
    SetBlipSprite(blip, Config.Store.blipsprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, Config.Store.blipscale)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, Config.Store.blipcolor)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.Store.bliplabel)
    EndTextCommandSetBlipName(blip)
end)

CreateThread(function()
    if not Config.UseTarget then
        while true do
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local dist = #(pos - Config.Store.storelocation)

            inRange = false

            if dist < 20 then
                inRange = true
                if #(pos - vector3(Config.Store.storelocation.x, Config.Store.storelocation.y, Config.Store.storelocation.z)) < 1.5 then
                    DrawText3Ds(Config.Store.storelocation, '~g~E~w~ - '..Translations.main['open_store'])
                    if IsControlJustPressed(0, 38) then
                        TriggerEvent('lumio-pets:client:shopmenu')
                    end
                end
            end

            if not inRange then
                Wait(1000)
            end
            Wait(0)
        end
    end
end)

CreateThread(function()
    if Config.UseTarget then
        for k,v in pairs(Config.Peds) do
            RequestModel(v.name)
            while not HasModelLoaded(v.name) do
                Wait(1)
            end

            if not v.spawned then
                k = CreatePed(2, v.name, v.pos, false, false)
                FreezeEntityPosition(k, true)
                SetEntityInvincible(k, true)
                SetPedFleeAttributes(k, 0, 0)
                SetBlockingOfNonTemporaryEvents(k, true)
                SetModelAsNoLongerNeeded(k)
                v.spawned = true
            end

            exports['qb-target']:AddTargetEntity(k, {
                options = {
                    {
                        type = client,
                        event = v.event,
                        icon = v.targetIcon,
                        label = v.targetLabel,
                    }
                },
                distance = 2.5,
            })
        end
    end
end)

RegisterNetEvent('lumio-pets:client:spawn', function(data)
    if not animalSpawned then
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local hash = GetHashKey(data.spawnname)
        local spawnX = math.random(-spawnDistanceRadius,spawnDistanceRadius)
        local spawnY = math.random(-spawnDistanceRadius,spawnDistanceRadius)
        local spawnLoc = vector3(coords.x + spawnX, coords.y + spawnY, coords.z -1.0)

        if data.health ~= 0 then
            LoadModel(hash)

            if data.type == 'dog' then
                animalSpawnedType = 'dog'
            elseif data.type == 'cat' then
                animalSpawnedType = 'cat'
            elseif data.type == 'chicken' then
                animalSpawnedType = 'chicken'
            end

            TriggerEvent('animations:client:EmoteCommandStart', {"whistle"})

            local progressBarMessage = Translations.pbars['whistle_pet_pbar']
            Core.Functions.Progressbar("toggle_companion", progressBarMessage, 2000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                companion = CreatePed(28, hash, spawnLoc, true, true, true)
                SetEntityInvincible(companion, true)
                SetBlockingOfNonTemporaryEvents(companion, true)
                SetModelAsNoLongerNeeded(companion)
                animalSpawned = true
                companionname = data.spawnname
                animalId = data.petid

                if data.health <= 10 then
                    Core.Functions.Notify(data.name..' '..Translations.main['give_food'], "primary")
                end
                
                if Config.UseTarget then
                    exports['qb-target']:AddEntityZone("pet-"..companion, companion, {
                        name = "pet-"..companion,
                        heading = GetEntityHeading("pet-"..companion),
                        debugPoly = false,
                    }, {
                        options = {
                            {
                                type = "client",
                                event = "lumio-pets:client:mainmenu",
                                icon = "fas fa-dog",
                                label = Translations.target['interact'],
                            },
                            {
                                type = "client",
                                event = "lumio-pets:client:dopet",
                                icon = "fas fa-hand-holding-heart",
                                label = Translations.target['pet'],
                                canInteract = function()
                                    if companionname == 'a_c_husky' or companionname == 'a_c_retriever' or companionname == 'a_c_rottweiler' or companionname == 'a_c_shepherd' then return true end
                                    return false 
                                end,
                            },
                        },
                        distance = 2.5
                    })
                end
            end)
        else
            Core.Functions.Notify(data.name..' '..Translations.main['died_of_hunger'], "error")
        end
    else
        Core.Functions.Notify(data.name..' '..Translations.main['pet_too_far'], "error")
    end
end)

--Don't change otherwise i'll cry---------------------------------------------------------
RegisterNetEvent('lumio-pets:client:follow', function()
    if animalSpawned then
        if following then
            following = false
            ClearPedTasks(companion)
        else
            following = true
            ClearPedTasks(companion)
            TaskGoToEntity(companion, PlayerPedId(), -1, 1.0, 3.0, 1073741824, 0)
        end

        CreateThread(function()
            while following do
                local pos = GetEntityCoords(PlayerPedId())
                local petpos = GetEntityCoords(companion)
                local dist = #(petpos - pos)
                Wait(1)
                if dist <= 1.4 then
                    TaskGoToEntity(companion, PlayerPedId(), -1, 1.0, 3.0, 1073741824, 0)
                end
            end
        end)
    else
        Core.Functions.Notify(Translations.main['no_pet_around'], "error")
    end  
end)
--------------------------------------------------------------------------------------------

RegisterNetEvent('lumio-pets:client:wander', function()
    local pos = GetEntityCoords(companion)

    if animalSpawned then
        if following then
            following = false
            ClearPedTasks(companion)
        end

        TaskWanderInArea(companion, pos, 20.0, 2, 10.0)

    else
        Core.Functions.Notify(Translations.main['no_pet_around'], "error")
    end  
end)

RegisterNetEvent('lumio-pets:client:despawn', function()
    if animalSpawned then
        if #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(companion)) < 2.0 then
            TriggerEvent('animations:client:EmoteCommandStart', {"blowkiss2"})

            local progressBarMessage = Translations.pbars['send_pet_home_pbar']
            Core.Functions.Progressbar("toggle_companion", progressBarMessage, 1500, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                DeleteEntity(companion)
                Reset()
            end)
        else
            Core.Functions.Notify(Translations.main['pet_too_far'], "error")
        end
    else
        Core.Functions.Notify(Translations.main['no_pet_around'], "error")
    end 
end)

RegisterNetEvent('lumio-pets:client:ball', function()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)

    ball = GetClosestObjectOfType(pos, 150.0, GetHashKey('w_am_baseball'))

    if DoesEntityExist(ball) then
        following = false
        searchball = true

        objCoords = GetEntityCoords(ball)
        TaskGoToEntity(companion, ball, -1, 0.5, 3.0, 1073741824, 0)
        local GroupHandle = GetPlayerGroup(PlayerId())
        SetGroupSeparationRange(GroupHandle, 999999.9)
        SetPedNeverLeavesGroup(companion, true)
        SetPedAsGroupMember(companion, GroupHandle)
    else
        Core.Functions.Notify(Translations.main['no_ball'], "error")
    end
end)

CreateThread(function()
	while true do
        local ped = PlayerPedId()
		Wait(30)

		if searchball then
			local coords = GetEntityCoords(ped)
			local coordsPet = GetEntityCoords(companion)
            local distanceObj = #(objCoords - coordsPet)

			if distanceObj < 1.0 then
				local boneIndex = GetPedBoneIndex(companion, 17188)
				AttachEntityToEntity(ball, companion, boneIndex, 0.120, 0.010, 0.010, 5.0, 150.0, 0.0, true, true, false, true, 1, true)
				TaskGoToCoordAnyMeans(companion, coords, 5.0, 0, 0, 786603, 0xbf800000)
				searchball = false
				getball = true
			end
		end

		if getball then
			local coords = GetEntityCoords(ped)
			local coordsPet = GetEntityCoords(companion)
			local distance = #(coords - coordsPet)

			if distance < 1.5 then
				DetachEntity(ball,false,false)
				Wait(50)
				SetEntityAsMissionEntity(ball)
				DeleteEntity(ball)
                TriggerServerEvent("lumio-pets:server:itemAction", "weapon_ball", 1, "remove")
                
                local GroupHandle = GetPlayerGroup(PlayerId())
				SetGroupSeparationRange(GroupHandle, 999999.9)
				SetPedNeverLeavesGroup(companion, true)
				SetPedAsGroupMember(companion, GroupHandle)
				getball = false
			end
		end
	end
end)

RegisterNetEvent('lumio-pets:client:doanimation', function(data)
    following = false
    if data.scenario then
        TaskStartScenarioInPlace(companion, data.scenName)
        SetPedKeepTask(companion, true)
    else
        RequestAnimDict(data.animDict)
        while not HasAnimDictLoaded(data.animDict) do
            Wait(0)
        end
        TaskPlayAnim(companion, data.animDict, data.animName, 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)

RegisterNetEvent('lumio-pets:client:cancelanim', function()
    following = false
    ClearPedTasks(companion)
end)

RegisterNetEvent('lumio-pets:client:car', function()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    local sitType = nil
    local seatcoords = nil

    ClearPedTasks(companion)
    following = false

    if not inVehicle then
        if companionname == 'a_c_retriever' or companionname == 'a_c_husky' or companionname == 'a_c_rottweiler' then
            sitType = 'WORLD_DOG_SITTING_SHEPHERD'
        elseif companionname == 'a_c_pug' or companionname == 'a_c_poodle' or companionname == 'a_c_westy' then
            sitType = 'WORLD_DOG_SITTING_SMALL'
        else
            sitType = 'WORLD_CAT_SLEEPING_LEDGE'
        end

        if GetVehicleNumberOfWheels(vehicle) >= 4 then
            if IsVehicleSeatFree(vehicle, 1) then
                inVehicle = true
                seatcoords = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, 'door_dside_r'))
                TaskGoToCoordAnyMeans(companion, seatcoords.x, seatcoords.y, seatcoords.z, 1.5, false, false, 1.0, 1.0)
                SetVehicleDoorOpen(vehicle, 2, false, false)
                Wait(5000)
                AttachEntityToEntity(companion, vehicle, GetEntityBoneIndexByName(vehicle, 'seat_dside_r'), 0.0, -0.3, 0.35, 0, 0, 0, false, false, false, false, 0, false)
                TaskStartScenarioInPlace(companion, sitType)
                SetPedKeepTask(companion, true)
                SetVehicleDoorShut(vehicle, 2, false)
            elseif not IsVehicleSeatFree(vehicle, 1) and IsVehicleSeatFree(vehicle, 2) then
                inVehicle = true
                seatcoords = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, 'door_pside_r'))
                TaskGoToCoordAnyMeans(companion, seatcoords.x, seatcoords.y, seatcoords.z, 1.5, false, false, 1.0, 1.0)
                SetVehicleDoorOpen(vehicle, 3, false, false)
                Wait(5000)
                AttachEntityToEntity(companion, vehicle, GetEntityBoneIndexByName(vehicle, 'seat_pside_r'), 0.0, -0.3, 0.35, 0, 0, 0, false, false, false, false, 0, false)
                TaskStartScenarioInPlace(companion, sitType)
                SetPedKeepTask(companion, true)
                SetVehicleDoorShut(vehicle, 3, false)
            elseif not IsVehicleSeatFree(vehicle, 1) and not IsVehicleSeatFree(vehicle, 2) and IsVehicleSeatFree(vehicle, 0) then
                inVehicle = true
                seatcoords = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, 'door_pside_f'))
                TaskGoToCoordAnyMeans(companion, seatcoords.x, seatcoords.y, seatcoords.z, 1.5, false, false, 1.0, 1.0)
                SetVehicleDoorOpen(vehicle, 1, false, false)
                Wait(5000)
                AttachEntityToEntity(companion, vehicle, GetEntityBoneIndexByName(vehicle, 'seat_pside_f'), 0.0, -0.3, 0.35, 0, 0, 0, false, false, false, false, 0, false)
                TaskStartScenarioInPlace(companion, sitType)
                SetPedKeepTask(companion, true)
                SetVehicleDoorShut(vehicle, 1, false)
            else
                Core.Functions.Notify(Translations.main['no_place_in_vehicle'], "error")
            end
        else
            Core.Functions.Notify(Translations.main['not_safe_on_bike'], "error")
        end
    else
        TaskLeaveVehicle(companion, vehicle, 131072)
        SetPedKeepTask(companion, true)
        inVehicle = false
    end
end)

RegisterNetEvent('lumio-pets:client:locate', function()
    local blip = AddBlipForEntity(companion)
    
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.9)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 2)
    SetBlipFlashes(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Translations.main['pet_location_blip'])
    EndTextCommandSetBlipName(blip)

    Wait(15000)
    RemoveBlip(blip)
end)

RegisterNetEvent('lumio-pets:client:setfood', function(foodtype)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped) 
    local forward = GetEntityForwardVector(ped)
    local x, y, z = table.unpack(pos + forward * 0.75)
    local prop = 'prop_peanut_bowl_01'
    local bowl = nil
    local walking = false

    if animalSpawned then
        if animalSpawnedType == 'dog' and foodtype == 'dog' then
            walking = true
            TriggerServerEvent("lumio-pets:server:itemAction", "dogfood", 1, "remove")
            TriggerEvent('animations:client:EmoteCommandStart', {"kneel3"})
            Wait(2500)
            bowl = CreateObject(prop, x, y, z, true, false, true)
            PlaceObjectOnGroundProperly(bowl)
            ClearPedTasks(ped)
            TaskGoToEntity(companion, bowl, -1, 0.5, 1.0, 1073741824, 0)
            TaskLookAtEntity(companion, bowl, 15000, 2048, 3)

            while walking do
                if IsEntityTouchingEntity(companion, bowl) then
                    walking = false
                    Wait(1000 * 10)
                    DeleteObject(bowl)
                    TriggerServerEvent('lumio-pets:server:updatestats', animalId)
                end
                Wait(100)
            end

        elseif animalSpawnedType == 'cat' and foodtype == 'cat' then
            walking = true
            TriggerServerEvent("lumio-pets:server:itemAction", "catfood", 1, "remove")
            TriggerEvent('animations:client:EmoteCommandStart', {"kneel3"})
            Wait(2500)
            bowl = CreateObject(prop, x, y, z, true, false, true)
            PlaceObjectOnGroundProperly(bowl)
            ClearPedTasks(ped)
            TaskGoToEntity(companion, bowl, -1, 0.4, 2.0, 1073741824, 0)
            TaskLookAtEntity(companion, bowl, 15000, 2048, 3)

            while walking do
                if IsEntityTouchingEntity(companion, bowl) then
                    walking = false
                    Wait(1000 * Config.EatTime)
                    DeleteObject(bowl)
                    TriggerServerEvent('lumio-pets:server:updatestats', animalId)
                    Wait(100)
                end
                Wait(100)
            end
        elseif animalSpawnedType == 'chicken' and foodtype == 'chicken' then
            walking = true
            TriggerServerEvent("lumio-pets:server:itemAction", "chickenfood", 1, "remove")
            TriggerEvent('animations:client:EmoteCommandStart', {"kneel3"})
            Wait(2500)
            bowl = CreateObject(prop, x, y, z, true, false, true)
            PlaceObjectOnGroundProperly(bowl)
            ClearPedTasks(ped)
            TaskGoToEntity(companion, bowl, -1, 0.2, 2.0, 1073741824, 0)
            TaskLookAtEntity(companion, bowl, 15000, 2048, 3)

            while walking do
                if IsEntityTouchingEntity(companion, bowl) then
                    walking = false
                    Wait(1000 * Config.EatTime)
                    DeleteObject(bowl)
                    TriggerServerEvent('lumio-pets:server:updatestats', animalId)
                    Wait(100)
                end
                Wait(100)
            end
        else
            Core.Functions.Notify(Translations.main['wrong_food'], "error")
        end
    else
        Core.Functions.Notify(Translations.main['no_pet_around'], "error")
    end
end)

RegisterNetEvent('lumio-pets:client:dopet', function()
    local ped = PlayerPedId()
    local h = GetEntityHeading(ped)
    local pos = GetEntityCoords(ped)
    local forwardVector = GetEntityForwardVector(ped)
    local forwardPos = vector3(pos["x"] + forwardVector["x"], pos["y"] + forwardVector["y"], pos["z"] - 1.0)
    
    SetEntityCoords(companion, forwardPos)
    SetEntityHeading(companion, h - 180)

    loadAnimDict('creatures@rottweiler@tricks@')
    TaskPlayAnim(ped, 'creatures@rottweiler@tricks@', "petting_franklin", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
    TaskPlayAnim(companion, 'creatures@rottweiler@tricks@', "petting_chop", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
    Wait(3500)
    ClearPedTasksImmediately(ped)
end)

RegisterNetEvent('lumio-pets:client:allhealthy', function()
    Core.Functions.Notify(Translations.main['congrats'], "success")
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

function Reset()
    following = false
    animalSpawned = false
    searchball = false
    isAttached = false
    getball = false
    companion = nil
    animalSpawnedType = nil
    animalId = nil
    companionname = nil
    ball = nil
end

function LoadModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Wait(1)
    end
end

DrawText3Ds = function(coords, text)
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(true)
	AddTextComponentString(text)
	SetDrawOrigin(coords.x, coords.y, coords.z, 0)
	DrawText(0.0, 0.0)
	local factor = (string.len(text)) / 370
	DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
	ClearDrawOrigin()
end