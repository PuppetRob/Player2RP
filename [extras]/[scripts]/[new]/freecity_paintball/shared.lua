Config = {}

Config.Locale = 'en'

Config.FrameworkTriggers = { --You can change the qb events (IF NEEDED).
    main = 'QBCore:GetObject',
    load = 'QBCore:Client:OnPlayerLoaded',
    resource_name = 'qb-core'
}

Config.startLoc = vector3(167.4236, -981.2729, 29.09188) -- location to spawn back after being killed

Config.spawnPed = true -- Spawns a ped on startLocation.

Config.targetPed = {
    name = 'paintballPed',
    skin = `a_m_y_motox_02`, -- https://wiki.altv.mp/wiki/GTA:Ped_Models
    location = vector3(167.4236, -981.2729, 29.09188),
    heading = 139.159149,
    scenario = 'WORLD_HUMAN_GUARD_STAND' -- https://wiki.rage.mp/index.php?title=Scenarios / false for no ped scenario
}

Config.spawnMarker = true -- Put this at false if you are using any type of targeting system

Config.usePolyZones = true -- If enabled, polyzones are created on shared-client.lua and the config:cmdLeavePaintball checks if player is inside the polyzone and tps him back to the lobby zone.

Config.AllowcmdLeavePaintball = true -- Allows players stuck in map shells to return to the lobby zone. If polyzones are disabled, it will calculate the distance from player to the location and use the radius parameter in Config.Arenas

Config.cmdLeavePaintball = 'leavepaintball' -- Command to return to lobby zone

Config.debug = false -- turn this on to have server side prints of games / players / logs

Config.giveRewards = false -- turn this on to have people getting rewarded after game WIN. CAREFULL WITH THIS BECAUSE PEOPLE CAN START GAMES ALL THE TIME...

Config.lobbyStartTime = 120 -- (SECONDS) Checks to see how much time has passed since the lobby was created. It will disband the lobby so other people can start a new one.



--     ____ _______       _____   _____ ______ _______
--    / __ \__   __|/\   |  __ \ / ____|  ____|__   __|
--   | |  | | | |  /  \  | |__) | |  __| |__     | |
--   | |  | | | | / /\ \ |  _  /| | |_ |  __|    | |
--   | |__| | | |/ ____ \| | \ \| |__| | |____   | |
--    \___\_\ |_/_/    \_\_|  \_\\_____|______|  |_|
--
--   Needs to have Config.spawnPed = true

Config.useTargetSystem = false
Config.targetType = 'qb-target'

--    __  __          _____  _  ________ _____
--   |  \/  |   /\   |  __ \| |/ /  ____|  __ \
--   | \  / |  /  \  | |__) | ' /| |__  | |__) |
--   | |\/| | / /\ \ |  _  /|  < |  __| |  _  /
--   | |  | |/ ____ \| | \ \| . \| |____| | \ \
--   |_|  |_/_/    \_\_|  \_\_|\_\______|_|  \_\
--
--
-- This is the marker if spawnPed is false

Config.marker = {
    type = 20,
    drawDistance = 15, --How far can a player see the marker
    location = { x = 166.974, y = -981.7401, z = 30.09188 },
    size = {x = 0.5, y = 0.5, z = 0.5},
    color = {r = 50, g = 250, b = 204, a = 100},
}


--    ____  _      _____ _____
--   |  _ \| |    |_   _|  __ \
--   | |_) | |      | | | |__) |
--   |  _ <| |      | | |  ___/
--   | |_) | |____ _| |_| |
--   |____/|______|_____|_|
--
--

Config.targetBlip = {
    location = vector3(167.4236, -981.2729, 29.09188),
    interactDistance = 3,
    interactKey = 'E',
    sprite = 160,
    display = 4,
    scale = 0.8,
    colour = 5,
    label = 'Paintball'}


