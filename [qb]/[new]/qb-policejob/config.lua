Config = {}

Config.Objects = {
    ["cone"] = {model = `prop_roadcone02a`, freeze = false},
    ["barrier"] = {model = `prop_barrier_work06a`, freeze = true},
    ["roadsign"] = {model = `prop_snow_sign_road_06g`, freeze = true},
    ["tent"] = {model = `prop_gazebo_03`, freeze = true},
    ["light"] = {model = `prop_worklight_03b`, freeze = true},
}

Config.MaxSpikes = 5

Config.HandCuffItem = 'handcuffs'
Config.CuffKeyItem = "cuffkeys"
Config.TieItem = 'ziptie'
Config.CutTieItem = 'flush_cutter'
Config.CutCuffItem = 'robbery_boltcutter_01'
Config.BrokenCuffItem = 'broken_handcuffs'
Config.BreakOutCuffing = true               -- Enable cuff breaking
Config.BreakOutAttempts = 1                 -- Max number of attempts to break cuffs
Config.BreakOutTimeToReset = 30             -- Time in minutes to reset 1 attempt

Config.AllowWashGunpowder = true            -- Wash gunpowder off hands

-- itemname = name of the item
-- propname = the prop used for cuffing
-- needkey = does the cuff needs a key to uncuff ? It will give a key when true
-- keyitem = what is the item used to uncuff
-- cufftype = the animation type. 19 - ped is freezed / 49 - ped can move with cuffs
Config.CuffItems = {
    ['handcuffs'] = {itemname = "handcuffs", propname = "p_cs_cuffs_02_s", needkey = true, keyitem = "cuffkeys", cufftype = 19 },
    ['ziptie'] = {itemname = "ziptie", propname = "ba_prop_battle_cuffs", needkey = false, keyitem = "flush_cutter", cufftype = 49}
}

