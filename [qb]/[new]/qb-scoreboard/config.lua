Config = Config or {}

-- Open scoreboard key
Config.OpenKey = 'PAGEDOWN' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

-- Max Server Players
Config.MaxPlayers = GetConvarInt('sv_maxclients', 64) -- It returns 48 if it cant find the Convar Int

-- Minimum Police for Actions
Config.IllegalActions = {
    ["houserobbery"] = {
        minimum = 1,
        busy = false,
    },
    ["storerobbery"] = {
        minimum = 2,
        busy = false,
    },
    ["techstore"] = {
        minimum = 2,
        busy = false,
    },
    ["ammunation"] = {
        minimum = 3,
        busy = false,
    },
    ["vangelicojewelry"] = {
        minimum = 4,
        busy = false,
    },
    ["hiddenrobberythermite"] = {
        minimum = 4,
        busy = false,
    },
    ["bankrobbery"] = {
        minimum = 4,
        busy = false,
    },


    -- // Right Column \\ --
    ["artheist"] = {
        minimum = 4,
        busy = false,
    },
    ["trainheist"] = {
        minimum = 5,
        busy = false,
    }, 
    ["truckheist"] = {
        minimum = 5,
        busy = false,
    },
    ["fastfuriousheist"] = {
        minimum = 6,
        busy = false,
    },
    ["hiddenheistoilrig"] = {
        minimum = 6,
        busy = false,
    },
    ["unionheist"] = {
        minimum = 7,
        busy = false,
    },
    ["pacificbank"] = {
        minimum = 8,
        busy = false,
    },
    ["hiddenfibheist"] = {
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