--     _____          __  __ ______    _____ ______ _______ _______ _____ _   _  _____  _____
--    / ____|   /\   |  \/  |  ____|  / ____|  ____|__   __|__   __|_   _| \ | |/ ____|/ ____|
--   | |  __   /  \  | \  / | |__    | (___ | |__     | |     | |    | | |  \| | |  __| (___
--   | | |_ | / /\ \ | |\/| |  __|    \___ \|  __|    | |     | |    | | | . ` | | |_ |\___ \
--   | |__| |/ ____ \| |  | | |____   ____) | |____   | |     | |   _| |_| |\  | |__| |____) |
--    \_____/_/    \_\_|  |_|______| |_____/|______|  |_|     |_|  |_____|_| \_|\_____|_____/
--
--

Config.RoundStartTime = 5 -- seconds
Config.enableLifes = true -- Enable the life system if you want(3 lives per player till they leave the game)



--     _____          __  __ ______            _____  ______ _   _           _____
--    / ____|   /\   |  \/  |  ____|     /\   |  __ \|  ____| \ | |   /\    / ____|
--   | |  __   /  \  | \  / | |__       /  \  | |__) | |__  |  \| |  /  \  | (___
--   | | |_ | / /\ \ | |\/| |  __|     / /\ \ |  _  /|  __| | . ` | / /\ \  \___ \
--   | |__| |/ ____ \| |  | | |____   / ____ \| | \ \| |____| |\  |/ ____ \ ____) |
--    \_____/_/    \_\_|  |_|______| /_/    \_\_|  \_\______|_| \_/_/    \_\_____/
--
--  Images added to /img/ need to have the same name has Arenas ID like /img/driftunderground.jpg

Config.Arenas = {
    ['driftunderground'] = {
        name = 'driftunderground',
        location = vector3(-1951.606, 1120.972, -27.36382),
        blueteam = {
            vector3(-1843.759, 993.0343, -27.36379),
            vector3(-1841.895, 998.7498, -27.36379),
            vector3(-1839.326, 1001.272, -27.36379),
            vector3(-1848.161, 991.8967, -27.36379),
            vector3(-1849.547, 998.2554, -27.36379),
        }, 
        redteam = {
            vector3(-2117.872, 1225.111, -27.36382),
            vector3(-2126.045, 1225.143, -27.36382),
            vector3(-2126.392, 1221.037, -27.36382),
            vector3(-2128.232, 1218.455, -27.36382),
            vector3(-2124.189, 1216.828, -27.36382),
        }, 
        radius = 50
    },
    ['miningyard'] = {
        name = 'miningyard',
        location = vector3(900.6464, -3224.025, -98.26677),
        blueteam = {
            vector3(837.7547, -3237.563, -98.69907),
            vector3(838.248, -3233.667, -98.2677),
            vector3(839.9142, -3242.688, -98.2677),
            vector3(843.363, -3238.762, -98.2677),
            vector3(843.8671, -3235.073, -98.2677),
        },
        redteam = {
            vector3(943.3898, -3202.1, -98.2677),
            vector3(941.5729, -3199.873, -98.2677),
            vector3(940.0148, -3197.435, -98.2677),
            vector3(946.84, -3200.915, -98.2677),
            vector3(946.439,  -3204.836, -98.2677),
        }, 
        radius = 60
    },
    ['officeroom'] = {
        name = 'officeroom',
        location = vector3(366.3301, 4846.624, -62.59954),
        blueteam = {
            vector3(414.5289, 4842.817, -62.59937),
            vector3(414.8484, 4840.498, -62.59937),
            vector3(414.4725, 4838.005, -62.59937),
            vector3(413.9238, 4835.75, -62.59937),
            vector3(414.5091, 4846.365, -62.59937),
        },
        redteam = {
            vector3(323.0623, 4878.644, -62.59945),
            vector3(325.7256, 4881.005, -62.59945),
            vector3(319.4958, 4877.771, -62.59945),
            vector3(321.718, 4874.785, -62.59945),
            vector3(319.099, 4872.184, -62.59945),
        },
        radius = 30
    },
}

--    _   _  ____ _______ _____ ______ _____ _____       _______ _____ ____  _   _  _____
--   | \ | |/ __ \__   __|_   _|  ____|_   _/ ____|   /\|__   __|_   _/ __ \| \ | |/ ____|
--   |  \| | |  | | | |    | | | |__    | || |       /  \  | |    | || |  | |  \| | (___
--   | . ` | |  | | | |    | | |  __|   | || |      / /\ \ | |    | || |  | | . ` |\___ \
--   | |\  | |__| | | |   _| |_| |     _| || |____ / ____ \| |   _| || |__| | |\  |____) |
--   |_| \_|\____/  |_|  |_____|_|    |_____\_____/_/    \_\_|  |_____\____/|_| \_|_____/
--
--

Config.notificationsType = 'default' -- okokNotify / mythic_notify / default (showNotification)
Config.infoNotificationsTime = 5000 -- (ms)
Config.errorNotificationsTime = 5000 -- (ms)
Config.successNotificationsTime = 5000 -- (ms)

--  ____  _     _____ _____ _   _ _____ _   _ _____
-- /  __ \| |   |  _  |_   _| | | |_   _| \ | |  __ \
-- | /  \/| |   | | | | | | | |_| | | | |  \| | |  \/
-- | |    | |   | | | | | | |  _  | | | | . ` | | __
-- | \__/\| |___\ \_/ / | | | | | |_| |_| |\  | |_\ \
--  \____/\_____/\___/  \_/ \_| |_/\___/\_| \_/\____/
--
-- Don't change men/women or redteam/blueteam
-- Change the texture/type numbers to your liking and your server clothes.

Config.clothes = {
    ['men'] = {
        ['redteam'] = {
            mask = 33,
            maskTexture = 4,
            pants = 3,
            pantsTexture = 5,
            torso = 1,
            torsoTexture = 4,
            tshirt = 15,
            tshirtTexture = 0,
            arms = 0,
            armsTexture = 0,
            shoes = 1,
            shoesTexture = 0
        },
        ['blueteam'] = {
            mask = 33,
            maskTexture = 3,
            pants = 3,
            pantsTexture = 3,
            torso = 1,
            torsoTexture = 5,
            tshirt = 15,
            tshirtTexture = 0,
            arms = 0,
            armsTexture = 0,
            shoes = 1,
            shoesTexture = 0
        }
    },
    ['women'] = {
        ['redteam'] = {
            mask = 33,
            maskTexture = 4,
            pants = 0,
            pantsTexture = 9,
            torso = 0,
            torsoTexture = 4,
            tshirt = 15,
            tshirtTexture = 0,
            arms = 0,
            armsTexture = 0,
            shoes = 1,
            shoesTexture = 0
        },
        ['blueteam'] = {
            mask = 33,
            maskTexture = 3,
            pants = 0,
            pantsTexture = 4,
            torso = 0,
            torsoTexture = 6,
            tshirt = 15,
            tshirtTexture = 0,
            arms = 0,
            armsTexture = 0,
            shoes = 1,
            shoesTexture = 0
        }
    }
}
