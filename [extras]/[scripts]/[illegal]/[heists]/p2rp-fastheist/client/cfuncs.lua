
local location = false
local attach = false
local krai = false
local slojeno = false
local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

local QBCore = exports['qb-core']:GetCoreObject()


PDFFRobberyCore['functions'] = {
    GetCarPositions = function(pos)
        local GetCarPositions, closestDist = 0, 999999.9
        for k, v in pairs(PDFFRobberyCore['config']['vehicles_spawn']) do
            local dist = #(pos - v)
            if dist < closestDist then
                closestDist, GetCarPositions = dist, k
            end
        end
        return GetCarPositions, closestDist
    end,

    GetClosestHeistEnd = function(pos)
        local GetClosestHeistEnd, closestDist = 0, 999999.9
        for k, v in pairs(PDFFRobberyCore['config']['heistEnd']) do
            local dist = #(pos - v)
            if dist < closestDist then
                closestDist, closestEnd = dist, k
            end
        end
        return closestHeistEnd, closestDist
    end,

    OpenNui = function(bool)
        display = bool
        SetNuiFocus(bool, bool)
        SendNUIMessage({
            type = "ui",
            status = bool
        })
    end,

    Minigame = function()
        exports["memorygame"]:thermiteminigame(6, 3, 3, 10,
        function() -- success
            RenderScriptCams(true, false, 1, true, true)
            SetCamCoord(cam, -6.5, -689.34, 34.0)
            PDFFRobberyCore.functions.Spawn(true)
            TriggerEvent('p2rp-fastheist:heisttf', false)
            TriggerEvent('p2rp-fastheist:finall', true)
            exports['qb-target']:RemoveZone("shortcircuit")
        end,
        function() -- failure
            QBCore.Functions.Notify(PDFFRobberyCore['config'][Locales]['failed'], 'error', 2500)
        end)
    end,

    Spawn = function(isHeist)
        if isHeist then
            TriggerEvent('p2rp-fastheist:explode')
            Citizen.Wait(500)
            local container = CreateObject(GetHashKey(PDFFRobberyCore['config']['props'][1]),
                PDFFRobberyCore['config']['container_spawn'][1], true, true)
            NetworkRequestControlOfEntity(container)
            local con = NetworkGetNetworkIdFromEntity(container)
            containerId = con
            Wait(4000)
            DestroyCam(cam, true)
            RenderScriptCams(false, false, 1, false, true)
            cam = nil
            TriggerServerEvent('p2rp-fastheist:server:policeAlert', PDFFRobberyCore['config']['Alert']['pos'])
            exports['qb-target']:AddBoxZone("container_attach", vector3(-6.45, -661.99, 32.34), 2.6, 2, {
                name = "container_attach",
                heading = 350,
                --debugPoly = true,
            }, {
                options = {
                    {
                        
                        event = 'p2rp-fastheist:client:final',
                        icon = "fas fa-rope",
                        label = "Attach the ropes",
                        job = "all",
                    },
                },
                distance = 2.5
            })
            while true do
                Wait(0)
                if krai then
                    DeleteObject(container)
                end
                while true do
                    Wait(0)
                    if slojeno then
                        SetEntityHasGravity(container, true)
                    end
                end
            end
        end

        if not isHeist then
            local vehicle = CreateVehicle(GetHashKey(PDFFRobberyCore['config']['vehicle'][1]),
                PDFFRobberyCore['config']['vehicles_spawn'][1], 188.0, true, true)
            local vehicle2 = CreateVehicle(GetHashKey(PDFFRobberyCore['config']['vehicle'][1]),
                PDFFRobberyCore['config']['vehicles_spawn'][2], 188.0, true, true)

                TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(vehicle))
                TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(vehicle2))

            NetworkRequestControlOfEntity(vehicle)
            NetworkRequestControlOfEntity(vehicle2)

            local veh = NetworkGetNetworkIdFromEntity(vehicle)
            vehh1 = veh
            local veh2 = NetworkGetNetworkIdFromEntity(vehicle2)
            vehh2 = veh2 
            QBCore.Functions.Notify(PDFFRobberyCore['config'][Locales]['start_heist'], 'success', 5000)

            Vehicle1Blip = AddBlipForCoord(PDFFRobberyCore['config']['vehicles_spawn'][1])
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString("Vehicle 1")
            EndTextCommandSetBlipName(Vehicle1Blip)

            Vehicle2Blip = AddBlipForCoord(PDFFRobberyCore['config']['vehicles_spawn'][2])
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString("Vehicle 2")
            EndTextCommandSetBlipName(Vehicle2Blip)
            

            while true do
                Wait(0)
                if location then
                    TriggerServerEvent('p2rp-fastheist:ropeSync', veh, veh2, containerId)
                    slojeno = true
                    break
                end
            end
        end
    end,


    Check1 = function()
        QBCore.Functions.TriggerCallback('p2rp-fastheist:server:checkPoliceCount', function(status)
            if status then
                QBCore.Functions.TriggerCallback('p2rp-fastheist:server:checkTime', function(time)
                    if time then
     PDFFRobberyCore.functions.Spawn(false)
                    end
                end)
            end
        end)
    end,


    Final = function()
        local playerPed = PlayerPedId()
        local currentPos = GetEntityCoords(playerPed)
        location = true 
        TriggerEvent('p2rp-fastheist:guards')
        SetNewWaypoint(-759.36, -1476.47)
        exports['qb-target']:AddBoxZone("deliveryfinal", vector3(3416.16, 5499.48, 25.81), 1, 1, {
            name = "deliveryfinal",
            heading=330,
            --debugPoly=true,
            minZ=4.0,
            maxZ=6.4
        }, {
            options = {
                {
                    
                    event = 'p2rp-fastheist:client:deliver',
                    icon = "fas fa-container",
                    label = "Deliver the container",
                    job = "all",
                },
            },
            distance = 2.5
        })
    end,

    Finish = function()
      krai = true
      exports['qb-target']:RemoveZone("deliveryfinal")
    end,

    NextPoint = function()
        if DoesBlipExist(Vehicle1Blip) then
            RemoveBlip(Vehicle1Blip)
        end
        if DoesBlipExist(Vehicle2Blip) then
            RemoveBlip(Vehicle2Blip)
        end

        QBCore.Functions.Notify(PDFFRobberyCore['config'][Locales]['find_cars'], 'success', 2500)
        QBCore.Functions.Notify(PDFFRobberyCore['config'][Locales]['short_circuit'], 'success', 2500)
    
        exports['qb-target']:AddBoxZone("shortcircuit", vector3(27.73, -626.53, 14.96), 1.0, 1.6, {
            name = "shortcircuit",
            heading = 287,
            --debugPoly = true,
            minZ = 13.96,
            maxZ = 16.96
        }, {
            options = {
                {
                    
                    event = 'p2rp-fastheist:shortcircuit',
                    icon = "fas fa-utility-pole",
                    label = "Make short circuit",
                    job = "all",
                },
            },
            distance = 2.5
        })
        SetNewWaypoint(PDFFRobberyCore['config']['container_spawn'][1].x, PDFFRobberyCore['config']['container_spawn'][1].y)
    end
}




