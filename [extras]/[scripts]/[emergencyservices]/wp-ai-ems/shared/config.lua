Config = {}

----------------------
-- MODIFY THESE VALUES
----------------------

Config.Framework = 'qb' -- 'qb' or 'esx'
Config.Notify = 'qb' -- supports 'qb', 'esx', 'ox' (if using ox enable @ox_lib/init.lua in the manifest)

-- This enables the command /callems to call a local EMS to your location
Config.EnableCallEMSCommand = true
-- If true, the EMS command will dispatch EMS immediately, otherwise it will be delayed using Config.DispatchEMSWaitTime
Config.IsEMSCommandInstantDispatch = true

-- Event to trigger when the player is force respawned at the hospital
Config.HospitalRespawnEvent = "hospital:client:RespawnAtHospital"
-- Event to trigger when the player is checked in at the hospital they were dropped off at
-- Example: TriggerEvent(Config.HospitalCheckinEvent, hospitalIndex)
-- hospitalIndex refers to the key / value pairs defined in Config.HospitalLocations (ie: 1, 2, 3). 
-- These be in the same order as the hospitals defined in your hospital script
-- Use qb-ambulancejob:aiems-checkin custom function for multiple hospital support
Config.HospitalCheckinEvent = "qb-ambulancejob:checkin"

-- Sets fuel using exports[Config.Fuel]:SetFuel(ambulanceVehicle, 100) to set ambulance fuel full
Config.Fuel = "p2rp-fuel"

-- One of these ambulance vehicle models will be chosen at random
-- If you use a custom ambulance model, you may need to modify the rearLeftDoorIndex / rearRightDoorIndex values to get the correct doors to open/close
-- [index] = { modelName = <vehicleModelName>, rearLeftDoorIndex = <integer>, rearRightDoorIndex = <integer> }
Config.AmbulanceModels = {
    [1] = { modelName = "ambulance", rearLeftDoorIndex = 2, rearRightDoorIndex = 3 },
}

-- AI EMS will look for the closet hospital location to take the downed person to
-- Each location needs to define the following:
--      name - the name of the location
--      dropOffLocation - the location the ambulance will stop at to drop off the person
--      parkingLocation - the location the ambulance will park after dropping off the person
--      location - is where the EMS will walk the person to, to get checked in (typically outside the hospital as AI peds struggle to walk into interiors)
Config.HospitalLocations = {
    ["hospital"] = {
        [1] = {
            ["name"] = "Pillbox",
            ["location"] = vector3(361.09, -585.46, 28.83), -- lower pillbox door
            ["dropOffLocation"] = vector3(363.2, -597.94, 28.67), -- lower pillbox
            ["parkingLocation"] = vector3(348.73, -542.23, 28.74), -- lower pillbox parking
        },
--[[         [2] = {
            ["name"] = "Paleto Medical",
            ["location"] = vector3(-248.17, 6331.98, 32.43), -- paleto door to checkin
            ["dropOffLocation"] = vector3(-229.41, 6314.06, 31.29), -- sidewalk in front of paleto
            ["parkingLocation"] = vector3(-369.67, 6126.27, 31.44), -- paleto fire department
        }, ]]
    }
}

----------------------
-- OPTIONAL VALUES TO MODIFY
----------------------

-- The time (in ms) it will wait to dispatch the AI EMS.
-- Minutes * Seconds * Milliseconds
Config.DispatchEMSWaitTime = 2 * 60 * 1000 -- 120000ms = 2 minutes

-- The model of the ped to spawn as the paramedic
Config.ParamedicPedModel = "s_m_m_paramedic_01"

-- The time (in ms) for the scenario to complete before timing out.
-- If the ambulance does not drop off the player in this time, the scenario will fail and the entities will be cleaned up
-- Minutes * Seconds * Milliseconds
Config.ScenarioTimeOut = 15 * 60 * 1000 -- 900000ms = 15 minutes

-- Amount of time (in ms) for ped to perform cpr
Config.CPRTime = 5000

-- Ped must be stuck/minimally moving for this many seconds before the scenario stops and forces a success
-- A lower number will cause the scenario to stop sooner when stuck
Config.StuckTime = 90 -- seconds

-- If the AI EMS gets stuck for Config.StuckTime, and this flag is true, the player will be force checked in to the hospital
-- If the flag is false, the player will not be force checked in if the AI EMS gets stuck
Config.EnableStuckForceCheckIn = true
-- This flag is only used if Config.EnableStuckForceCheckIn is true
-- If true and the AI EMS gets stuck, the player must be in the ambulance for the force checkin to occur
-- If false and the AI EMS gets stuck, the force checkin can occur even if the ambulance never reaches the player
Config.StuckCheckInRequiresBeingTransported = false

-- This flag is used to enable a stuck check if the EMS gets stuck attempting to reach the player's downed location (useful for unreachable areas like rooftops).
-- If the EMS remains stuck (not moving more than 1m) for Config.StuckCheckTeleportToEmsTimeout seconds,
-- and Config.EnableStuckCheckTeleportToEms is set to true, then the player will be teleported to the EMS and the steps will continue.
-- If set to false then the EMS will continue to try until the overall scenario timeout is reached
Config.StuckCheckTeleportToEmsTimeout = 15 -- seconds
Config.EnableStuckCheckTeleportToEmsEscort = true

-- If the overall scenario times out without the player getting checked into the hospital and this flag is true, the player will be force checked in to the hospital
-- If the flag is false, the player will not be force checked in, and may still have the optional to hold E to respawn (depending on which ambulance script you use).
Config.EnableForceCheckinOnScenarioTimeout = true

-- Set to true to track the reliability of the AI EMS, set to false to disable. 
-- If set to true you need to setup the ai_ems_telemetry table
Config.RecordTelemetry = false

-- Set to true to get debug messages in the console
Config.IsDebugMode = false 
