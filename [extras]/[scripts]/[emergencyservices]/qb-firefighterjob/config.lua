Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.Locations = {
    ["duty"] = {
   --     [1] = vector3(-653.73, -87.68, 38.79), -- HQ
        [1] = vector3(198.9, -1639.21, 29.8), -- DAVIS
    --    [3] = vector3(1187.7, -1468.59, 34.86), -- FS7
    },
    ["vehicle"] = {
   --     [1] = vector4(-646.8, -105.99, 37.95, 125.42), -- HQ
        [1] = vector4(218.57, -1636.08, 29.3, 316.19), -- DAVIS
    --    [3] = vector4(1199.55, -1456.22, 34.95, 355.6), -- FS7w
    },
    ["helicopter"] = {
    --    [1] = vector4(-679.3, -35.13, 38.33, 153.33), -- HQ
        [1] = vector4(183.34, -1661.44, 29.8, 239.46), -- DAVIS
    --    [3] = vector4(1198.45, -1548.8, 39.4, 12.04), -- FS7
    },
    ["armory"] = {
    --    [1] = vector3(-623.88, -109.03, 45.5), -- HQ
        [1] = vector3(198.71, -1649.07, 29.8), -- DAVIS
    --    [3] = vector3(1193.86, -1476.25, 34.86), -- FS7
    },
    ["stash"] = {
    --    [1] = vector3(-629.2, -85.22, 45.41), -- HQ
        [1] = vector3(217.48, -1662.38, 29.8), -- DAVIS
    --    [3] = vector3(1216.91, -1474.23, 34.86), -- FS7
    },
    ["stations"] = {
    --    [1] = {label = Lang:t('info.fd_station'), coords = vector4(-660.42, -77.13, 38.8, 15.25)},
        [1] = {label = Lang:t('info.fd_station'), coords = vector4(199.96, -1634.66, 30.02, 319.89)},
    --    [3] = {label = Lang:t('info.fd_station'), coords = vector4(1185.59, -1464.36, 35.07, 3.96)}
    }
}

Config.AuthorizedVehicles = {

	-- Recruit
	[0] = {
        ["23fambo"] = "Ambulance",
        ["23fdems16utility"] = "16 Utility",
        ["23fdems18suv"] = "18 SUV",
        ["23fdems18utility"] = "18 Utility",
        ["23fdems21suvsl"] = "21 SUV",
        ["23fskid"] = "Rescue Truck",
        ["21fireeng"] = "Fire Engine",
        ["21fireladder"] = "Ladder Truck",
        ["21firerescue"] = "Fire Rescuse",
	},

	-- Firefighter
	[1] = {
        ["23fambo"] = "Ambulance",
        ["23fdems16utility"] = "16 Utility",
        ["23fdems18suv"] = "18 SUV",
        ["23fdems18utility"] = "18 Utility",
        ["23fdems21suvsl"] = "21 SUV",
        ["23fskid"] = "Rescue Truck",
        ["21fireeng"] = "Fire Engine",
        ["21fireladder"] = "Ladder Truck",
        ["21firerescue"] = "Fire Rescuse",
	},

     -- Shift Leader
    [2] = {
        ["23fambo"] = "Ambulance",
        ["23fdems16utility"] = "16 Utility",
        ["23fdems18suv"] = "18 SUV",
        ["23fdems18utility"] = "18 Utility",
        ["23fdems21suvsl"] = "21 SUV",
        ["23fskid"] = "Rescue Truck",
        ["21fireeng"] = "Fire Engine",
        ["21fireladder"] = "Ladder Truck",
        ["21firerescue"] = "Fire Rescuse",
	},

    -- Lieutenant
    [3] = {
        ["23fambo"] = "Ambulance",
        ["23fdems16utility"] = "16 Utility",
        ["23fdems18suv"] = "18 SUV",
        ["23fdems18utility"] = "18 Utility",
        ["23fdems21suvsl"] = "21 SUV",
        ["23fskid"] = "Rescue Truck",
        ["21fireeng"] = "Fire Engine",
        ["21fireladder"] = "Ladder Truck",
        ["21firerescue"] = "Fire Rescuse",
	},

	-- Captain
	[4] = {
        ["23fambo"] = "Ambulance",
        ["23fdems16utility"] = "16 Utility",
        ["23fdems18suv"] = "18 SUV",
        ["23fdems18utility"] = "18 Utility",
        ["23fdems21suvsl"] = "21 SUV",
        ["23fskid"] = "Rescue Truck",
        ["21fireeng"] = "Fire Engine",
        ["21fireladder"] = "Ladder Truck",
        ["21firerescue"] = "Fire Rescuse",
	},
	-- Assistant Chief
	[5] = {
        ["23fambo"] = "Ambulance",
        ["23fdems16utility"] = "16 Utility",
        ["23fdems18suv"] = "18 SUV",
        ["23fdems18utility"] = "18 Utility",
        ["23fdems21suvsl"] = "21 SUV",
        ["23fskid"] = "Rescue Truck",
        ["21fireeng"] = "Fire Engine",
        ["21fireladder"] = "Ladder Truck",
        ["21firerescue"] = "Fire Rescuse",
	},
    
    -- Fire Chief
	[6] = {
        ["23fambo"] = "Ambulance",
        ["23fdems16utility"] = "16 Utility",
        ["23fdems18suv"] = "18 SUV",
        ["23fdems18utility"] = "18 Utility",
        ["23fdems21suvsl"] = "21 SUV",
        ["23fskid"] = "Rescue Truck",
        ["21fireeng"] = "Fire Engine",
        ["21fireladder"] = "Ladder Truck",
        ["21firerescue"] = "Fire Rescuse",
	}, 
}

Config.Helicopter = "firehawk"

Config.Items = {
    label = Lang:t('info.safe'),
    slots = 30,
    items = {
        [1] = {
            name = "bandage",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "ifaks",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "firstaid",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "firebag",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_flashlight",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "radio",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "weapon_stungun",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "advancedrepairkit",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "weapon_fireextinguisher",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
    }
}

Config.VehicleSettings = {
--[[     ["firecharger"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            --["7"] = false,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["ENLADDER"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["fsilv"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = true,
            --["4"] = false,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["13fire"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["19firetahoe"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["legtahoe"] = {
        ["extras"] = {
            --["1"] = false,
            ["2"] = true,
            ["3"] = true,
            --["4"] = false,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["EMSF250"] = {
        ["extras"] = {
            --["1"] = false,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["legchgr"] = {
        ["extras"] = {
            --["1"] = false,
            --["2"] = false,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["legexp"] = {
        ["extras"] = {
            --["1"] = false,
            --["2"] = false,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["17silvrb"] = {
        ["extras"] = {
            --["1"] = false,
            ["2"] = true,
            --["3"] = false,
            ["4"] = true,
            ["5"] = true,
            --["6"] = false,
            ["7"] = true,
            ["8"] = true,
            --["9"] = false,
            --["10"] = false,
            ["11"] = true,
            ["12"] = true,
        }
    } ]]
}