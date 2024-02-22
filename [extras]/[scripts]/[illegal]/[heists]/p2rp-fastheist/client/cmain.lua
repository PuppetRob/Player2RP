local QBCore = exports['qb-core']:GetCoreObject()

local closetocar = false
local heist = false
local final = false
CreateThread(function()
    for k, v in pairs(PDFFRobberyCore['config']['props']) do
        RequestModel(GetHashKey(v))
        while not HasModelLoaded(GetHashKey(v)) do
            Wait(1)
        end
    end

    for k, v in pairs(PDFFRobberyCore['config']['vehicle']) do
        RequestModel(GetHashKey(v))
        while not HasModelLoaded(GetHashKey(v)) do
            Wait(1)
        end
    end
end)

RegisterNetEvent('p2rp-fastheist:rope')
AddEventHandler('p2rp-fastheist:rope', function(veh, veh2, con)
    NetworkRequestControlOfEntity(veh)
    NetworkRequestControlOfEntity(veh2)
    NetworkRequestControlOfEntity(con)

    local vehh = NetworkGetEntityFromNetworkId(veh)
    local vehh2 = NetworkGetEntityFromNetworkId(veh2)
    local conn = NetworkGetEntityFromNetworkId(con)

    local ropec1 = GetEntityCoords(vehh)
    local ropec2 = GetEntityCoords(vehh2)
    RopeLoadTextures()

    local rope = AddRope(ropec1, 1.0, 0.0, 0.0, 20.0, 1, 15.0, 5.0, 0, 0, 0, 0, 1.0,
        0, 0)
    local rope2 = AddRope(ropec2, 1.0, 0.0, 0.0, 20.0, 1, 15.0, 5.0, 0, 0, 0, 0,
        1.0, 0, 0)

    AttachEntitiesToRope(rope, vehh, conn, ropec1,
        PDFFRobberyCore['config']['container_spawn'][1], 20.0, 0, 0, PDFFRobberyCore['config']['bones']['vehicle_bone'],
        PDFFRobberyCore['config']['bones']['container_bone'])
    AttachEntitiesToRope(rope2, vehh2, conn, ropec2,
        PDFFRobberyCore['config']['container_spawn'][1], 20.0, 0, 0, PDFFRobberyCore['config']['bones']['vehicle_bone'],
        PDFFRobberyCore['config']['bones']['container_bone'])
end)

RegisterNetEvent('p2rp-fastheist:explode')
AddEventHandler('p2rp-fastheist:explode', function()
    car = CreateVehicle(GetHashKey(PDFFRobberyCore['config']['vehicle'][1]), -6.49, -655.15, 30.45, 184, true, false)
    car2 = CreateVehicle(GetHashKey(PDFFRobberyCore['config']['vehicle'][1]), -10.51, -661.47, 30.4, 184, true, false)
    car3 = CreateVehicle(GetHashKey(PDFFRobberyCore['config']['vehicle'][1]), -2.67, -659.5, 30.4, 184, true, false)
    NetworkExplodeVehicle(car, true, true, 0)
    NetworkExplodeVehicle(car2, true, true, 0)
    NetworkExplodeVehicle(car3, true, true, 0)
    Citizen.Wait(100)
    DeleteEntity(car3)
    DeleteEntity(car2)
    DeleteEntity(car)
end)

-- START
CreateThread(function()
    exports['qb-target']:AddBoxZone("startheist", vector3(1268.42, -1711.6, 54.77), 1, 1, {
        name = "startheist",
        heading = 295,
        --debugPoly = true,
        minZ = 51.97,
        maxZ = 55.97
    }, {
        options = {
            {
                
                event = 'p2rp-fastheist:openNui',
                icon = "fas fa-table",
                label = "Start the heist",
                job = "all",
            },
        },
        distance = 2.5
    })
end)

RegisterNetEvent('p2rp-fastheist:openNui')
AddEventHandler('p2rp-fastheist:openNui', function()
    PDFFRobberyCore['functions'].OpenNui(true)
end)

RegisterNetEvent('p2rp-fastheist:client:final')
AddEventHandler('p2rp-fastheist:client:final', function()
    PDFFRobberyCore['functions'].Final()
    exports['qb-target']:RemoveZone("container_attach")
end)

RegisterNUICallback("starting", function(data)
    PDFFRobberyCore['functions'].OpenNui(false)
    closetocar = true
    PDFFRobberyCore.functions.Check1()
end)
-- START

-- CLOSE TO CAR
CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local GetCarPositions, closestDist = PDFFRobberyCore['functions'].GetCarPositions(pos)
        local waitTime = 300

        if closetocar and closestDist  < 10.0 then
            PDFFRobberyCore.functions.NextPoint()
            heist = true 
            waitTime = 3
            closetocar = false
        end

        Wait(waitTime)
    end
end)
-- CLOSE TO CAR

-- MINIGAME
RegisterNetEvent('p2rp-fastheist:shortcircuit')
AddEventHandler('p2rp-fastheist:shortcircuit', function()
PDFFRobberyCore.functions.Minigame()
end)



