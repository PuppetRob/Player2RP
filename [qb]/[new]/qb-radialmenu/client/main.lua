QBCore = exports['qb-core']:GetCoreObject()
PlayerData = QBCore.Functions.GetPlayerData() -- Setting this for when you restart the resource in game
local inRadialMenu = false

-- Functions

local function setupSubItems()
    if PlayerData.metadata["isdead"] then
        if PlayerData.job.name == "police" or PlayerData.job.name == "ambulance" then
            if not Config.MenuItems[4] then
                Config.MenuItems[4] = {
                    id = 'jobinteractions',
                    title = 'Work',
                    icon = 'briefcase',
                    items = {}
                }
            end
            Config.MenuItems[4].items = {
                [1] = {
                    id = 'emergencybutton2',
                    title = Lang:t("options.emergency_button"),
                    icon = '#general',
                    type = 'client',
                    event = 'police:client:SendPoliceEmergencyAlert',
                    shouldClose = true,
                },
            }
        else
            if Config.JobInteractions[PlayerData.job.name] and next(Config.JobInteractions[PlayerData.job.name]) then
                if not Config.MenuItems[4] then
                    Config.MenuItems[4] = {
                        id = 'jobinteractions',
                        title = 'Work',
                        icon = 'briefcase',
                        items = {}
                    }
                end
                Config.MenuItems[4].items = Config.JobInteractions[PlayerData.job.name]
            else
                Config.MenuItems[4] = nil
            end
        end
    else
        if Config.JobInteractions[PlayerData.job.name] and next(Config.JobInteractions[PlayerData.job.name]) then
            if not Config.MenuItems[4] then
                Config.MenuItems[4] = {
                    id = 'jobinteractions',
                    title = 'Work',
                    icon = 'briefcase',
                    items = {}
                }
            end
            Config.MenuItems[4].items = Config.JobInteractions[PlayerData.job.name]
        else
            Config.MenuItems[4] = nil
        end
    end

    local Vehicle = GetVehiclePedIsIn(PlayerPedId())

    if Vehicle ~= 0 then
        local AmountOfSeats = GetVehicleModelNumberOfSeats(GetEntityModel(Vehicle))
        if AmountOfSeats == 2 then
            Config.MenuItems[3].items[3].items = {
                [1] = {
                    id = -1,
                    title = Lang:t("options.driver_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [2] = {
                    id = 0,
                    title = Lang:t("options.passenger_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
            }
        elseif AmountOfSeats == 3 then
            Config.MenuItems[3].items[3].items = {
                [4] = {
                    id = -1,
                    title = Lang:t("options.driver_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [1] = {
                    id = 0,
                    title = Lang:t("options.passenger_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [3] = {
                    id = 1,
                    title = Lang:t("options.other_seats"),
                    icon = 'caret-down',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
            }
        elseif AmountOfSeats == 4 then
            Config.MenuItems[3].items[3].items = {
                [4] = {
                    id = -1,
                    title = Lang:t("options.driver_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [1] = {
                    id = 0,
                    title = Lang:t("options.passenger_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [3] = {
                    id = 1,
                    title = Lang:t("options.rear_left_seat"),
                    icon = 'caret-down',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [2] = {
                    id = 2,
                    title = Lang:t("options.rear_right_seat"),
                    icon = 'caret-down',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
            }
        end
    end
end

local function deepcopy(orig) -- modified the deep copy function from http://lua-users.org/wiki/CopyTable
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        if not orig.canOpen or orig.canOpen() then
            local toRemove = {}
            copy = {}
            for orig_key, orig_value in next, orig, nil do
                if type(orig_value) == 'table' then
                    if not orig_value.canOpen or orig_value.canOpen() then
                        copy[deepcopy(orig_key)] = deepcopy(orig_value)
                    else
                        toRemove[orig_key] = true
                    end
                else
                    copy[deepcopy(orig_key)] = deepcopy(orig_value)
                end
            end
            for i=1, #toRemove do table.remove(copy, i) --[[ Using this to make sure all indexes get re-indexed and no empty spaces are in the radialmenu ]] end
            if copy and next(copy) then setmetatable(copy, deepcopy(getmetatable(orig))) end
        end
    elseif orig_type ~= 'function' then
        copy = orig
    end
    return copy
end

local function selectOption(t, t2)
    for k, v in pairs(t) do
        if v.items then
            local found, hasAction = selectOption(v.items, t2)
            if found then return true, hasAction end
        else
            if v.id == t2.id and ((v.event and v.event == t2.event) or v.action) and (not v.canOpen or v.canOpen()) then
                return true, v.action
            end
        end
    end
    return false
end

local function setRadialState(bool, sendMessage)
    local items
    if bool then
        setupSubItems()
        items = deepcopy(Config.MenuItems)
    end
    SetNuiFocus(bool, bool)
    if sendMessage then
        SendNUIMessage({
            action = "ui",
            radial = bool,
            items = items
        })
    end
    inRadialMenu = bool
end

local function getNearestVeh()
    local pos = GetEntityCoords(PlayerPedId())
    local entityWorld = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 20.0, 0.0)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, PlayerPedId(), 0)
    local _, _, _, _, vehicleHandle = GetRaycastResult(rayHandle)
    return vehicleHandle
end

-- Command

RegisterCommand('radialmenu', function()
    if not PlayerData.metadata["isdead"] and not PlayerData.metadata["inlaststand"] and not PlayerData.metadata["ishandcuffed"] and not IsPauseMenuActive() and not inRadialMenu then
        setRadialState(true, true)
        SetCursorLocation(0.5, 0.5)
    end
end)

RegisterKeyMapping('radialmenu', Lang:t("general.command_description"), 'keyboard', 'F1')

-- Events

-- Sets the metadata when the player spawns
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

-- Sets the playerdata to an empty table when the player has quit or did /logout
RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
end)

-- This will update all the PlayerData that doesn't get updated with a specific event other than this like the metadata
RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
    PlayerData = val
end)

RegisterNetEvent('qb-radialmenu:client:noPlayers', function()
    QBCore.Functions.Notify(Lang:t("error.no_people_nearby"), 'error', 2500)
end)

RegisterNetEvent('qb-radialmenu:client:openDoor', function(data)
    local string = data.id
    local replace = string:gsub("door", "")
    local door = tonumber(replace)
    local ped = PlayerPedId()
    local closestVehicle = GetVehiclePedIsIn(ped) ~= 0 and GetVehiclePedIsIn(ped) or getNearestVeh()
    if closestVehicle ~= 0 then
        if closestVehicle ~= GetVehiclePedIsIn(ped) then
            local plate = QBCore.Functions.GetPlate(closestVehicle)
            if GetVehicleDoorAngleRatio(closestVehicle, door) > 0.0 then
                if not IsVehicleSeatFree(closestVehicle, -1) then
                    TriggerServerEvent('qb-radialmenu:trunk:server:Door', false, plate, door)
                else
                    SetVehicleDoorShut(closestVehicle, door, false)
                end
            else
                if not IsVehicleSeatFree(closestVehicle, -1) then
                    TriggerServerEvent('qb-radialmenu:trunk:server:Door', true, plate, door)
                else
                    SetVehicleDoorOpen(closestVehicle, door, false, false)
                end
            end
        else
            if GetVehicleDoorAngleRatio(closestVehicle, door) > 0.0 then
                SetVehicleDoorShut(closestVehicle, door, false)
            else
                SetVehicleDoorOpen(closestVehicle, door, false, false)
            end
        end
    else
        QBCore.Functions.Notify(Lang:t("error.no_vehicle_found"), 'error', 2500)
    end
end)
-- // Livery Menu \\ --
RegisterNetEvent('qb-radialmenu:client:ChangeLivery0', function(data)
    local PlayerData = QBCore.Functions.GetPlayerData()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    
    if PlayerData.job.name == "police" or PlayerData.job.name == "ambulance" then
                SetVehicleLivery(veh, 0)
                QBCore.Functions.Notify('Attempting to update Vehicle Livery..')
                else
                QBCore.Functions.Notify('You must be a Police Officer to change Livery!', 'error')
    end            
end)

RegisterNetEvent('qb-radialmenu:client:ChangeLivery1', function(data)
    local PlayerData = QBCore.Functions.GetPlayerData()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    
    if PlayerData.job.name == "police" or PlayerData.job.name == "ambulance" then
                SetVehicleLivery(veh, 1)
                QBCore.Functions.Notify('Attempting to update Vehicle Livery..')
                else
                QBCore.Functions.Notify('You must be a Police Officer to change Livery!', 'error')
    end            
end)

RegisterNetEvent('qb-radialmenu:client:ChangeLivery2', function(data)
    local PlayerData = QBCore.Functions.GetPlayerData()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    
    if PlayerData.job.name == "police" or PlayerData.job.name == "ambulance" then
                SetVehicleLivery(veh, 2)
                QBCore.Functions.Notify('Attempting to update Vehicle Livery..')
                else
                QBCore.Functions.Notify('You must be a Police Officer to change Livery!', 'error')
    end            
end)








RegisterNetEvent('qb-radialmenu:client:setExtra', function(data)
    local string = data.id
    local replace = string:gsub("extra", "")
    local extra = tonumber(replace)
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    if veh ~= nil then
        if GetPedInVehicleSeat(veh, -1) == ped then
            SetVehicleAutoRepairDisabled(veh, false) -- Forces Auto Repair off when Toggling Extra [GTA 5 Niche Issue]
            if DoesExtraExist(veh, extra) then
                if IsVehicleExtraTurnedOn(veh, extra) then
                    SetVehicleExtra(veh, extra, 1)
                    QBCore.Functions.Notify(Lang:t("error.extra_deactivated", {extra = extra}), 'error', 2500)
                else
                    SetVehicleExtra(veh, extra, 0)
                    QBCore.Functions.Notify(Lang:t("success.extra_activated", {extra = extra}), 'success', 2500)
                end
            else
                QBCore.Functions.Notify(Lang:t("error.extra_not_present", {extra = extra}), 'error', 2500)
            end
        else
            QBCore.Functions.Notify(Lang:t("error.not_driver"), 'error', 2500)
        end
    end
end)

RegisterNetEvent('qb-radialmenu:trunk:client:Door', function(plate, door, open)
    local veh = GetVehiclePedIsIn(PlayerPedId())
    if veh ~= 0 then
        local pl = QBCore.Functions.GetPlate(veh)
        if pl == plate then
            if open then
                SetVehicleDoorOpen(veh, door, false, false)
            else
                SetVehicleDoorShut(veh, door, false)
            end
        end
    end
end)

RegisterNetEvent('qb-radialmenu:client:ChangeSeat', function(data)
    local Veh = GetVehiclePedIsIn(PlayerPedId())
    local IsSeatFree = IsVehicleSeatFree(Veh, data.id)
    local speed = GetEntitySpeed(Veh)
    local HasHarnass = exports['jim-mechanic']:HasHarness()
    if not HasHarnass then
        local kmh = speed * 3.6
        if IsSeatFree then
            if kmh <= 100.0 then
                SetPedIntoVehicle(PlayerPedId(), Veh, data.id)
                QBCore.Functions.Notify(Lang:t("info.switched_seats"), {seat = data.title})
            else
                QBCore.Functions.Notify(Lang:t("error.vehicle_driving_fast"), 'error')
            end
        else
            QBCore.Functions.Notify(Lang:t("error.seat_occupied"), 'error')
        end
    else
        QBCore.Functions.Notify(Lang:t("error.race_harness_on"), 'error')
    end
end)

-- // Stores \\ --

local storeblips = {
    {title="Supermarket", colour=0, id=52, coords = vector3(-46.62, -1758.12, 29.42)},
    {title="Supermarket", colour=0, id=52, coords = vector3(-1486.2, -377.96, 40.42)},
    {title="Supermarket", colour=0, id=52, coords = vector3(-1221.93, -908.53, 12.57)},
    {title="Supermarket", colour=0, id=52, coords = vector3(-705.99, -913.71, 19.28)},
    {title="Supermarket", colour=0, id=52, coords = vector3(24.35, -1347.24, 29.52)},
    {title="Supermarket", colour=0, id=52, coords = vector3(1134.25, -982.44, 46.37)},
    {title="Supermarket", colour=0, id=52, coords = vector3(1164.78, -322.77, 69.29)},
    {title="Supermarket", colour=0, id=52, coords = vector3(372.25, 326.58, 103.64)},
    {title="Supermarket", colour=0, id=52, coords = vector3(-1819.93, 794.31, 138.05)},
    {title="Supermarket", colour=0, id=52, coords = vector3(-2966.14, 390.81, 15.18)},
    {title="Supermarket", colour=0, id=52, coords = vector3(-3038.94, 584.26, 7.53)},
    {title="Supermarket", colour=0, id=52, coords = vector3(-3242.29, 999.78, 12.68)},
    {title="Supermarket", colour=0, id=52, coords = vector3(548.96, 2671.27, 42.1)}, 
    {title="Supermarket", colour=0, id=52, coords = vector3(1165.91, 2711.01, 38.28)},
    {title="Supermarket", colour=0, id=52, coords = vector3(2677.91, 3279.15, 55.25)},
    {title="Supermarket", colour=0, id=52, coords = vector3(1959.97, 3739.98, 32.28)},
    {title="Supermarket", colour=0, id=52, coords = vector3(1727.52, 6415.41, 35.2)},
    {title="Supermarket", colour=0, id=52, coords = vector3(2569.28, 384.45, 108.46)},
    {title="Supermarket", colour=0, id=52, coords = vector3(-161.16, 6321.27, 31.59)},
    {title="Supermarket", colour=0, id=52, coords = vector3(190.04, -898.47, 30.71)},
    {title="Supermarket", colour=0, id=52, coords = vector3(292.73, -1267.11, 29.52)},
    {title="Supermarket", colour=0, id=52, coords = vector3(1332.05, -1647.18, 52.25)},
    {title="Supermarket", colour=0, id=52, coords = vector3(164.78, 6639.36, 31.7)},
    {title="Supermarket", colour=0, id=52, coords = vector3(-158.58, 6324.21, 31.59)},
  }
  
local state = false
RegisterNetEvent("qb-radialmenu:client:togglestore")
AddEventHandler("qb-radialmenu:client:togglestore", function()
      state = not state
        for _, info in pairs(storeblips) do
          if state then
            info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.6)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        else
            RemoveBlip(info.blip)
      end
    end
end)

-- // Banks \\ --

local bankblips = {
    {title="Bank", colour=2, id=108, coords = vector3(149.9, -1040.46, 29.37 )},
    {title="Bank", colour=2, id=108, coords = vector3(314.23, -278.83, 54.17)},
    {title="Bank", colour=2, id=108, coords = vector3(-350.8, -49.57, 49.04)},
    {title="Bank", colour=2, id=108, coords = vector3(-1213.0, -330.39, 37.79)},
    {title="Bank", colour=2, id=108, coords = vector3(-2962.71, 483.0, 15.7)},
    {title="Bank", colour=2, id=108, coords = vector3(1175.07, 2706.41, 38.09)},
    {title="Bank", colour=2, id=108, coords = vector3(246.64, 223.20, 106.29)},
    {title="Bank", colour=2, id=108, coords = vector3(-113.22, 6470.03, 31.63)},
  }
  
local state = false
RegisterNetEvent("qb-radialmenu:client:togglebank")
AddEventHandler("qb-radialmenu:client:togglebank", function()
      state = not state
        for _, info in pairs(bankblips) do
          if state then
            info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.6)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        else
            RemoveBlip(info.blip)
      end
    end
end)

-- // Ammunations \\ --

local ammunationblips = {
    {title="Ammunation", colour=2, id=110, coords = vector3(810.2, -2157.3, 29.6  )},
    {title="Ammunation", colour=2, id=110, coords = vector3(1693.4, 3759.5, 34.7 )},
    {title="Ammunation", colour=2, id=110, coords = vector3(-330.2, 6083.8, 31.4 )},
    {title="Ammunation", colour=2, id=110, coords = vector3(252.3, -50.0, 69.9 )},
    {title="Ammunation", colour=2, id=110, coords = vector3(22.0, -1107.2, 29.8 )},
    {title="Ammunation", colour=2, id=110, coords = vector3(2567.6, 294.3, 108.7 )},
    {title="Ammunation", colour=2, id=110, coords = vector3(-1117.5, 2698.6, 18.5 )},
    {title="Ammunation", colour=2, id=110, coords = vector3(842.4, -1033.4, 28.1 )},
    {title="Ammunation", colour=2, id=110, coords = vector3(-3168.09, 1084.61, 20.84)},

  }
  
local state = false
RegisterNetEvent("qb-radialmenu:client:toggleammunation")
AddEventHandler("qb-radialmenu:client:toggleammunation", function()
      state = not state
        for _, info in pairs(ammunationblips) do
          if state then
            info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.6)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        else
            RemoveBlip(info.blip)
      end
    end
end)

-- // Tattoo Shops \\ --

local tattooblips = {
    {title="Tattoo Shop", colour=75, id=75, coords = vector3( 320.89, 185.01, 103.59 )},
    {title="Tattoo Shop", colour=75, id=75, coords = vector3( 1322.64, -1652.11, 52.31 )},
    {title="Tattoo Shop", colour=75, id=75, coords = vector3( -1153.6, -1425.6, 4.9 )},
    {title="Tattoo Shop", colour=75, id=75, coords = vector3( -3170.0, 1075.0, 20.8 )},
    {title="Tattoo Shop", colour=75, id=75, coords = vector3( 1864.6, 3747.7, 33.0 )},
    {title="Tattoo Shop", colour=75, id=75, coords = vector3( -293.7, 6200.0, 31.4 )},
  }
  

local state = false
RegisterNetEvent("qb-radialmenu:client:toggletattoo")
AddEventHandler("qb-radialmenu:client:toggletattoo", function()
      state = not state
        for _, info in pairs(tattooblips) do
          if state then
            info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.6)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        else
            RemoveBlip(info.blip)
      end
    end
end)

-- // Clothing Shops \\ --

local clothingblips = { 
    {title="Clothing Store", colour=51, id=366, coords = vector3(1693.32, 4823.48,41.06 )},
	{title="Clothing Store", colour=51, id=366, coords = vector3(-712.215881, -155.352982, 37.4151268)},
	{title="Clothing Store", colour=51, id=366, coords = vector3(-1192.94495, -772.688965, 17.3255997)},
	{title="Clothing Store", colour=51, id=366, coords = vector3( 425.236, -806.008, 28.491)},
	{title="Clothing Store", colour=51, id=366, coords = vector3(-162.658, -303.397, 38.733)},
	{title="Clothing Store", colour=51, id=366, coords = vector3(75.950, -1392.891, 28.376)},
	{title="Clothing Store", colour=51, id=366, coords = vector3(-822.194, -1074.134, 10.328)},
	{title="Clothing Store", colour=51, id=366, coords = vector3(-1450.711, -236.83, 48.809)},
	{title="Clothing Store", colour=51, id=366, coords = vector3(4.254, 6512.813, 30.877)},
	{title="Clothing Store", colour=51, id=366, coords = vector3(615.180, 2762.933, 41.088)},
	{title="Clothing Store", colour=51, id=366, coords = vector3(1196.785, 2709.558, 37.222)},
	{title="Clothing Store", colour=51, id=366, coords = vector3(-3171.453, 1043.857, 19.863)},
	{title="Clothing Store", colour=51, id=366, coords = vector3(-1100.959, 2710.211, 18.107)},
	{title="Clothing Store", colour=51, id=366, coords = vector3(-1207.65, -1456.88, 4.3784737586975)},
    {title="Clothing Store", colour=51, id=366, coords = vector3(121.76, -224.6, 53.56)},
    {title="Clothing Store", colour=51, id=366, coords = vector3(197.92, -877.53, 29.71)},
  }
  
local state = false
RegisterNetEvent("qb-radialmenu:client:toggleclothing")
AddEventHandler("qb-radialmenu:client:toggleclothing", function()
      state = not state
        for _, info in pairs(clothingblips) do
          if state then
            info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.6)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        else
            RemoveBlip(info.blip)
      end
    end
end)

-- // Barber Shops \\ --

local barberblips = {
    {title="Barber", colour=32, id=71, coords = vector3(-814.3, -183.8, 36.6)},
	{title="Barber", colour=32, id=71, coords = vector3(136.8, -1708.4, 28.3)},
	{title="Barber", colour=32, id=71, coords = vector3(-1282.6, -1116.8, 6.0)},
	{title="Barber", colour=32, id=71, coords = vector3(1931.5, 3729.7, 31.8)},
	{title="Barber", colour=32, id=71, coords = vector3(1212.8, -472.9, 65.2)},
	{title="Barber", colour=32, id=71, coords = vector3(-32.9, -152.3, 56.1)},
	{title="Barber", colour=32, id=71, coords = vector3(-278.1, 6228.5, 30.7)}
  }
  
local state = false
RegisterNetEvent("qb-radialmenu:client:togglebarber")
AddEventHandler("qb-radialmenu:client:togglebarber", function()
      state = not state
        for _, info in pairs(barberblips) do
          if state then
            info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.6)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        else
            RemoveBlip(info.blip)
      end
    end
end)