Config.LicenseRank = 2
Config.BlockWallThermals = true -- true/false; lowers thermal cam intensity to stop penetration through walls or tunnels
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.Locations = {
    ["duty"] = {
        [1] = vector3(441.21, -981.96, 30.69), -- LSPD MRPD
        [2] = vector3(382.55, -1596.87, 30.05), -- BCSO Davis
        [3] = vector3(-447.4, 6015.02, 32.29), -- BCSO Paleto 
        [4] = vector3(1831.8, 3680.71, 34.34), -- BCSO Sandy 
        [5] = vector3(-814.51, 5390.56, 35.87), -- Game Warden
    },
    ["vehicle"] = {
        [1] = vector4(442.46, -986.46, 25.7, 268.01), -- LSPD MRPD 
        [2] = vector4(374.9, -1631.0, 29.29, 314.3), -- BCSO Davis
        [3] = vector4(-459.72, 6030.1, 31.49, 38.86), -- BCSO Paleto
        [4] = vector4(1822.04, 3684.57, 34.33, 115.49), -- BCSO Sandy
        [5] = vector4(-801.97, 5401.25, 35.86, 354.0), -- Game Warden
    },
    ["vehspawn"] = { -- The numbers [1] must match the numbers in [vehicle]
        [1] = vector4(440.62, -981.27, 25.7, 87.73), -- MRPD
        [2] = vector4(379.98, -1626.91, 29.29, 313.78), -- BCSO Davis
        [3] = vector4(-475.29, 6031.22, 31.34, 232.08), -- BCSO Paleto
        [4] = vector4(1858.31, 3693.36, 33.87, 205.3), -- BCSO Sandy
        [5] = vector4(-799.1, 5408.81, 33.91, 26.79), -- Game Warden
    },
    ["stash"] = {
        [1] = vector3(460.41, -995.93, 30.69), -- LSPD MRPD
        [2] = vector3(360.02, -1593.51, 25.45), -- BCSO Davis
        [3] = vector3(-436.57, 6009.85, 37.0), -- BCSO Paleto 
        [4] = vector3(1850.04, 3677.09, 38.93), -- BCSO Sandy
        [5] = vector3(-819.87, 5389.68, 35.87), -- Game Warden
    },
    ["impound"] = {
        [1] = vector4(-309.31, 6117.72, 31.52, 308.79), -- DAVIS
    },
    ["helicopter"] = {
        [1] = vector4(449.39, -981.02, 43.69, 139.29), -- LSPD MRPD
        [2] = vector4(-475.56, 5988.84, 31.34, 210.67), -- Paleto BCSO
    },
    ["helispawn"] = { -- The numbers [1] must match the numbers in [helicopter]
        [1] = vector4(449.16, -981.23, 43.69, 165.79), -- LSPD
        [2] = vector4(-475.18, 5988.43, 31.72, 317.27), -- BCSO
    },
    ["armory"] = {
        [1] = vector3(482.44, -995.26, 30.69), -- LSPD MRPD
        [2] = vector3(364.56, -1603.82, 25.45), -- BCSO Davis
        [3] = vector3(-449.34, 6015.22, 37.0), -- BCSO Paleto 
        [4] = vector3(1836.99, 3682.48, 38.93), -- Sandy BCSO
        [5] = vector3(-820.38, 5399.34, 35.87), -- Game Warden
    },
    ["fridge"] = {
        [1] = vector3(463.35, -980.21, 30.76), -- MRPD
        [2] = vector3(-450.06, 6009.91, 31.61), -- BCSO
    },
    ["trash"] = {
        [1] = vector3(450.32, -977.74, 30.69), -- LSPD MRPD
        [2] = vector3(356.74, -1598.27, 31.05), -- Davis BCSO
        [3] = vector3(-447.9, 6017.42, 32.29), -- Paleto BCSO
        [4] = vector3(1843.01, 3683.97, 34.33), -- Sandy  BCSO
        [5] = vector3(-792.24, 5387.23, 35.87), -- Game Warden  
    },
    ["fingerprint"] = {
        [1] = vector3(473.15, -1007.5, 26.27), -- MRPD
        [2] = vector3(380.09, -1602.72, 25.45), -- Davis BCSO
        [3] = vector3(-452.62, 5998.02, 27.58), -- Paleto BCSO
        [4] = vector3(1845.25, 3690.08, 34.34), -- Sandy BCSO
        [5] = vector3(-801.93, 5388.18, 29.31), -- Game Warden
    },
    ["evidence"] = {
        [1] = vector3(448.89, -997.62, 30.69), -- LSPD MRPD
        [2] = vector3(381.34, -1608.97, 30.2), -- BSCO Davis
        [3] = vector3(-452.75, 5999.63, 37.01), -- BCSO Paleto 
        [4] = vector3(1857.42, 3679.83, 34.33), -- BCSO Sandy 
        [5] = vector3(-832.05, 5399.35, 35.87), -- Game Warden
    },
    ["stations"] = {
--[[         [1] = {label = "LSPD MRPD", coords = vector4(441.21, -981.79, 30.69, 358.66)},
        [2] = {label = "BCSO Davis", coords = vector4(372.07, -1600.69, 30.05, 272.249)},
        [3] = {label = "BCSO Paleto", coords = vector4(-451.54, 6014.25, 44.01, 272.249)},
        [4] = {label = "BCSO Sandy", coords = vector4(1853.72, 3686.15, 34.28, 272.249)},
        [5] = {label = "Highway Patrol", coords = vector4(1541.14, 817.28, 77.66, 223.81)},
        [6] = {label = "SAST", coords = vector4(837.32, -1292.75, 28.24, 254.63)},
        [7] = {label = "Game Warden", coords = vector4(-814.52, 5397.56, 35.87, 178.29)}, ]]
    },
}

Config.PoliceHelicopter = "as350"

