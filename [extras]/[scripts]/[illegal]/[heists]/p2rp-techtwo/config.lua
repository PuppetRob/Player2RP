Config = Config or {}

-- Set to true or false or GetConvar('UseTarget', 'false') == 'true' to use global option or script specific
-- These have to be a string thanks to how Convars are returned.
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.CityDoor = "techtwo-citymain" -- edit this ID to your city jewelery main store door ID
Config.CitySec = "techtwo-citysec"

Config.IstoreHours = { -- Store Hours
    range = {
        open = 6, -- When the doors unlock
        close = 17 -- When they lock for the night (for some reason this is actually 6pm)
    }
} 

Config.Cooldown = 5 * (60 * 2000) -- where x is minutes ie. x * (60 * 2000) \\ For door auto lock function
Config.Timeout = 5 * (60 * 2000) -- where x is minutes ie. x * (60 * 2000) \\ For case smashing cooldown
Config.RequiredCops = 3

Config.DoorItem = 'thermite' -- item to remove\check for when placing a charge
Config.ThermiteSettings = {
    time = 60, -- time the hack displays for \\ half being showing the puzzle and the other solving
    gridsize = 5, -- (5, 6, 7, 8, 9, 10) size of grid by square units, ie. gridsize = 5 is a 5 * 5 (25) square grid
    incorrectBlocks = 10 -- incorrectBlocks = number of incorrect blocks after which the game will fail
}

Config.VarHackSettings = {
    blocks = 2, -- time the hack displays for \\ half being showing the puzzle and the other solving
    time = 20 -- time the hack displays for
}

--[[ Config.JewelleryLocation = {
    ["coords"] = vector3(-639.1, -283.76, 35.58),
} ]]

Config.Thermite = {
    [1] = { -- City Vangelico's \\ Rooftop Thermite
        ["coords"] = vector3(-642.12, -285.61, 35.49), -- h = 304.5
        ["h"] = 300.0,
        ["minZ"] = 32.12,
        ["maxZ"] = 37.32,
        ["anim"] = vector4(-641.8, -285.68, 35.49, 298.89), 
        ["effect"] = vector3(-641.8, -285.61, 35.49)
    }
}

Config.Hacks = {
    [1] = { -- City Vangelico's \\ PC Hack 
        ["coords"] = vector3(-628.1, -275.29, 36.49), -- h = 175.41
        ["h"] = 116.0,
        ["minZ"] = 34.12,
        ["maxZ"] = 36.32,
        ["anim"] = vector4(-627.62, -275.08, 35.58, 122.66)
    }
}

Config.WhitelistedWeapons = {
    [`weapon_assaultrifle`] = {
        ["timeOut"] = 10000
    },
    [`weapon_carbinerifle`] = {
        ["timeOut"] = 10000
    },
    [`weapon_pumpshotgun`] = {
        ["timeOut"] = 10000
    },
    [`weapon_sawnoffshotgun`] = {
        ["timeOut"] = 10000
    },
    [`weapon_compactrifle`] = {
        ["timeOut"] = 10000
    },
    [`weapon_microsmg`] = {
        ["timeOut"] = 10000
    },
    [`weapon_autoshotgun`] = {
        ["timeOut"] = 10000
    },
    [`weapon_pistol`] = {
        ["timeOut"] = 10000
    },
    [`weapon_pistol_mk2`] = {
        ["timeOut"] = 10000
    },
    [`weapon_combatpistol`] = {
        ["timeOut"] = 10000
    },
    [`weapon_appistol`] = {
        ["timeOut"] = 10000
    },
    [`weapon_pistol50`] = {
        ["timeOut"] = 10000
    },
}

Config.VitrineRewards = {
    [1] = {
        ["item"] = "gpu",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [2] = {
        ["item"] = "mainboard",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [3] = {
        ["item"] = "phone",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [4] = {
        ["item"] = "iphone",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [5] = {
        ["item"] = "laptop",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [6] = {
        ["item"] = "boostingtablet",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [7] = {
        ["item"] = "hackingdevice",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [8] = {
        ["item"] = "racingtablet",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [9] = {
        ["item"] = "brokenphone",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [10] = {
        ["item"] = "samsungphone",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [11] = {
        ["item"] = "cryptostick",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
}

Config.Locations = {
    [1] = {
        ["coords"] = vector3(-624.0, -281.89, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [2] = {
        ["coords"] = vector3(-622.51, -282.78, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [3] = {
        ["coords"] = vector3(-621.25, -284.98, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [4] = {
        ["coords"] = vector3(-623.26, -286.13, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [5] = {
        ["coords"] = vector3(-637.04, -283.93, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [6] = {
        ["coords"] = vector3(-633.85, -282.12, 35.58),
      ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [7] = {
        ["coords"] = vector3(-640.7, -280.13, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [8] = {
        ["coords"] = vector3(-638.2, -278.59, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [9] = {
        ["coords"] = vector3(-635.8, -277.3, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [10] = {
        ["coords"] = vector3(-633.35, -278.92, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [11] = {
        ["coords"] = vector3(-636.66, -280.7, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [12] = {
        ["coords"] = vector3(-631.47, -283.79, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [13] = {
        ["coords"] = vector3(-633.8, -285.2, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [14] = {
        ["coords"] = vector3(-636.35, -286.6, 35.58),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
   --[[  [15] = {
        ["coords"] = vector3(-620.95, -228.6, 38.05),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [16] = {
        ["coords"] = vector3(-619.79, -227.6, 38.05),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [17] = {
        ["coords"] = vector3(-620.42, -226.6, 38.05),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [18] = {
        ["coords"] = vector3(-623.94, -227.18, 38.05),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [19] = {
        ["coords"] = vector3(-624.91, -227.87, 38.05),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [20] = {
        ["coords"] = vector3(-623.94, -228.05, 38.05),
        ["isOpened"] = false,
        ["isBusy"] = false,
    } ]]
}

Config.MaleNoHandshoes = {
    [0] = true, [1] = true, [2] = true, [3] = true, [4] = true, [5] = true, [6] = true, [7] = true, [8] = true, [9] = true, [10] = true, [11] = true, [12] = true, [13] = true, [14] = true, [15] = true, [18] = true, [26] = true, [52] = true, [53] = true, [54] = true, [55] = true, [56] = true, [57] = true, [58] = true, [59] = true, [60] = true, [61] = true, [62] = true, [112] = true, [113] = true, [114] = true, [118] = true, [125] = true, [132] = true,
}

Config.FemaleNoHandshoes = {
    [0] = true, [1] = true, [2] = true, [3] = true, [4] = true, [5] = true, [6] = true, [7] = true, [8] = true, [9] = true, [10] = true, [11] = true, [12] = true, [13] = true, [14] = true, [15] = true, [19] = true, [59] = true, [60] = true, [61] = true, [62] = true, [63] = true, [64] = true, [65] = true, [66] = true, [67] = true, [68] = true, [69] = true, [70] = true, [71] = true, [129] = true, [130] = true, [131] = true, [135] = true, [142] = true, [149] = true, [153] = true, [157] = true, [161] = true, [165] = true,
}