-- // Garage Shops \\ --

local garageblips = {
    {title="Garage", colour=3, id=357, coords = vector3(273.43, -343.99, 44.91)},
    {title="Garage", colour=3, id=357, coords = vector3(-330.01, -780.33, 33.96)},
    {title="Garage", colour=3, id=357, coords = vector3(-1160.86, -741.41, 19.63)},
    {title="Garage", colour=3, id=357, coords = vector3(69.84, 12.6, 68.96)},
    {title="Garage", colour=3, id=357, coords = vector3(-475.31, -818.73, 30.46)},
    {title="Garage", colour=3, id=357, coords = vector3(364.37, 297.83, 103.49)},
    {title="Garage", colour=3, id=357, coords = vector3(-796.86, -2024.85, 8.88)},
    {title="Garage", colour=3, id=357, coords = vector3(-1183.1, -1511.11, 4.36)},
    {title="Garage", colour=3, id=357, coords = vector3(1137.77, 2663.54, 37.9)},  
    {title="Garage", colour=3, id=357, coords = vector3(934.95, 3606.59, 32.81)},
    {title="Garage", colour=3, id=357, coords = vector3(1726.21, 3707.16, 34.17)},
    {title="Garage", colour=3, id=357, coords = vector3(78.34, 6418.74, 31.28)},
    {title="Garage", colour=3, id=357, coords = vector3(157.26, -3240.00, 7.00)},
    {title="Garage", colour=3, id=357, coords = vector3(215.9499, -809.698, 30.731)},
  }
  