Config.SecurityCameras = {
    hideradar = false,
    cameras = {
        [1] = {label = "Pacific Bank CAM#1", coords = vector3(257.45, 210.07, 109.08), r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = false, isOnline = true},
        [2] = {label = "Pacific Bank CAM#2", coords = vector3(232.86, 221.46, 107.83), r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = false, isOnline = true},
        [3] = {label = "Pacific Bank CAM#3", coords = vector3(252.27, 225.52, 103.99), r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = false, isOnline = true},
        [4] = {label = "Limited Ltd Grove St. CAM#1", coords = vector3(-53.1433, -1746.714, 31.546), r = {x = -35.0, y = 0.0, z = -168.9182}, canRotate = false, isOnline = true},
        [5] = {label = "Rob's Liqour Prosperity St. CAM#1", coords = vector3(-1482.9, -380.463, 42.363), r = {x = -35.0, y = 0.0, z = 79.53281}, canRotate = false, isOnline = true},
        [6] = {label = "Rob's Liqour San Andreas Ave. CAM#1", coords = vector3(-1224.874, -911.094, 14.401), r = {x = -35.0, y = 0.0, z = -6.778894}, canRotate = false, isOnline = true},
        [7] = {label = "Limited Ltd Ginger St. CAM#1", coords = vector3(-718.153, -909.211, 21.49), r = {x = -35.0, y = 0.0, z = -137.1431}, canRotate = false, isOnline = true},
        [8] = {label = "24/7 Supermarkt Innocence Blvd. CAM#1", coords = vector3(23.885, -1342.441, 31.672), r = {x = -35.0, y = 0.0, z = -142.9191}, canRotate = false, isOnline = true},
        [9] = {label = "Rob's Liqour El Rancho Blvd. CAM#1", coords = vector3(1133.024, -978.712, 48.515), r = {x = -35.0, y = 0.0, z = -137.302}, canRotate = false, isOnline = true},
        [10] = {label = "Limited Ltd West Mirror Drive CAM#1", coords = vector3(1151.93, -320.389, 71.33), r = {x = -35.0, y = 0.0, z = -119.4468}, canRotate = false, isOnline = true},
        [11] = {label = "24/7 Supermarkt Clinton Ave CAM#1", coords = vector3(383.402, 328.915, 105.541), r = {x = -35.0, y = 0.0, z = 118.585}, canRotate = false, isOnline = true},
        [12] = {label = "Limited Ltd Banham Canyon Dr CAM#1", coords = vector3(-1832.057, 789.389, 140.436), r = {x = -35.0, y = 0.0, z = -91.481}, canRotate = false, isOnline = true},
        [13] = {label = "Rob's Liqour Great Ocean Hwy CAM#1", coords = vector3(-2966.15, 387.067, 17.393), r = {x = -35.0, y = 0.0, z = 32.92229}, canRotate = false, isOnline = true},
        [14] = {label = "24/7 Supermarkt Ineseno Road CAM#1", coords = vector3(-3046.749, 592.491, 9.808), r = {x = -35.0, y = 0.0, z = -116.673}, canRotate = false, isOnline = true},
        [15] = {label = "24/7 Supermarkt Barbareno Rd. CAM#1", coords = vector3(-3246.489, 1010.408, 14.705), r = {x = -35.0, y = 0.0, z = -135.2151}, canRotate = false, isOnline = true},
        [16] = {label = "24/7 Supermarkt Route 68 CAM#1", coords = vector3(539.773, 2664.904, 44.056), r = {x = -35.0, y = 0.0, z = -42.947}, canRotate = false, isOnline = true},
        [17] = {label = "Rob's Liqour Route 68 CAM#1", coords = vector3(1169.855, 2711.493, 40.432), r = {x = -35.0, y = 0.0, z = 127.17}, canRotate = false, isOnline = true},
        [18] = {label = "24/7 Supermarkt Senora Fwy CAM#1", coords = vector3(2673.579, 3281.265, 57.541), r = {x = -35.0, y = 0.0, z = -80.242}, canRotate = false, isOnline = true},
        [19] = {label = "24/7 Supermarkt Alhambra Dr. CAM#1", coords = vector3(1966.24, 3749.545, 34.143), r = {x = -35.0, y = 0.0, z = 163.065}, canRotate = false, isOnline = true},
        [20] = {label = "24/7 Supermarkt Senora Fwy CAM#2", coords = vector3(1729.522, 6419.87, 37.262), r = {x = -35.0, y = 0.0, z = -160.089}, canRotate = false, isOnline = true},
        [21] = {label = "Fleeca Bank Hawick Ave CAM#1", coords = vector3(309.341, -281.439, 55.88), r = {x = -35.0, y = 0.0, z = -146.1595}, canRotate = false, isOnline = true},
        [22] = {label = "Fleeca Bank Legion Square CAM#1", coords = vector3(144.871, -1043.044, 31.017), r = {x = -35.0, y = 0.0, z = -143.9796}, canRotate = false, isOnline = true},
        [23] = {label = "Fleeca Bank Hawick Ave CAM#2", coords = vector3(-355.7643, -52.506, 50.746), r = {x = -35.0, y = 0.0, z = -143.8711}, canRotate = false, isOnline = true},
        [24] = {label = "Fleeca Bank Del Perro Blvd CAM#1", coords = vector3(-1214.226, -335.86, 39.515), r = {x = -35.0, y = 0.0, z = -97.862}, canRotate = false, isOnline = true},
        [25] = {label = "Fleeca Bank Great Ocean Hwy CAM#1", coords = vector3(-2958.885, 478.983, 17.406), r = {x = -35.0, y = 0.0, z = -34.69595}, canRotate = false, isOnline = true},
        [26] = {label = "Paleto Bank CAM#1", coords = vector3(-102.939, 6467.668, 33.424), r = {x = -35.0, y = 0.0, z = 24.66}, canRotate = false, isOnline = true},
        [27] = {label = "Del Vecchio Liquor Paleto Bay", coords = vector3(-163.75, 6323.45, 33.424), r = {x = -35.0, y = 0.0, z = 260.00}, canRotate = false, isOnline = true},
        [28] = {label = "Don's Country Store Paleto Bay CAM#1", coords = vector3(166.42, 6634.4, 33.69), r = {x = -35.0, y = 0.0, z = 32.00}, canRotate = false, isOnline = true},
        [29] = {label = "Don's Country Store Paleto Bay CAM#2", coords = vector3(163.74, 6644.34, 33.69), r = {x = -35.0, y = 0.0, z = 168.00}, canRotate = false, isOnline = true},
        [30] = {label = "Don's Country Store Paleto Bay CAM#3", coords = vector3(169.54, 6640.89, 33.69), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = false, isOnline = true},
        [31] = {label = "Vangelico Jewelery CAM#1", coords = vector3(-627.54, -239.74, 40.33), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [32] = {label = "Vangelico Jewelery CAM#2", coords = vector3(-627.51, -229.51, 40.24), r = {x = -35.0, y = 0.0, z = -95.78}, canRotate = true, isOnline = true},
        [33] = {label = "Vangelico Jewelery CAM#3", coords = vector3(-620.3, -224.31, 40.23), r = {x = -35.0, y = 0.0, z = 165.78}, canRotate = true, isOnline = true},
        [34] = {label = "Vangelico Jewelery CAM#4", coords = vector3(-622.57, -236.3, 40.31), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
    },
}

Config.UseGarage = true -- Set to True to use script vehicles, false if you have a separate job garage script (ex: cd_garage)
Config.GaragePedModel = "s_m_y_hwaycop_01"

Config.EnableMods = false -- Enable the mods below to be applied
Config.CarMods = { -- Mods to be enabled / disabled for vehicles
    engine = false,
    brakes = false,
    gearbox = false,
    armour = false,
    turbo = false,
}
Config.EnableExtras = true
Config.CarExtras = { -- Extra options to be enabled / disabled
    ["extras"] = {
        ["1"] = true, -- on/off
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
        ["13"] = true,
    }
}   



Config.AuthorizedVehicles = {
    -- Garage 1 vehicles (LSPD MRPD )  price = 500}
    [1] = {
        ["tomar11sedan"] = {label = "2011 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, livery = 0, price = 500},
        ["tomar14sedan"] = {label = "2014 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, livery = 0, price = 500},
        ["tomar16sedan"] = {label = "2016 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, livery = 0, price = 500},
        ["tomar16utility"] = {label = "2016 Utility", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, livery = 0, price = 500},
        ["tomar18sedan"] = {label = "18 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, livery = 0, price = 500},
        ["tomar18suv"] = {label = "2018 SUV", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, livery = 0, price = 500},
        ["tomar20utility"] = {label = "2020 Utility", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, livery = 0, price = 500},
        ["tomar181500"] = {label = "2018 1500", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, livery = 0, price = 500},
        ["tomar202500"] = {label = "2020 2500", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, livery = 0, price = 500},
    },
    -- Garage 2 vehicles (BCSO Davis)
    [2] = {
        ["valor11sedan"] = {label = "Vic Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor13sedan"] = {label = "13 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor13suv"] = {label = "14 SUV", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor14sedan"] = {label = "14 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor16sedan"] = {label = "16 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor16utility"] = {label = "16 Utility", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor18sedan"] = {label = "18 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor151500"] = {label = "Generic 150", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor162500"] = {label = "Generic 250", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valormotor"] = {label = "MBU", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
    },
    -- Garage 1 vehicles (BCSO Paleto)
    [3] = {
        ["valor11sedan"] = {label = "Vic Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor13sedan"] = {label = "13 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor13suv"] = {label = "14 SUV", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500}, livery = 0
        ["valor14sedan"] = {label = "14 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor16sedan"] = {label = "16 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor16utility"] = {label = "16 Utility", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor18sedan"] = {label = "18 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor151500"] = {label = "Generic 150", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor162500"] = {label = "Generic 250", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valormotor"] = {label = "MBU", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
    },
    -- Garage 1 vehicles (BCSO Sandy)
    [4] = {
        ["valor11sedan"] = {label = "Vic Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor13sedan"] = {label = "13 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor13suv"] = {label = "14 SUV", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor14sedan"] = {label = "14 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor16sedan"] = {label = "16 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor16utility"] = {label = "16 Utility", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor18sedan"] = {label = "18 Sedan", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor151500"] = {label = "Generic 150", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valor162500"] = {label = "Generic 250", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
        ["valormotor"] = {label = "MBU", ranks = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, livery = 0, price = 500},
    }, 
     -- Garage 1 vehicles (Game Warden)
    [5] = {
        ["police"] = {label = "Temp Vehicle", ranks = {0, 1, 2, 3, 4}, livery = 0, price = 500},
    },
}

Config.AmmoLabels = {
    ["AMMO_PISTOL"] = "9x19mm parabellum bullet",
    ["AMMO_SMG"] = "9x19mm parabellum bullet",
    ["AMMO_RIFLE"] = "7.62x39mm bullet",
    ["AMMO_MG"] = "7.92x57mm mauser bullet",
    ["AMMO_SHOTGUN"] = "12-gauge bullet",
    ["AMMO_SNIPER"] = "Large caliber bullet",
}

Config.Radars = {
	vector4(-623.44421386719, -823.08361816406, 25.25704574585, 145.0),
	vector4(-652.44421386719, -854.08361816406, 24.55704574585, 325.0),
	vector4(1623.0114746094, 1068.9924316406, 80.903594970703, 84.0),
	vector4(-2604.8994140625, 2996.3391113281, 27.528566360474, 175.0),
	vector4(2136.65234375, -591.81469726563, 94.272926330566, 318.0),
	vector4(2117.5764160156, -558.51013183594, 95.683128356934, 158.0),
	vector4(406.89505004883, -969.06286621094, 29.436267852783, 33.0),
	vector4(657.315, -218.819, 44.06, 320.0),
	vector4(2118.287, 6040.027, 50.928, 172.0),
	vector4(-106.304, -1127.5530, 30.778, 230.0),
	vector4(-823.3688, -1146.980, 8.0, 300.0),
}

Config.CarItems = { 
    [1] = {name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 1},
    [2] = {name = "gsrtestkit", amount = 3, info = {}, type = "item", slot = 2},
    [3] = {name = "dnatestkit", amount = 3, info = {}, type = "item", slot = 3},
    [4] = {name = "drugtestkit", amount = 3, info = {}, type = "item", slot = 4},
    [5] = {name = "breathalyzer", amount = 1, info = {}, type = "item", slot = 5},
    [6] = {name = "fingerprintkit", amount = 3, info = {}, type = "item", slot = 6},

}

Config.Items = {
    label = "Police Armory",
    slots = 50,
    items = {
        [1] = {
            name = "weapon_combatpistol",
            price = 0,
            amount = 1,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_PI_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 1,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [2] = {
            name = "weapon_stungun",
            price = 0,
            amount = 1,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 2,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [3] = {
            name = "weapon_pumpshotgun",
            price = 0,
            amount = 1,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 3,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [4] = {
            name = "weapon_smg",
            price = 0,
            amount = 1,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_SCOPE_MACRO_02", label = "1x Scope"},
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 4,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [5] = {
            name = "weapon_carbinerifle",
            price = 0,
            amount = 1,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                    {component = "COMPONENT_AT_SCOPE_MEDIUM", label = "3x Scope"},
                }
            },
            type = "weapon",
            slot = 5,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [6] = {
            name = "weapon_nightstick",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 6,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [7] = {
            name = "pistol_ammo",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 7,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [8] = {
            name = "smg_ammo",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 8,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [9] = {
            name = "shotgun_ammo",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 9,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [10] = {
            name = "rifle_ammo",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 10,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [11] = {
            name = "handcuffs",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 11,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [12] = {
            name = "weapon_flashlight",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 12,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [13] = {
            name = "armor",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 13,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [14] = {
            name = "empty_evidence_bag",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 14,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [15] = {
            name = "radio",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 15,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [16] = {
            name = "nikon",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 16,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [17] = {
            name = "gsrtestkit",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 17,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [18] = {
            name = "dnatestkit",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 18,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [19] = { 
            name = "drugtestkit",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 19,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [20] = {
            name = "breathalyzer",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 20,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [21] = {
            name = "accesstool",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 21,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [22] = {
            name = "fingerprintreader",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 22,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [23] = {
            name = "sdcard",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 23,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [24] = { 
            name = "fingerprintkit",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 24,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [25] = {
            name = "mikrosil",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 25,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [26] = { 
            name = "fingerprinttape",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 26,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [27] = {
            name = "bodycam",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 27,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [28] = {
            name = "ifaks",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 28,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        }, 
        [29] = {
            name = "diving_gear",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 29,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [30] = {
            name = "diving_fill",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 30,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
    }
}


Config.Food = {
    label = 'Police Fridge',
    slots = 5,
    items = {
        [1] = {
            name = "protein_bar",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "vita_water",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 2,
        },
    }
}