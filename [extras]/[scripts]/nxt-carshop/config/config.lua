Controlkey = {["generalUse"] = {38,"E"},["generalUseSecondary"] = {18,"Enter"}}

Config = {}
Config.Framework = "QBCore" -- QBCore / ESX
Config.CoreName = "qb-core" -- qb-core / es_extended

Config.Debug = false -- #### DISABLE THIS TO SERVER PRODUCTION 

Config.CarDealerDefinesPrice = false
Config.PercentageOverPrice = 15 -- 0 / 100

Config.PermitShowAllVehiclesInShowroom = true

Config.OpenPanelCommand = ""
Config.OpenCatalogCommand = ""

Config.Database = 'oxmysql' --[ mysql / ghmattimysql / oxmysql ]. Choose your sql script. 

Config.UseTarget = true -- only available for qbcore

Config.Locale = 'en' --[ 'EN' / 'FR' / 'ES' / 'CZ' / 'PT' ]. (You can add your own locales to the locales.lua. But make sure to add it here).

Config.PlateLetters  = 4
Config.PlateNumbers  = 4
Config.PlateUseSpace = false

Config.SpawnVehicle = true  -- TRUE if you want spawn vehicle when buy
Config.TestDriveTime = 30   -- TIME in SEC

Config.Shops = {}

Config.ESX_BOSS_GRADE = 4

Config.Shops["pdm"] = {

    Group = "pdm",

    VehicleCategoryDenied = { "motorcycles", "utility", "planes", "helicopters", "boats", "commercial"},

    Camera = vector4(-80.18, -820.55, 286.0, 250.2),

    CameraOffset = vector3(-10.0, 0.0, 250.0),

    PolyZone = {
        vector2(-12.599020004272, -1081.4147949219),
        vector2(-26.946281433105, -1122.3208007812),
        vector2(-72.323661804199, -1121.291015625),
        vector2(-57.375183105469, -1077.1083984375),
        vector2(-44.452270507812, -1083.3212890625)
    },

    TestDrive = true, -- TRUE if you want enable test drive

    TestDriveCoords = { x = -11.87, y = -1080.87, z = 25.71, h = 132.0 },

    FinanceTax = 3, --- VALUE == 3%

    AcceptFinancing = false,

    ShopCoords = vector3(-46.119, -1102.759, 26.422),

    isVehicleNetwork = true,

    VehicleSpawnPosition = vector4(-73.17, -822.73, 284.33, 107.42),

    SpawnVehicleWhenBuy = true,

    InteractionsCoords = 
    {
        -- Emit bill
     --   { location = vector3(-55.5656, -1097.363, 26.318), heading = 0.0, width = 0.6, height = 0.5, minZ = 26.0, maxZ = 26.6, distance = 1.8, label = "Check Invoices", icon = "fas fa-user-check", event = "CARSHOP:OpenDashboardClient", eventID = "checkInvoices" },
        -- Catalog
        { location = vector3(-46.81, -1095.9, 27.27), heading = 160, width = 1.5, height = 0.6, minZ = 26.36, maxZ = 28.9, distance = 2.0, label = "Open Catalog", icon = "fas fa-box-open", event = "CARSHOP:OpenCarShop", eventID = "Shelf" },
        -- BossMenu
     --   { location = vector3(-30.1007, -1105.801, 26.226), heading = 70, width = 2.5, height = 1.2, minZ = 26.16, maxZ = 26.9, distance = 2.0, label = "Open Boss Menu", icon = "fas fa-box-open", event = "CARSHOP:OpenDashboard", eventID = "Shelf", job = "pdm" },
    },

    Spawns = {
--[[         { ["x"] = -45.4585, ["y"] = -1116.514, ["z"] = 25.759, ["h"] = 2.751  }, -- frente
        { ["x"] = -17.484, ["y"] = -1079.51, ["z"] = 25.99, ["h"] = 126.978  }, -- tras
        { ["x"] =  -14.530, ["y"] = -1080.78, ["z"] = 25.998, ["h"] = 125.728  }, -- tras
        { ["x"] = -8.557, ["y"] = -1082.37, ["z"] = 26.00, ["h"] = 129.832 }, -- tras
        { ["x"] = -10.5583, ["y"] = -1096.834, ["z"] = 25.998, ["h"] = 101.54 }, -- lado
        { ["x"] = -11.314, ["y"] = -1099.72, ["z"] = 25.997, ["h"] = 101.338   } -- lado ]]
    },

    ShowroomCoords = {
--[[         { ["x"] = -38.25, ["y"] = -1104.18, ["z"] = 26.43, ["h"] = 14.46  },
        { ["x"] = -36.36, ["y"] = -1097.30, ["z"] = 26.43, ["h"] = 109.4  },
        { ["x"] = -43.11, ["y"] = -1095.02, ["z"] = 26.43, ["h"] = 67.77  },
        { ["x"] = -50.45, ["y"] = -1092.66, ["z"] = 26.43, ["h"] = 116.33 },
        { ["x"] = -49.73, ["y"] = -1098.63, ["z"] = 26.43, ["h"] = 240.99 },
        { ["x"] = -45.58, ["y"] = -1101.40, ["z"] = 26.43, ["h"] = 287.3  } ]]
    },

    Init = function()
        RemoveIpl("shr_int")
        RequestIpl("shr_int")

        DisableInteriorProp(7170, "csr_beforeMission")
        DisableInteriorProp(7170, "csr_inMission")
        DisableInteriorProp(7170, "csr_afterMissionA")
        DisableInteriorProp(7170, "csr_afterMissionB")
        EnableInteriorProp(7170, "csr_beforeMission")

        -- DisableInteriorProp(7170, "shutter_open")
        -- DisableInteriorProp(7170, "shutter_closed")
        -- EnableInteriorProp(7170, "shutter_closed")

        RefreshInterior(7170)

--[[         local blip = AddBlipForCoord(Config.Shops["pdm"]["ShopCoords"])
        SetBlipSprite(blip, 326)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Premium Deluxe Motorsport")
        EndTextCommandSetBlipName(blip)
        SetBlipAsShortRange(blip, true)
        SetBlipAsMissionCreatorBlip(blip, true)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 3) ]]
    end,
}