local state = false
RegisterNetEvent("qb-radialmenu:client:togglegarage")
AddEventHandler("qb-radialmenu:client:togglegarage", function()
      state = not state
        for _, info in pairs(garageblips) do
          if state then
            info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.5)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        else
            RemoveBlip(info.blip)
      end
    end
end)

-- // Petrol Station \\ --

local gasblips = {
    {title="Petrol Station", colour=1, id=361, coords = vector3(49.4187, 2778.793, 58.043)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(263.894, 2606.463, 44.983)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(1039.958, 2671.134, 39.550)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(1207.260, 2660.175, 37.899)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(2539.685, 2594.192, 37.944)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(2679.858, 3263.946, 55.240)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(2005.055, 3773.887, 32.403)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(1687.156, 4929.392, 42.078)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(1701.314, 6416.028, 32.763)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(179.857, 6602.839, 31.868)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(-94.4619, 6419.594, 31.489)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(-2554.996, 2334.40, 33.078)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(-1800.375, 803.661, 138.651)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(-1437.622, -276.747, 46.207)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(-2096.243, -320.286, 13.168)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(-724.619, -935.1631, 19.213)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(-526.019, -1211.003, 18.184)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(-70.2148, -1761.792, 29.534)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(265.648, -1261.309, 29.292)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(819.653, -1028.846, 26.403)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(1208.951, -1402.567,35.224)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(1181.381, -330.847, 69.316)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(620.843, 269.100, 103.089)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(2581.321, 362.039, 108.468)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(176.631, -1562.025, 29.263)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(176.631, -1562.025, 29.263)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(-319.292, -1471.715, 30.549)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(-66.48, -2532.57, 6.14)},
	{title="Petrol Station", colour=1, id=361, coords = vector3(1784.324, 3330.55, 41.253)},
  }
  
local state = false
RegisterNetEvent("qb-radialmenu:client:togglegas")
AddEventHandler("qb-radialmenu:client:togglegas", function()
      state = not state
        for _, info in pairs(gasblips) do
          if state then
            info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.5)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        else
            RemoveBlip(info.blip)
      end
    end
end)





-- NUI Callbacks

RegisterNUICallback('closeRadial', function()
    setRadialState(false, false)
end)

RegisterNUICallback('selectItem', function(data)
    local itemData = data.itemData
    local found, action = selectOption(Config.MenuItems, itemData)
    if itemData and found then
        if action then
            action(itemData)
        elseif itemData.type == 'client' then
            TriggerEvent(itemData.event, itemData)
        elseif itemData.type == 'server' then
            TriggerServerEvent(itemData.event, itemData)
        elseif itemData.type == 'command' then
            ExecuteCommand(itemData.event)
        elseif itemData.type == 'qbcommand' then
            TriggerServerEvent('QBCore:CallCommand', itemData.event, itemData)
        end
    end
end)