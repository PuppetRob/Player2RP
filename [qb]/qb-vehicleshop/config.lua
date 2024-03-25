Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10                              -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05                       -- Percent that goes to sales person from a finance sale 5%
Config.PaymentWarning = 10                            -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24                           -- time in hours between payment being due
Config.MinimumDown = 10                               -- minimum percentage allowed down
Config.MaximumPayments = 24                           -- maximum payments allowed
Config.PreventFinanceSelling = true                  -- allow/prevent players from using /transfervehicle if financed
Config.FilterByMake = false                           -- adds a make list before selecting category in shops
Config.SortAlphabetically = true                      -- will sort make, category, and vehicle selection menus alphabetically
Config.HideCategorySelectForOne = true                -- will hide the category selection menu if a shop only sells one category of vehicle or a make has only one category
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-12.599020004272, -1081.4147949219),
                vector2(-26.946281433105, -1122.3208007812),
                vector2(-72.323661804199, -1121.291015625),
                vector2(-57.375183105469, -1077.1083984375),
                vector2(-44.452270507812, -1083.3212890625)
            },
            ['minZ'] = 25.0,  -- min height of the shop zone
            ['maxZ'] = 29.0,  -- max height of the shop zone
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'cardealer',                                            -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport',                 -- Blip name
        ['showBlip'] = false,                                         -- true or false
        ['blipSprite'] = 326,                                        -- Blip sprite
        ['blipColor'] = 3,   
        
        
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-15.14, -1080.07, 27.05), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-23.77, -1094.73, 27.31, 340.38), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-11.02, -1082.24, 27.05, 68.38), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-29.53, -1103.67, 26.42),          -- Where the finance menu is located
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-42.14, -1101.5, 26.3, 19.46), -- where the vehicle will spawn on display
                defaultVehicle = 'adder', -- Default display vehicle
                chosenVehicle = 'adder', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-54.58, -1097.09, 26.3, 31.02),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2'
            },
            [3] = {
                coords = vector4(-50.01, -1083.48, 26.3, 251.83),
                defaultVehicle = 'jester',
                chosenVehicle = 'jester'
            },
            [4] = {
                coords = vector4(-37.05, -1093.44, 26.3, 18.96),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero'
            },
            [5] = {
                coords = vector4(-47.3, -1091.95, 26.3, 94.8),
                defaultVehicle = 't20',
                chosenVehicle = 't20'
            },
        },
    },
    ['pdmx'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-1267.2431640625, -376.81649780273),
                vector2(-1275.2344970703, -356.0036315918),
                vector2(-1235.6983642578, -333.12744140625),
                vector2(-1225.3665771484, -353.48822021484)
            },
            ['minZ'] = 35.0,  -- min height of the shop zone
            ['maxZ'] = 42.0,  -- max height of the shop zone
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'PDMX',                 -- Blip name
        ['showBlip'] = false,                                         -- true or false
        ['blipSprite'] = 326,                                        -- Blip sprite
        ['blipColor'] = 3,   
        
        
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1251.36, -357.93, 36.91), -- Blip Location
        ['ReturnLocation'] = vector3(-1237.4, -340.85, 37.33), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1233.18, -347.16, 37.33, 19.59), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-1240.26, -355.58, 37.33, 289.09), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-1251.37, -347.04, 37.33),          -- Where the finance menu is located
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1255.74, -366.88, 37.17, 115.42), -- where the vehicle will spawn on display
                defaultVehicle = 'dominator', -- Default display vehicle
                chosenVehicle = 'dominator', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1269.78, -364.77, 37.18, 298.98),
                defaultVehicle = 'blista',
                chosenVehicle = 'blista'
            },
            [3] = {
                coords = vector4(-1271.13, -360.48, 37.18, 252.32),
                defaultVehicle = 'asterope',
                chosenVehicle = 'asterope'
            },
            [4] = {
                coords = vector4(-1268.65, -356.13, 37.18, 213.38),
                defaultVehicle = 'tailgater',
                chosenVehicle = 'tailgater'
            },
            [5] = {
                coords = vector4(-1264.32, -353.45, 37.18, 209.28),
                defaultVehicle = 'asbo',
                chosenVehicle = 'asbo'
            },
            [6] = {
                coords = vector4(-1242.99, -356.58, 40.57, 91.91),
                defaultVehicle = 'cavalcade',
                chosenVehicle = 'cavalcade'
            },
            [7] = {
                coords = vector4(-1245.53, -351.19, 40.57, 92.35),
                defaultVehicle = 'fq2',
                chosenVehicle = 'fq2'
            },
        },
    },
