Config = Config or {}

-- Open scoreboard key
Config.OpenKey = 'PAGEDOWN' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

-- Max Server Players
Config.MaxPlayers = GetConvarInt('sv_maxclients', 128) -- It returns 48 if it cant find the Convar Int

-- Minimum Police for Actions
Config.IllegalActions = {
    ["ammunation"] = {
        minimum = 2,
        busy = false,
    },
    ["techstore"] = {
        minimum = 2,
        busy = false,
    },
    ["storerobbery"] = {
        minimum = 2,
        busy = false,
    },
    ["hiddengrapejewelry"] = {
        minimum = 3,
        busy = false,
    },
    ["vangelicojewelry"] = {
        minimum = 3,
        busy = false,
    },
    ["bankrobbery"] = {
        minimum = 4,
        busy = false,
    },
    ["hiddenrobberythermite"] = {
        minimum = 4,
        busy = false,
    },
    ["truckheist"] = {
        minimum = 4,
        busy = false,
    },
    ["fastfuriousheist"] = {
        minimum = 4,
        busy = false,
    },
--[[     ["banktruck"] = {
        minimum = 5,
        busy = false,
    }, ]]

    -- // Right Column \\ --
    ["artheist"] = {
        minimum = 3,
        busy = false,
    },
--[[     ["trainheist"] = {
        minimum = 4,
        busy = false,
    }, ]]
    ["hiddenheistzancudo"] = {
        minimum = 4,
        busy = false,
    },
--[[     ["hiddensubmarine"] = {
        minimum = 5,
        busy = false,
    },
    ["hiddenaircraftcarrier"] = {
        minimum = 5,
        busy = false,
    }, ]]
    ["hiddenheistoilrig"] = {
        minimum = 5,
        busy = false,
    },
    ["unionheist"] = {
        minimum = 6,
        busy = false,
    },
    ["pacificbank"] = {
        minimum = 8,
        busy = false,
    },
    ["fibheist"] = {
        minimum = 8,
        busy = false,
    },

}

-- Current Cops Online
Config.CurrentCops = 0

-- Current Ambulance / Doctors Online
Config.CurrentAmbulance = 0

-- Show ID's for all players or Opted in Staff
Config.ShowIDforALL = true
