local QBCore = exports['qb-core']:GetCoreObject()

local camp = false
local camping = false

debugCommand = false

local prevtent = 0
local prevfire = 0
RegisterNetEvent('p2rp-camping:campfire')
AddEventHandler('p2rp-camping:campfire', function()
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("prop_beach_fire"), x+3.2, y+0.4, z+0.2, true, false, true)
    if prevfire ~= 0 then
        SetEntityAsMissionEntity(prevfire)
        DeleteObject(prevfire)
        prevfire = 0
    end
    TaskStartScenarioInPlace(PlayerPedId(), 'world_human_gardener_plant', -1, false)
        prevfire = prop
        ClearPedTasksImmediately(PlayerPedId())
	
end)

if debugCommand then
    RegisterCommand('setupcamp', function(source, args, rawCommand)
        QBCore.Functions.TriggerCallback('camp:item', function(hasitem)
            if hasitem >= 1 then
                if prevtent ~= 0 then
                    SetEntityAsMissionEntity(prevtent)
                    DeleteObject(prevtent)
                    prevtent = 0
                end
                local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.95))
                local tents = {
                    'prop_skid_tent_01',
                    'prop_skid_tent_01b',
                    'prop_skid_tent_03',
                }
                local randomint = math.random(1,3)
                local tent = GetHashKey(tents[randomint])
                local prop = CreateObject(tent, x, y, z, true, false, true)
                OpenCamp() -- Functions
                prevtent = prop
                ClearPedTasksImmediately(PlayerPedId())
                TriggerEvent('p2rp-camping:campfire')
                camping = true


            else 
                QBCore.Functions.Notify("You need camping gear to camp!","error")
            end
        end)
    end, false)
end                   
      
RegisterNetEvent("p2rp-camping:client:UseCampingKit")
AddEventHandler("p2rp-camping:client:UseCampingKit", function()
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["camp"], "remove")
    TriggerEvent('chatMessage', "SYSTEM", "error", "/takedowntent to pack up your campsite!")
    if prevtent ~= 0 then
        SetEntityAsMissionEntity(prevtent)
        DeleteObject(prevtent)
        prevtent = 0
    end
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.95))
    
    local prop = CreateObject(GetHashKey("prop_skid_tent_01"), x, y, z, true, false, true)
    OpenCamp() -- Functions
    prevtent = prop
    ClearPedTasksImmediately(PlayerPedId())
    TriggerEvent('p2rp-camping:campfire')
    camping = true
end)

RegisterCommand('takedowntent', function(source, args, rawCommand)
    if prevtent ~= 0 then
        local playerCoords = GetEntityCoords(PlayerPedId(), 0)
        local closestTent = GetClosestObjectOfType(playerCoords.x, playerCoords.y, playerCoords.z, 3.0, GetHashKey("prop_skid_tent_01"), false, 0, 0)
        local tentCoords = GetEntityCoords(closestTent)
        local tentDist = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, tentCoords.x, tentCoords.y, tentCoords.z, true)

        print(tentDist)

        if tentDist <= 3.0 then
            CloseCamp()
            SetEntityAsMissionEntity(prevtent)
            DeleteObject(prevtent)
            prevtent = 0
            TriggerEvent('p2rp-camping:campfiredel')
            ClearPedTasksImmediately(PlayerPedId())
            TriggerServerEvent("p2rp-camping:server:giveBackTent")
            camping = false
        else
            QBCore.Functions.Notify("You are too far away from your tent, we know of no black magic here!","error")
        end
    end
end, false)



RegisterNetEvent('p2rp-camping:campfiredel')
AddEventHandler('p2rp-camping:campfiredel', function()
    if prevfire == 0 then
        --TriggerEvent('chatMessage', '', {255,255,255}, '^8Error: ^0no previous campfire spawned, or your previous campfire has already been deleted.')
    else
        SetEntityAsMissionEntity(prevfire)
        DeleteObject(prevfire)
        prevfire = 0
    end
end)

---------------------------------
function OpenCamp()
    TaskStartScenarioInPlace(PlayerPedId(), "world_human_gardener_plant", 0, true)
    QBCore.Functions.Progressbar("setup_camp", "Setting up camp..", 30000, false, false, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done

    end, function() -- Cancel

    end)
    Citizen.Wait(30000)
    QBCore.Functions.Notify("Camp successfully setup.", "success")
    ClearPedTasks(PlayerPedId())
end
function CloseCamp()
    TaskStartScenarioInPlace(PlayerPedId(), "world_human_gardener_plant", 0, true)
    QBCore.Functions.Progressbar("pack_up_camp", "Packing up camp...", 30000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done

    end, function() -- Cancel

    end)
    Citizen.Wait(30000)
    QBCore.Functions.Notify("Camp successfully packed up.", "success")
    ClearPedTasks(PlayerPedId())
end
----------------------------------
local warmth_anim = false

Citizen.CreateThread(function()
    while true do
        if camping == true then
            Citizen.Wait(10)
            if IsNearFire() then
                SetPlayerHealthRechargeMultiplier(PlayerId(), 1.8)
                if not warmth_anim then
                    TriggerEvent('animations:client:EmoteCommandStart', {"warmth"})
                    warmth_anim = true
                end
            else
                SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0)
                if warmth_anim then
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    warmth_anim = false
                end
            end
        else
            Citizen.Wait(1000)
        end
    end
end)

function IsNearFire()
    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)
    local closestObj = GetClosestObjectOfType(plyCoords.x, plyCoords.y, plyCoords.z, 3.0, GetHashKey("prop_beach_fire"), false, 0, 0)
    local objCoords = GetEntityCoords(closestObj)

    if closestObj ~= 0 then
        local dist = GetDistanceBetweenCoords(plyCoords.x, plyCoords.y, plyCoords.z, objCoords.x, objCoords.y, objCoords.z, true)
        if dist <= 2.5 then
            return true
        end
    end
    return false
end