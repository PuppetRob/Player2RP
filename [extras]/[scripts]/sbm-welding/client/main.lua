-- Variables

local QBCore = exports['qb-core']:GetCoreObject()
local Welding = false
local SucceededAttempts = 0
local NeededAttempts = 4

-- Functions

local function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


local function GetClosestPlayer()
    local closestPlayers = QBCore.Functions.GetPlayersFromCoords()
    local closestDistance = -1
    local closestPlayer = -1
    local coords = GetEntityCoords(PlayerPedId())

    for i=1, #closestPlayers, 1 do
        if closestPlayers[i] ~= PlayerId() then
            local pos = GetEntityCoords(GetPlayerPed(closestPlayers[i]))
            local distance = #(pos - coords)

            if closestDistance == -1 or closestDistance > distance then
                closestPlayer = closestPlayers[i]
                closestDistance = distance
            end
        end
	end
	return closestPlayer, closestDistance
end


--[[ local function PoliceCall()
    local chance = 20
    if math.random(1, 100) <= chance then
        local data = exports['cd_dispatch']:GetPlayerInfo()
        TriggerServerEvent('cd_dispatch:triggerEverything', exports['cd_dispatch']:GetPlayerInfo(), nil, "police", "Alerta furt otel", "Cineva  a raportat persoane care fura otel pe strada "..data.street_1, "Furt otel")    
    end
end ]]

local function CutIron(point)
    local ped = PlayerPedId()
    local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
    QBCore.Functions.TriggerCallback('p2rp-welding:server:HasItems', function(result)
        if result then
            TriggerServerEvent('p2rp-welding:server:RemoveItem', point)
                TriggerServerEvent('p2rp-welding:server:SetBusyState', point, true)
                FreezeEntityPosition(ped, true)
                TriggerEvent('animations:client:EmoteCommandStart', {"weld"})
              --  PoliceCall()
                Welding = true
                        Skillbar.Start({
                            duration = math.random(7500, 15000),
                            pos = math.random(20, 40),
                            width = math.random(20, 40),
                        }, function()
                            if SucceededAttempts + 1 >= NeededAttempts then
                                Welding = false
                                ClearPedTasks(PlayerPedId())
                                TriggerServerEvent('p2rp-welding:server:searchCheckpoint', point)
                                Config.Checkpoints[point]["opened"] = true
                                TriggerServerEvent('p2rp-welding:server:SetBusyState', point, true)
                                SucceededAttempts = 0
                                FreezeEntityPosition(ped, false)
                                SetTimeout(500, function()
                                    Welding = false
                                end)
                            else
                                Skillbar.Repeat({
                                    duration = math.random(700, 1250),
                                    pos = math.random(20, 40),
                                    width = math.random(20, 40),
                                })
                                SucceededAttempts = SucceededAttempts + 1
                            end
                        end, function()
                            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                            Welding = false
                            ClearPedTasks(PlayerPedId())
                            TriggerServerEvent('p2rp-welding:server:SetBusyState', point, false)
                            QBCore.Functions.Notify("Process Canceled..", "error")
                            SucceededAttempts = 0
                            FreezeEntityPosition(ped, false)
                            SetTimeout(500, function()
                                Welding = false
                            end)
                        end)  
        else
            QBCore.Functions.Notify("You are missing the Welding Tool or the Gas Tubes..", "error")
        end
    end)  
end



-- Events

RegisterNetEvent('p2rp-welding:client:SetBusyState', function(point, bool)
    Config.Checkpoints[point]["opened"]= bool
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('p2rp-welding:server:GetCheckpointsConfig', function(CheckpointsConfig)
        Config.Checkpoints = CheckpointsConfig
    end)
end)

-- Threads

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local check = true
        local sleep = 1500
        for k, v in pairs(Config.Checkpoints) do
            local player, distance = GetClosestPlayer()
            if distance > 1 or distance == -1 then
                check = true
            else
                check = false
            end
                if #(pos - Config.Checkpoints[k]["coords"]) < 1 then
                    sleep = 3
                    if not Config.Checkpoints[k]["opened"] then
                        DrawText3Ds(Config.Checkpoints[k]["coords"].x, Config.Checkpoints[k]["coords"].y, Config.Checkpoints[k]["coords"].z + 0.7, '~g~E~w~ - Cut the Metal ')
                            if IsControlJustReleased(0, 38) and check then
                                    Config.Checkpoints[k]["opened"]= false
                                    CutIron(k)
                            elseif  IsControlJustReleased(0, 38) and not check then
                                QBCore.Functions.Notify('Someone is too close to you..', 'error', 3500)
                            end
                    else
                        DrawText3Ds(Config.Checkpoints[k]["coords"].x, Config.Checkpoints[k]["coords"].y, Config.Checkpoints[k]["coords"].z + 0.7, 'Cut')
                    end
                end
        end
        Citizen.Wait(sleep)
    end
end)