Config.Shops["luxuryautos"] = {

    Group = "luxuryautos",

    VehicleCategoryDenied = { "motorcycles", "utility", "planes", "helicopters", "boats", "commercial"},

    Camera = vector4(-80.18, -820.55, 286.0, 250.2),

    CameraOffset = vector3(-10.0, 0.0, 250.0),

    PolyZone = {
        vector2(-819.57, -198.22),
        vector2(-791.2, -183.41),
        vector2(-759.45, -239.1),
        vector2(-789.36, -250.05)
    },

    TestDrive = true, -- TRUE if you want enable test drive

    TestDriveCoords = { x = -770.07, y = -230.86, z = 37.21, h = 208.22 },

    FinanceTax = 3, --- VALUE == 3%

    AcceptFinancing = false,

    ShopCoords = vector3(-790.59, -227.34, 37.25),

    isVehicleNetwork = true,

    VehicleSpawnPosition = vector4(-773.8, -233.05, 37.21, 205.68),

    SpawnVehicleWhenBuy = true,

    InteractionsCoords = 
    {
        -- Emit bill
     --   { location = vector3(-55.5656, -1097.363, 26.318), heading = 0.0, width = 0.6, height = 0.5, minZ = 26.0, maxZ = 26.6, distance = 1.8, label = "Check Invoices", icon = "fas fa-user-check", event = "CARSHOP:OpenDashboardClient", eventID = "checkInvoices" },
        -- Catalog
        { location = vector3(-799.39, -220.46, 37.25), heading = 160, width = 1.5, height = 0.6, minZ = 36.36, maxZ = 39.9, distance = 2.0, label = "Open Catalog", icon = "fas fa-box-open", event = "CARSHOP:OpenCarShop", eventID = "Shelf" },
        -- BossMenu
     --   { location = vector3(-30.1007, -1105.801, 26.226), heading = 70, width = 2.5, height = 1.2, minZ = 26.16, maxZ = 26.9, distance = 2.0, label = "Open Boss Menu", icon = "fas fa-box-open", event = "CARSHOP:OpenDashboard", eventID = "Shelf", job = "pdm" },
    },

    Spawns = {
--[[         { ["x"] = -45.4585, ["y"] = -1116.514, ["z"] = 25.759, ["h"] = 2.751  }, -- frente
        { ["x"] = -17.484, ["y"] = -1079.51, ["z"] = 25.99, ["h"] = 126.978  }, -- tras
        { ["x"] =  -14.530, ["y"] = -1080.78, ["z"] = 25.998, ["h"] = 125.728  }, -- tras
        { ["x"] = -8.557, ["y"] = -1082.37, ["z"] = 26.00, ["h"] = 129.832 }, -- tras
        { ["x"] = -10.5583, ["y"] = -1096.834, ["z"] = 25.998, ["h"] = 101.54 }, -- lado
        { ["x"] = -11.314, ["y"] = -1099.72, ["z"] = 25.997, ["h"] = 101.338   } -- lado ]]
    },

    ShowroomCoords = {
--[[         { ["x"] = -38.25, ["y"] = -1104.18, ["z"] = 26.43, ["h"] = 14.46  },
        { ["x"] = -36.36, ["y"] = -1097.30, ["z"] = 26.43, ["h"] = 109.4  },
        { ["x"] = -43.11, ["y"] = -1095.02, ["z"] = 26.43, ["h"] = 67.77  },
        { ["x"] = -50.45, ["y"] = -1092.66, ["z"] = 26.43, ["h"] = 116.33 },
        { ["x"] = -49.73, ["y"] = -1098.63, ["z"] = 26.43, ["h"] = 240.99 },
        { ["x"] = -45.58, ["y"] = -1101.40, ["z"] = 26.43, ["h"] = 287.3  } ]]
    },

    Init = function()
        RemoveIpl("shr_int")
        RequestIpl("shr_int")

        DisableInteriorProp(7170, "csr_beforeMission")
        DisableInteriorProp(7170, "csr_inMission")
        DisableInteriorProp(7170, "csr_afterMissionA")
        DisableInteriorProp(7170, "csr_afterMissionB")
        EnableInteriorProp(7170, "csr_beforeMission")

        -- DisableInteriorProp(7170, "shutter_open")
        -- DisableInteriorProp(7170, "shutter_closed")
        -- EnableInteriorProp(7170, "shutter_closed")

        RefreshInterior(7170)

--[[         local blip = AddBlipForCoord(Config.Shops["pdm"]["ShopCoords"])
        SetBlipSprite(blip, 326)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Premium Deluxe Motorsport")
        EndTextCommandSetBlipName(blip)
        SetBlipAsShortRange(blip, true)
        SetBlipAsMissionCreatorBlip(blip, true)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 3) ]]
    end,
}