RegisterNetEvent('p2rp-fastheist:heisttf')
AddEventHandler('p2rp-fastheist:heisttf', function(trfs)
    heist = trfs
end)

RegisterNetEvent('p2rp-fastheist:finall')
AddEventHandler('p2rp-fastheist:finall', function(finalee)
    final = finalee
end)

-- MINIGAME


--FINAL

NPCMission = {{
    x = 3416.16,
    y = 5499.48,
    z = 25.81,
    heading = 55.669291,
    guard = true
   
}, {
    x = 3414.68,
    y = 5505.18,
    z = 26.25,
    heading = 83.5,
    guard = true
}, { 
    x = 3413.89,
    y = 5506.86,
    z = 26.25,
    heading = 106.307098,
    guard = true
}}

NPCMissionSeller = {
    [1] = vector3(3414.09, 5503.17, 25.24)
}

local spawnedNPC = {}
local spawnedProps = {}

RegisterNetEvent('p2rp-fastheist:guards')
AddEventHandler('p2rp-fastheist:guards', function()
    RequestModel(0xF161D212)
    while not HasModelLoaded(0xF161D212) do
        Citizen.Wait(0)
    end

    for _, item in pairs(NPCMission) do
        local npc = CreatePed(4, 0xF161D212, item.x, item.y, item.z, item.heading, false, true)
        table.insert(spawnedNPC, npc)
        if item.guard then
            SetBlockingOfNonTemporaryEvents(npc, true)
            SetPedDiesWhenInjured(npc, false)
            SetPedCanPlayAmbientAnims(npc, true)
            SetPedCanRagdollFromPlayerImpact(npc, false)
            SetEntityInvincible(npc, true)
            FreezeEntityPosition(npc, true)
            GiveWeaponToPed(npc, GetHashKey("WEAPON_ASSAULTRIFLE"), 250, true, false)
            SetCurrentPedWeapon(npc, GetHashKey("WEAPON_ASSAULTRIFLE"), true)
        end
        if not item.guard then
            SetBlockingOfNonTemporaryEvents(npc, true)
            SetPedDiesWhenInjured(npc, false)
            SetPedCanPlayAmbientAnims(npc, true)
            SetPedCanRagdollFromPlayerImpact(npc, false)
            SetEntityInvincible(npc, true)
            FreezeEntityPosition(npc, true)
            for pd = 1, #NPCMissionSeller do
                Citizen.Wait(6000)
                local suitcase = CreateObject(GetHashKey("prop_gun_case_01"), vector3(NPCMissionSeller[pd].x,
                    NPCMissionSeller[pd].y, NPCMissionSeller[pd].z), false, true, true)
                table.insert(spawnedProps, suitcase)
                AttachEntityToEntity(suitcase, npc, GetPedBoneIndex(npc, 57005), 0.10, 0.0, 0.0, 0.0, 20.0, -110.0,
                    false, false, true, false, 2, true)
            end
        end
    end
end)



RegisterNetEvent('p2rp-fastheist:client:deliver')
AddEventHandler('p2rp-fastheist:client:deliver', function()
    TriggerServerEvent('p2rp-fastheist:server:sell')
    Wait(10000)
    PDFFRobberyCore.functions.Finish()
    DeleteSpawnedPeds()
    DeleteSpawnedProps()
end)



-- FINAL


function DeleteSpawnedPeds()
    while #spawnedNPC > 0 do
        local npc = spawnedNPC[1]
        DeleteEntity(npc)
        table.remove(spawnedNPC, 1)
    end
end

function DeleteSpawnedProps()
    while #spawnedProps > 0 do
        local prop = spawnedProps[1]
        DeleteEntity(prop)
        table.remove(spawnedProps, 1)
    end
end




function DrawText3D(x, y, z, text)
    SetTextScale(0.3, 0.3)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 400
    DrawRect(0.0, 0.0 + 0.0110, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

RegisterNUICallback("exit", function(data)
    PDFFRobberyCore['functions'].OpenNui(false)
end)

RegisterNetEvent('p2rp-fastheist:client:policeAlert')
AddEventHandler('p2rp-fastheist:client:policeAlert', function(targetCoords)
    QBCore.Functions.Notify(PDFFRobberyCore['config'][Locales]['police_alert'], 'error', 2500)
    local alpha = 250
    local VaultAlert = AddBlipForRadius(targetCoords.x, targetCoords.y, targetCoords.z, 50.0)

    SetBlipHighDetail(VaultAlert, true)
    SetBlipColour(VaultAlert, 1)
    SetBlipAlpha(VaultAlert, alpha)
    SetBlipAsShortRange(VaultAlert, true)

    while alpha ~= 0 do
        Citizen.Wait(500)
        alpha = alpha - 1
        SetBlipAlpha(VaultAlert, alpha)

        if alpha == 0 then
            RemoveBlip(VaultAlert)
            return
        end
    end
end)