--[[     ['luxuryautos'] = {
        ['Type'] = 'managed', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                    vector2(-819.57, -198.22),
                    vector2(-791.2, -183.41),
                    vector2(-759.45, -239.1),
                    vector2(-789.36, -250.05)
            },
            ['minZ'] = 35.497299194336,
            ['maxZ'] = 39.516143798828,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'luxuryautos', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = false, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 1.5,
        ['Location'] = vector3(-790.59, -227.34, 37.25),
        ['ReturnLocation'] = vector3(-1235.29, -342.85, 37.33),
        ['VehicleSpawn'] = vector4(-773.79, -233.25, 37.21, 203.85),
        ['TestDriveSpawn'] = vector4(-769.79, -230.86, 37.21, 207.73), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-785.67, -224.18, 36.26, 43.56),
                defaultVehicle = '4runner',
                chosenVehicle = '4runner'
            },
            [2] = {
                coords = vector4(-794.63, -218.73, 36.25, 254.27),
                defaultVehicle = 'skyline',
                chosenVehicle = 'skyline'
            },
            [3] = {
                coords = vector4(-794.69, -208.34, 36.25, 177.91),
                defaultVehicle = 'vanz180sx',
                chosenVehicle = 'vanz180sx'
            },
            [4] = {
                coords = vector4(-803.89, -214.88, 36.1, 214.25),
                defaultVehicle = 'zentenario',
                chosenVehicle = 'zentenario'
            },
            [5] = {
                coords = vector4(-795.69, -229.3, 36.25, 260.55),
                defaultVehicle = 'rmodmi8lb',
                chosenVehicle = 'rmodmi8lb'
            }, 
            [6] = {
                coords = vector4(-787.28, -243.81, 36.25, 347.09),
                defaultVehicle = 'GODzLFTD21F150',
                chosenVehicle = 'GODzLFTD21F150'
            },
            [7] = {
                coords = vector4(-792.18, -235.76, 36.25, 276.89),
                defaultVehicle = 'GODz21M3',
                chosenVehicle = 'GODz21M3'
            },
            [8] = {
                coords = vector4(-784.52, -212.86, 36.55, 119.83),
                defaultVehicle = 'rmodchiron300',
                chosenVehicle = 'rmodchiron300'
            },
        }
    }, ]]  -- Add your next table under this comma
    --[[ ['tunerexotics'] = {
        ['Type'] = 'managed', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(172.36793518066, -3054.1955566406),
                vector2(172.25726318359, -3040.6088867188),
                vector2(119.11251068115, -3038.44921875),
                vector2(119.46514129639, -3051.7221679688)
            },
            ['minZ'] = 5.770562171936,
            ['maxZ'] = 6.0226130485535,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'tunerexotics', -- Name of job or none
        ['ShopLabel'] = 'Exotic Vehicle Shop',
        ['showBlip'] = false, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {
            ['customexotics'] = 'Custom Exotics',
            ['exclusiveexotics'] = 'Exclusive Exotics'
        },
        ['TestDriveTimeLimit'] = 1.5,
        ['Location'] = vector3(137.42, -3047.11, 7.04),
        ['ReturnLocation'] = vector3(138.14, -3042.73, 7.04),
        ['VehicleSpawn'] = vector4(162.69, -3035.64, 6.62, 272.09),
        ['TestDriveSpawn'] = vector4(162.69, -3035.64, 6.62, 272.09), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(126.11, -3041.25, 9.05, 269.34),
                defaultVehicle = 'rmod240sx',
                chosenVehicle = 'rmod240sx'
            },
            [2] = {
                coords = vector4(164.51, -3044.26, 4.85, 91.23),
                defaultVehicle = 'rmodsuprapandem',
                chosenVehicle = 'rmodsuprapandem'
            },
            [3] = {
                coords = vector4(164.72, -3050.27, 4.85, 268.69),
                defaultVehicle = 'vanzxkrs',
                chosenVehicle = 'vanzxkrs'
            },
--[[             [4] = {
                coords = vector4(-1265.33, -354.44, 36.18, 297.84),
                defaultVehicle = 'zentenario',
                chosenVehicle = 'zentenario'
            },
            [5] = {
                coords = vector4(-1242.0, -357.62, 39.57, 89.03),
                defaultVehicle = 'rmodmi8lb',
                chosenVehicle = 'rmodmi8lb'
            }, 
            [6] = {
                coords = vector4(-1244.12, -353.2, 39.57, 83.45),
                defaultVehicle = 'GODzC6FD',
                chosenVehicle = 'GODzC6FD'
            },
            [7] = {
                coords = vector4(-1234.03, -354.67, 36.33, 112.77),
                defaultVehicle = 'GODzLFTD21F150',
                chosenVehicle = 'GODzLFTD21F150'
            }, 
        }
    }, -- Add your next table under this comma ]]
     ['bikeshop'] = {
        ['Type'] = 'managed',  -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-48.2, 78.64),
                vector2(-58.06, 57.07),
                vector2(-92.06, 77.08),
                vector2(-82.57, 94.65)
            },
            ['minZ'] = 65.0,  -- min height of the shop zone
            ['maxZ'] = 75.0,  -- max height of the shop zone
            ['size'] = 3.0, -- size of the vehicles zones
        },
        ['Job'] = 'bikedealer', -- Name of job or none
        ['ShopLabel'] = 'Motorbike Shop', -- Blip name
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 251,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['TestDriveTimeLimit'] = 1, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(274.2, -1159.68, 29.27), -- Blip Location
        ['ReturnLocation'] = vector3(272.81, -1165.48, 29.27), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-82.65, 82.0, 71.47, 148.8), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-82.65, 82.0, 71.47, 148.8), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-70.82, 68.27, 70.89, 2.89), -- where the vehicle will spawn on display
                defaultVehicle = 'bagger', -- Default display vehicle
                chosenVehicle = 'bagger', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-74.03, 69.97, 70.89, 359.7),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
            },
            [3] = {
                coords = vector4(-77.23, 71.85, 70.89, 0.68),
                defaultVehicle = 'akuma',
                chosenVehicle = 'akuma',
            },
            [4] = {
                coords = vector4(-54.96, 67.85, 70.89, 86.56),
                defaultVehicle = 'manchez',
                chosenVehicle = 'manchez',
            },
            [5] = {
                coords = vector4(-56.09, 65.11, 70.89, 87.69),
                defaultVehicle = 'nightblade',
                chosenVehicle = 'nightblade',
            },
            [6] = {
                coords = vector4(-58.72, 62.42, 70.89, 105.93),
                defaultVehicle = 'pcj',
                chosenVehicle = 'pcj',
            },
            [7] = {
                coords = vector4(-61.97, 62.98, 70.89, 0.79),
                defaultVehicle = 'Diablous',
                chosenVehicle = 'Diablous',
            },
            [8] = {
                coords = vector4(-64.64, 64.44, 70.89, 3.47),
                defaultVehicle = 'double',
                chosenVehicle = 'double',
            },
            [9] = {
                coords = vector4(-67.51, 75.92, 70.89, 54.3),
                defaultVehicle = 'sanchez2',
                chosenVehicle = 'sanchez2',
            },
        },
    },
    ['boatshop'] = {
        ['Type'] = 'managed',  -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-784.87750244141, -1339.8852539062),
                vector2(-772.7734375, -1358.6984863281),
                vector2(-759.77056884766, -1377.3874511719),
                vector2(-778.57122802734, -1400.0246582031),
                vector2(-796.9580078125, -1422.0067138672),
                vector2(-839.51812744141, -1394.4301757812),
                vector2(-875.95361328125, -1401.7685546875),
                vector2(-896.24261474609, -1348.4434814453),
                vector2(-866.99829101562, -1328.7947998047)
            },
            ['minZ'] = -3.0,  -- min height of the shop zone
            ['maxZ'] = 10.0,  -- max height of the shop zone
            ['size'] = 6.2, -- size of the vehicles zones
        },
        ['Job'] = 'boatdealer', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 410,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-806.54, -1352.98, 5.18), -- Blip Location
        ['ReturnLocation'] = vector3(-852.67, -1391.49, -0.47), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-858.69, -1383.73, -0.47, 189.3), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-858.69, -1383.73, -0.47, 189.3), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-798.86, -1345.22, 4.42, 150.1), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-801.87, -1344.78, 4.42, 150.1),
                defaultVehicle = 'seashark2',
                chosenVehicle = 'seashark2',
            },
            [3] = {
                coords = vector4(-804.8, -1344.18, 4.42, 150.1),
                defaultVehicle = 'seashark3',
                chosenVehicle = 'seashark3',
            },
            [4] = {
                coords = vector4(-814.93, -1360.63, 4.2, 200.64),
                defaultVehicle = 'tropic',
                chosenVehicle = 'tropic',
            },
            [5] = {
                coords = vector4(-845.3, -1362.19, -0.47, 100.75),
                defaultVehicle = 'tropic',
                chosenVehicle = 'tropic',
            },
            [6] = {
                coords = vector4(-847.12, -1352.49, -0.48, 107.22),
                defaultVehicle = 'tropic',
                chosenVehicle = 'tropic',
            },
        },
    },  
    ['airshop'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99,                                            -- min height of the shop zone
            ['maxZ'] = 16.99,                                            -- max height of the shop zone
            ['size'] = 7.0,                                              -- size of the vehicles zones
        },
        ['Job'] = 'airdealer',                                                -- Name of job or none
        ['ShopLabel'] = 'Air Shop',                                      -- Blip name
        ['showBlip'] = false,                                             -- true or false
        ['blipSprite'] = 251,                                            -- Blip sprite
        ['blipColor'] = 3,                                               -- Blip color
        ['TestDriveTimeLimit'] = 1.5,                                    -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99),                -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94),          -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2),    -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-1619.52, -3152.64, 14.0),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus',                          -- Default display vehicle
                chosenVehicle = 'volatus'                            -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
    ['truckshop'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(804.01196289062, -3227.16015625),
                vector2(873.48577880859, -3229.3405761719),
                vector2(870.15905761719, -3183.185546875),
                vector2(805.25109863281, -3186.0502929688)
            },
            ['minZ'] = 5.8933277130127,
            ['maxZ'] = 6.0002326965332,                                       -- max height of the shop zone
            ['size'] = 5.75,                                          -- size of the vehicles zones
        },
        ['Job'] = 'truckdealer',                                            -- Name of job or none
        ['ShopLabel'] = 'Truck Motor Shop',                          -- Blip name
        ['showBlip'] = false,                                         -- true or false
        ['blipSprite'] = 477,                                        -- Blip sprite
        ['blipColor'] = 2,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(850.82, -3217.95, 5.9),             -- Blip Location
        ['ReturnLocation'] = vector3(850.82, -3217.95, 5.9),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(834.27, -3208.95, 5.9, 179.07), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(826.72, -3208.84, 5.9, 179.07), -- Spawn location for test drive
        ['FinanceZone'] = vector3(900.46, -1154.86, 25.16),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(866.42, -3226.03, 5.9, 86.06), -- where the vehicle will spawn on display
                defaultVehicle = 'hauler',                         -- Default display vehicle
                chosenVehicle = 'hauler',                          -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(855.08, -3226.01, 5.9, 86.83),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
            [3] = { 
                coords = vector4(843.64, -3225.86, 5.9, 91.9),
                defaultVehicle = 'mule',
                chosenVehicle = 'mule'
            }, 
            [4] = {
                coords = vector4(814.21, -3197.44, 5.9, 185.93),
                defaultVehicle = 'mixer',
                chosenVehicle = 'mixer'
            },
            [5] = {
                coords = vector4(855.07, -3209.37, 5.9, 178.53),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
            [6] = {
                coords = vector4(848.35, -3208.25, 5.9, 185.92),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
        },
    }, 
}