--[[ Config.Shops["bikeshop"] = {

    Group = "motorcycles",

    VehicleCategoryDenied = { "vans", "muscle", "suvs", "offroad", "compacts", "sedans", "sportsclassics", "super", "planes", "helicopters", "boats", "commercial"},

    Camera = vector4(-80.18, -820.55, 286.0, 250.2),

    CameraOffset = vector3(-10.0, 0.0, 250.0),

    PolyZone = {
        vector2(-72.363677978516, 72.087127685546),
        vector2(-73.681678771972, 71.494728088378),
        vector2(-72.840522766114, 70.178115844726),
        vector2(-71.867324829102, 71.07738494873)
    },

    TestDrive = true, -- TRUE if you want enable test drive

    TestDriveCoords = { x = -11.87, y = -1080.87, z = 25.71, h = 132.0 },

    FinanceTax = 3, --- VALUE == 3%

    AcceptFinancing = false,

    ShopCoords = vector3(-46.119, -1102.759, 26.422),

    isVehicleNetwork = true,

    VehicleSpawnPosition = vector4(-73.17, -822.73, 284.33, 107.42),

    SpawnVehicleWhenBuy = true,

    InteractionsCoords = 
    {
        -- Emit bill
     --   { location = vector3(-55.5656, -1097.363, 26.318), heading = 0.0, width = 0.6, height = 0.5, minZ = 26.0, maxZ = 26.6, distance = 1.8, label = "Check Invoices", icon = "fas fa-user-check", event = "CARSHOP:OpenDashboardClient", eventID = "checkInvoices" },
        -- Catalog
        { location = vector3(-72.16, 71.57, 71.61), heading = 160, width = 1.5, height = 0.8, minZ = 68.38, maxZ = 73.37, distance = 2.0, label = "Open Bike Shop", icon = "fas fa-box-open", event = "CARSHOP:OpenCarShop", eventID = "Shelf" },
        -- BossMenu
     --   { location = vector3(-30.1007, -1105.801, 26.226), heading = 70, width = 2.5, height = 1.2, minZ = 26.16, maxZ = 26.9, distance = 2.0, label = "Open Boss Menu", icon = "fas fa-box-open", event = "CARSHOP:OpenDashboard", eventID = "Shelf", job = "pdm" },
    },

    Spawns = {

    },

    ShowroomCoords = {

    },

    Init = function()
        RemoveIpl("shr_int")
        RequestIpl("shr_int")

        DisableInteriorProp(7170, "csr_beforeMission")
        DisableInteriorProp(7170, "csr_inMission")
        DisableInteriorProp(7170, "csr_afterMissionA")
        DisableInteriorProp(7170, "csr_afterMissionB")
        EnableInteriorProp(7170, "csr_beforeMission")


        RefreshInterior(7170)


    end,
} ]]

--[[ Config.Shops["bikeshop"] = {

    Group = "bikeshop",

    VehicleCategoryDenied = { "police", "vans", "muscle", "suvs", "offroad", "compacts", "sedans", "sportsclassics", "utility", "super", "planes", "helicopters", "boats", "commercial"},

    Camera = vector4(-68.1, 85.56, 71.58, 168.37),
    VehicleSpawnPosition = vector4(-68.67, 82.51, 71.51, 66.15),

    CameraOffset = vector3(-10.0, 0.0, 250.0),

    FinanceTax = 3, --- VALUE == 3%

    TestDrive = true, -- TRUE if you want enable test drive
    
    TestDriveCoords = { x = -82.98, y = 80.89, z = 71.51, h = 146.04 },

    AcceptFinancing = false,

    ShopCoords = vector3(-70.63, 73.14, 71.61),

    PolyZone = {
        vector2(-48.2, 78.64),
        vector2(-58.06, 57.07),
        vector2(-92.06, 77.08),
        vector2(-82.57, 94.65)
    },


    isVehicleNetwork = true,

    SpawnVehicleWhenBuy = true,

    InteractionsCoords = 
    {
        -- Emit bill
    --    { location = vector3(-00.00, -00.363, 00.318), heading = 0.0, width = 0.6, height = 0.5, minZ = 26.0, maxZ = 26.6, distance = 1.8, label = "Check Invoices", icon = "fas fa-user-check", event = "CARSHOP:OpenDashboardClient", eventID = "checkInvoices" },
        -- Catalog
        { location = vector3(-72.16, 71.57, 71.61), heading = 160, width = 1.5, height = 0.8, minZ = 68.38, maxZ = 73.37, distance = 2.0, label = "Open Bike Shop", icon = "fas fa-box-open", event = "CARSHOP:OpenCarShop", eventID = "Shelf" },
        -- BossMenu
     --   { location = vector3(-00.1007, -00.801, 00.226), heading = 70, width = 2.5, height = 1.2, minZ = 26.16, maxZ = 26.9, distance = 2.0, label = "Open Boss Menu", icon = "fas fa-box-open", event = "CARSHOP:OpenDashboard", eventID = "Shelf", job = "bikes" },
    },

    Spawns = {
     --   { ["x"] = 721.510193, ["y"] = -1317.919189, ["z"] =  26.287672, ["h"] = 87.5834  }, -- frente
    },

    ShowroomCoords = {
        -- { ["x"] = 808.06, ["y"] = -805.44, ["z"] = 25.55, ["h"] = 90.72  },
    },

    Init = function()
        RemoveIpl("shr_int")
        RequestIpl("shr_int")

        DisableInteriorProp(7170, "csr_beforeMission")
        DisableInteriorProp(7170, "csr_inMission")
        DisableInteriorProp(7170, "csr_afterMissionA")
        DisableInteriorProp(7170, "csr_afterMissionB")
        EnableInteriorProp(7170, "csr_beforeMission")

        -- DisableInteriorProp(7170, "shutter_open")
        -- DisableInteriorProp(7170, "shutter_closed")
        -- EnableInteriorProp(7170, "shutter_closed")

        RefreshInterior(7170)

--[[         local blip = AddBlipForCoord(Config.Shops["pdm"]["ShopCoords"])
        SetBlipSprite(blip, 326)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Premium Deluxe Motorsport")
        EndTextCommandSetBlipName(blip)
        SetBlipAsShortRange(blip, true)
        SetBlipAsMissionCreatorBlip(blip, true)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 3) 
    end,
}
 ]]
--[[ Config.Shops["truck"] = {

    Group = "truck",

    VehicleCategoryDenied = { "police", "vans", "muscle", "motorcycles", "suvs", "offroad", "compacts", "sedans", "sportsclassics", "utility", "super", "planes", "helicopters", "boats"},
    
    Camera = vector4(702.362, -1280.764, 30.581, 251.91),
    VehicleSpawnPosition = vector4(717.862, -1293.692, 26.129, 359.28),

    CameraOffset = vector3(-10.0, 0.0, 251.91),

    FinanceTax = 3, --- VALUE == 3%

    TestDrive = false, -- TRUE if you want enable test drive
    
    TestDriveCoords = { x = 832.54, y = -788.83, z = 25.6, h = 114.44 },

    AcceptFinancing = false,
    
    ShopCoords = vector3(734.261, -1310.9670, 26.991),

    PolyZone = {
        vector2(732.51037597656, -1314.6221923828),
        vector2(697.50604248047, -1313.4891357422),
        vector2(693.89965820312, -1252.8240966797),
        vector2(733.98760986328, -1253.7613525391)
    },


    isVehicleNetwork = true,

    SpawnVehicleWhenBuy = true,

    InteractionsCoords = 
    {
        -- Emit bill
        { location = vector3(-00.00, -00.363, 00.318), heading = 0.0, width = 0.6, height = 0.5, minZ = 26.0, maxZ = 26.6, distance = 1.8, label = "Check Invoices", icon = "fas fa-user-check", event = "CARSHOP:OpenDashboardClient", eventID = "checkInvoices" },
        -- Catalog
        { location = vector3(-1108.99, -1693.47, 4.37), heading = 160, width = 1.5, height = 0.8, minZ = 3.38, maxZ = 5.37, distance = 2.0, label = "Open Catalog", icon = "fas fa-box-open", event = "CARSHOP:OpenCarShop", eventID = "Shelf" },
        -- BossMenu
        { location = vector3(-00.1007, -00.801, 00.226), heading = 70, width = 2.5, height = 1.2, minZ = 26.16, maxZ = 26.9, distance = 2.0, label = "Open Boss Menu", icon = "fas fa-box-open", event = "CARSHOP:OpenDashboard", eventID = "Shelf", job = "bikes" },
    },

    Spawns = {
        { ["x"] = -1099.23, ["y"] = -1701.77, ["z"] =  3.74, ["h"] = 135.33  }, -- frente
        { ["x"] = -1102.34, ["y"] = -1698.58, ["z"] = 3.75, ["h"] = 127.98  }, -- tras
        { ["x"] =  -1112.84, ["y"] = -1685.29, ["z"] = 3.75, ["h"] =  128.5 }, -- tras
    },
    
    ShowroomCoords = {
        -- { ["x"] = 808.06, ["y"] = -805.44, ["z"] = 25.55, ["h"] = 90.72  },
    },

    Init = function()

        local blip = AddBlipForCoord(Config.Shops["bikes"]["ShopCoords"])
        SetBlipSprite(blip, 326)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Bike Shop")
        EndTextCommandSetBlipName(blip)
        SetBlipAsShortRange(blip, true)
        SetBlipAsMissionCreatorBlip(blip, true)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 3)
    end, 
}
 ]]
--[[ Config.Shops["boat"] = {

    Group = "boat",

    VehicleCategoryDenied = { "police", "trucks", "vans", "muscle", "motorcycles", "suvs", "offroad", "compacts", "sedans", "sportsclassics", "utility", "super", "planes", "helicopters"},

    Camera = vector4(-809.304, -1500.444, 3.213, 246.409),
    VehicleSpawnPosition = vector4(-800.150, -1503.540, 0.05, 108.96),

    CameraOffset = vector3(-10.0, 0.0, 246.409),

    FinanceTax = 3, --- VALUE == 3%

    TestDrive = false, -- TRUE if you want enable test drive
    
    TestDriveCoords = { x = 832.54, y = -788.83, z = 25.6, h = 114.44 },

    AcceptFinancing = false,

    ShopCoords = vector3(-798.778, -1512.324, 1.595),

    PolyZone = {
        vector2(-770.22900390625, -1474.5025634766),
        vector2(-757.78515625, -1506.5954589844),
        vector2(-798.99255371094, -1528.1170654297),
        vector2(-812.59716796875, -1486.6391601562)
    },

    isVehicleNetwork = true,

    SpawnVehicleWhenBuy = true,

    InteractionsCoords = 
    {
        -- Emit bill
        { location = vector3(-00.00, -00.363, 00.318), heading = 0.0, width = 0.6, height = 0.5, minZ = 26.0, maxZ = 26.6, distance = 1.8, label = "Check Invoices", icon = "fas fa-user-check", event = "CARSHOP:OpenDashboardClient", eventID = "checkInvoices" },
        -- Catalog
        { location = vector3(-1108.99, -1693.47, 4.37), heading = 160, width = 1.5, height = 0.8, minZ = 3.38, maxZ = 5.37, distance = 2.0, label = "Open Catalog", icon = "fas fa-box-open", event = "CARSHOP:OpenCarShop", eventID = "Shelf" },
        -- BossMenu
        { location = vector3(-00.1007, -00.801, 00.226), heading = 70, width = 2.5, height = 1.2, minZ = 26.16, maxZ = 26.9, distance = 2.0, label = "Open Boss Menu", icon = "fas fa-box-open", event = "CARSHOP:OpenDashboard", eventID = "Shelf", job = "bikes" },
    },

    Spawns = {
        { ["x"] = -1099.23, ["y"] = -1701.77, ["z"] =  3.74, ["h"] = 135.33  }, -- frente
        { ["x"] = -1102.34, ["y"] = -1698.58, ["z"] = 3.75, ["h"] = 127.98  }, -- tras
        { ["x"] =  -1112.84, ["y"] = -1685.29, ["z"] = 3.75, ["h"] =  128.5 }, -- tras
    },
    
    ShowroomCoords = {
        -- { ["x"] = 808.06, ["y"] = -805.44, ["z"] = 25.55, ["h"] = 90.72  },
    },

    Init = function()

        local blip = AddBlipForCoord(Config.Shops["bikes"]["ShopCoords"])
        SetBlipSprite(blip, 326)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Bike Shop")
        EndTextCommandSetBlipName(blip)
        SetBlipAsShortRange(blip, true)
        SetBlipAsMissionCreatorBlip(blip, true)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 3)
    end, 
} ]]
