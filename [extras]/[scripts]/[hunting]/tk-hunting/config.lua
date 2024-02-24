Config = {}

Config.SkinningMinigame = false -- Determines If Using Skinning Minigame Or Not
--QB-Lock
Config.LevelOneSeconds = math.random(9,12)
Config.LevelOneCircles = math.random(1,3)
Config.LevelTwoSeconds = math.random(9,12)
Config.LevelTwoCircles = math.random(1,3)
Config.LevelThreeSeconds = math.random(9,12)
Config.LevelThreeCircles = math.random(1,3)
Config.LevelFourSeconds = math.random(9,12)
Config.LevelFourCircles = math.random(1,3)

Config.VehicleSpawnLocation = vector4(-700.1, 5775.46, 17.33, 61.25)
Config.FuelScript = 'p2rp-fuel'
Config.Vehicle = 'blazer'
Config.InventoryScript = 'qb-inventory'

Config.RemoveRentingWeapon = false
Config.RemoveRentingVehicle = false
Config.RepeatableLegendaryHunts = true

--Limiting Income Settings
Config.LimitIncome = true
Config.IncomeLimit = 20000


--Illegal Hunting Zones Are Zones that have 2 Options Depending On The Config
-- 1: Deletes Gun and Calls Police
-- 2: Calls Police
Config.RemoveHuntingWeapon = true
Config.ShowIllegalBlip = true -- Only Shows While Hunting
Config.IllegalHuntingZones = {
    {
        ["coords"] = vector3(-397.69, -840.19, 31.62),
        ["Radius"] = 4500.0,
    },
}

Config.Peds = {
    {
        model = 'csb_cletus',
        coords = vector4(-690.36, 5785.86, 15.83, 246.78),
    },
    {
        model = 's_m_y_factory_01',
        coords = vector4(976.56, -2122.78, 29.48, 176.87),
    },
    {
        model = 'ig_hunter',
        coords = vector4(110.88, 6370.81, 30.38, 27.41),
    },
}

Config.SkinningXpToLevel2 = 100 -- Amount of XP Needed For Level 2
Config.SkinningXpToLevel3 = 200 -- Amount of XP Needed For Level 3
Config.SkinningXpToLevel4 = 300 -- Amount of XP Needed For Level 4
Config.SkinningXpToLevel5 = 400 -- Amount of XP Needed For Level 5

Config.XpToLevel2 = 100 -- Amount of XP Needed For Level 2
Config.XpToLevel3 = 200 -- Amount of XP Needed For Level 3
Config.XpToLevel4 = 300 -- Amount of XP Needed For Level 4
Config.XpToLevel5 = 400 -- Amount of XP Needed For Level 5

Config.Level1XpToGive = 10
Config.Level2XpToGive = 20
Config.Level3XpToGive = 30
Config.Level4XpToGive = 40
Config.Level5XpToGive = 50

-- Cletus's Chair Location (WARNING!) Only Change This If You Are Changing Where He Is!
Config.ChairLocation = vector3(-690.2, 5785.8, 16.33)

-- Change What Level Uses What Weapon
Config.Weapons = {
    [1] = 'weapon_musket',
    [2] = 'weapon_marksmanrifle',
    [3] = 'weapon_sniperrifle',
    [4] = 'weapon_heavysniper',
    [5] = 'weapon_heavysniper_mk2',
}

Config.MeatPrices = {
    ["1starrabbitmeat"] = {
        ["name"] = "1starrabbitmeat",
        ["price"] = 10
    },
    ["2starrabbitmeat"] = {
        ["name"] = "2starrabbitmeat",
        ["price"] = 20
    },
    ["3starrabbitmeat"] = {
        ["name"] = "3starrabbitmeat",
        ["price"] = 30
    },
    ["4starrabbitmeat"] = {
        ["name"] = "4starrabbitmeat",
        ["price"] = 40
    },
    ["perfectrabbitmeat"] = {
        ["name"] = "perfectrabbitmeat",
        ["price"] = 50
    },
    ["1starcoyotemeat"] = {
        ["name"] = "1starcoyotemeat",
        ["price"] = 60
    },
    ["2starcoyotemeat"] = {
        ["name"] = "2starcoyotemeat",
        ["price"] = 70
    },
    ["3starcoyotemeat"] = {
        ["name"] = "3starcoyotemeat",
        ["price"] = 80
    },
    ["4starcoyotemeat"] = {
        ["name"] = "4starcoyotemeat",
        ["price"] = 90
    },
    ["perfectcoyotemeat"] = {
        ["name"] = "perfectcoyotemeat",
        ["price"] = 100
    },
    ["1starvenison"] = {
        ["name"] = "1starvenison",
        ["price"] = 110
    },
    ["2starvenison"] = {
        ["name"] = "2starvenison",
        ["price"] = 120
    },
    ["3starvenison"] = {
        ["name"] = "3starvenison",
        ["price"] = 130
    },
    ["4starvenison"] = {
        ["name"] = "4starvenison",
        ["price"] = 140
    },
    ["perfectvenison"] = {
        ["name"] = "perfectvenison",
        ["price"] = 150
    },
    ["1starpork"] = {
        ["name"] = "1starpork",
        ["price"] = 160
    },
    ["2starpork"] = {
        ["name"] = "2starpork",
        ["price"] = 170
    },
    ["3starpork"] = {
        ["name"] = "3starpork",
        ["price"] = 180
    },
    ["4starpork"] = {
        ["name"] = "4starpork",
        ["price"] = 190
    },
    ["perfectpork"] = {
        ["name"] = "perfectpork",
        ["price"] = 200
    },
    ["1starmountainlionmeat"] = {
        ["name"] = "1starmountainlionmeat",
        ["price"] = 210
    },
    ["2starmountainlionmeat"] = {
        ["name"] = "2starmountainlionmeat",
        ["price"] = 220
    },
    ["3starmountainlionmeat"] = {
        ["name"] = "3starmountainlionmeat",
        ["price"] = 230
    },
    ["4starmountainlionmeat"] = {
        ["name"] = "4starmountainlionmeat",
        ["price"] = 240
    },
    ["perfectmountainlionmeat"] = {
        ["name"] = "perfectmountainlionmeat",
        ["price"] = 250
    },
}

Config.SkinPrices = {
    ["1starrabbitpelt"] = {
        ["name"] = "1starrabbitpelt",
        ["price"] = 10
    },
    ["2starrabbitpelt"] = {
        ["name"] = "2starrabbitpelt",
        ["price"] = 20
    },
    ["3starrabbitpelt"] = {
        ["name"] = "3starrabbitpelt",
        ["price"] = 30
    },
    ["4starrabbitpelt"] = {
        ["name"] = "4starrabbitpelt",
        ["price"] = 40
    },
    ["perfectrabbitpelt"] = {
        ["name"] = "perfectrabbitpelt",
        ["price"] = 50
    },
    ["1starcoyotepelt"] = {
        ["name"] = "1starcoyotepelt",
        ["price"] = 60
    },
    ["2starcoyotepelt"] = {
        ["name"] = "2starcoyotepelt",
        ["price"] = 70
    },
    ["3starcoyotepelt"] = {
        ["name"] = "3starcoyotepelt",
        ["price"] = 80
    },
    ["4starcoyotepelt"] = {
        ["name"] = "4starcoyotepelt",
        ["price"] = 90
    },
    ["perfectcoyotepelt"] = {
        ["name"] = "perfectcoyotepelt",
        ["price"] = 100
    },
    ["1stardeerpelt"] = {
        ["name"] = "1stardeerpelt",
        ["price"] = 110
    },
    ["2stardeerpelt"] = {
        ["name"] = "2stardeerpelt",
        ["price"] = 120
    },
    ["3stardeerpelt"] = {
        ["name"] = "3stardeerpelt",
        ["price"] = 130
    },
    ["4stardeerpelt"] = {
        ["name"] = "4stardeerpelt",
        ["price"] = 140
    },
    ["perfectdeerpelt"] = {
        ["name"] = "perfectdeerpelt",
        ["price"] = 150
    },
    ["1starmountainlionpelt"] = {
        ["name"] = "1starmountainlionpelt",
        ["price"] = 160
    },
    ["2starmountainlionpelt"] = {
        ["name"] = "2starmountainlionpelt",
        ["price"] = 170
    },
    ["3starmountainlionpelt"] = {
        ["name"] = "3starmountainlionpelt",
        ["price"] = 180
    },
    ["4starmountainlionpelt"] = {
        ["name"] = "4starmountainlionpelt",
        ["price"] = 190
    },
    ["perfectmountainlionpelt"] = {
        ["name"] = "perfectmountainlionpelt",
        ["price"] = 200
    },

}
-- Weapon Deposit Amount
Config.Deposit = 250


-- Hunting Locations
Config.Level1HuntingLocations = {
    [1] = {
        ["coords"] = vector3(-154.96, 4395.65, 55.68)
    },

    [2] = {
        ["coords"] = vector3(-728.34, 4107.9, 183.31)
    }
}

Config.Level2HuntingLocations = {
    [1] = {
        ["coords"] = vector3(771.17, 3021.41, 48.17)
    },
    [2] = {
        ["coords"] = vector3(2322.25, 4651.76, 35.39)
    }
}

Config.Level3HuntingLocations = {
    [1] = {
        ["coords"] = vector3(-764.01, 5099.88, 141.94)
    },
}

Config.Level4HuntingLocations = {
    [1] = {
        ["coords"] = vector3(-1359.72, 4424.37, 29.57)
    },
}

Config.Level5HuntingLocations = {
    [1] = {
        ["coords"] = vector3(507.83, 5527.67, 776.36)
    },
}

Config.LegendaryHuntingLocation1 = {
    [1] = {
        ["coords"] = vector3(-2013.59, 2580.35, 3.56)
    },
}

Config.LegendaryHuntingLocation2 = {
    [1] = {
        ["coords"] = vector3(-1373.94, 2652.23, 0.87)
    },
}

Config.LegendaryHuntingLocation3 = {
    [1] = {
        ["coords"] = vector3(960.3, 4533.13, 83.63)
    },
}

 -- Clue Location
Config.Level1Locations = {
    [1] = {
        [1] = {
          ["coords"] = vector3(-175.28, 4394.49, 52.25),
          ["prop"] = 'prop_big_shit_02',
          ["Animal"] = "a_c_rabbit_01",
          ["PeltItem_Quality1"] = "1starrabbitpelt",
          ["PeltItem_Quality2"] = "2starrabbitpelt",
          ["PeltItem_Quality3"] = "3starrabbitpelt",
          ["PeltItem_Quality4"] = "4starrabbitpelt",
          ["PeltItem_QualityPerfect"] = "perfectrabbitpelt",
          ["MeatItem_Quality1"] = "1starrabbitmeat",
          ["MeatItem_Quality2"] = "2starrabbitmeat",
          ["MeatItem_Quality3"] = "3starrabbitmeat",
          ["MeatItem_Quality4"] = "4starrabbitmeat",
          ["MeatItem_QualityPerfect"] = "perfectrabbitmeat",
          ["MeatAmountMin"] = 1,
          ["MeatAmountMax"] =  3,
          ["SkinningXPToGive"] = 10
        },
        [2] = {
            ["coords"] = vector3(-200.51, 4428.73, 46.03),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_rabbit_01",
            ["PeltItem_Quality1"] = "1starrabbitpelt",
            ["PeltItem_Quality2"] = "2starrabbitpelt",
            ["PeltItem_Quality3"] = "3starrabbitpelt",
            ["PeltItem_Quality4"] = "4starrabbitpelt",
            ["PeltItem_QualityPerfect"] = "perfectrabbitpelt",
            ["MeatItem_Quality1"] = "1starrabbitmeat",
            ["MeatItem_Quality2"] = "2starrabbitmeat",
            ["MeatItem_Quality3"] = "3starrabbitmeat",
            ["MeatItem_Quality4"] = "4starrabbitmeat",
            ["MeatItem_QualityPerfect"] = "perfectrabbitmeat",
            ["MeatAmountMin"] = 1,
            ["MeatAmountMax"] =  3,
            ["SkinningXPToGive"] = 10
        },
        [3] ={
            ["coords"] = vector3(-216.75, 4471.94, 53.87),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_rabbit_01",
            ["PeltItem_Quality1"] = "1starrabbitpelt",
            ["PeltItem_Quality2"] = "2starrabbitpelt",
            ["PeltItem_Quality3"] = "3starrabbitpelt",
            ["PeltItem_Quality4"] = "4starrabbitpelt",
            ["PeltItem_QualityPerfect"] = "perfectrabbitpelt",
            ["MeatItem_Quality1"] = "1starrabbitmeat",
            ["MeatItem_Quality2"] = "2starrabbitmeat",
            ["MeatItem_Quality3"] = "3starrabbitmeat",
            ["MeatItem_Quality4"] = "4starrabbitmeat",
            ["MeatItem_QualityPerfect"] = "perfectrabbitmeat",
            ["MeatAmountMin"] = 1,
            ["MeatAmountMax"] =  3,
            ["SkinningXPToGive"] = 10
        },
        [4] ={
            ["coords"] = vector3(-223.59, 4499.0, 53.76),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_rabbit_01",
            ["PeltItem_Quality1"] = "1starrabbitpelt",
            ["PeltItem_Quality2"] = "2starrabbitpelt",
            ["PeltItem_Quality3"] = "3starrabbitpelt",
            ["PeltItem_Quality4"] = "4starrabbitpelt",
            ["PeltItem_QualityPerfect"] = "perfectrabbitpelt",
            ["MeatItem_Quality1"] = "1starrabbitmeat",
            ["MeatItem_Quality2"] = "2starrabbitmeat",
            ["MeatItem_Quality3"] = "3starrabbitmeat",
            ["MeatItem_Quality4"] = "4starrabbitmeat",
            ["MeatItem_QualityPerfect"] = "perfectrabbitmeat",
            ["MeatAmountMin"] = 1,
            ["MeatAmountMax"] =  3,
            ["SkinningXPToGive"] = 10
        },
        [5] ={
            ["coords"] = vector3(-205.98, 4333.29, 31.92),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_rabbit_01",
            ["PeltItem_Quality1"] = "1starrabbitpelt",
            ["PeltItem_Quality2"] = "2starrabbitpelt",
            ["PeltItem_Quality3"] = "3starrabbitpelt",
            ["PeltItem_Quality4"] = "4starrabbitpelt",
            ["PeltItem_QualityPerfect"] = "perfectrabbitpelt",
            ["MeatItem_Quality1"] = "1starrabbitmeat",
            ["MeatItem_Quality2"] = "2starrabbitmeat",
            ["MeatItem_Quality3"] = "3starrabbitmeat",
            ["MeatItem_Quality4"] = "4starrabbitmeat",
            ["MeatItem_QualityPerfect"] = "perfectrabbitmeat",
            ["MeatAmountMin"] = 1,
            ["MeatAmountMax"] =  3,
            ["SkinningXPToGive"] = 10
        },
    },
    [2] = {
        [1] = {
            ["coords"] = vector3(-704.16, 4130.59, 172.08),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_rabbit_01",
            ["PeltItem_Quality1"] = "1starrabbitpelt",
            ["PeltItem_Quality2"] = "2starrabbitpelt",
            ["PeltItem_Quality3"] = "3starrabbitpelt",
            ["PeltItem_Quality4"] = "4starrabbitpelt",
            ["PeltItem_QualityPerfect"] = "perfectrabbitpelt",
            ["MeatItem_Quality1"] = "1starrabbitmeat",
            ["MeatItem_Quality2"] = "2starrabbitmeat",
            ["MeatItem_Quality3"] = "3starrabbitmeat",
            ["MeatItem_Quality4"] = "4starrabbitmeat",
            ["MeatItem_QualityPerfect"] = "perfectrabbitmeat",
            ["MeatAmountMin"] = 1,
            ["MeatAmountMax"] =  3,
            ["SkinningXPToGive"] = 10
        },
        [2] = {
            ["coords"] = vector3(-666.9, 4128.66, 159.05),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_rabbit_01",
            ["PeltItem_Quality1"] = "1starrabbitpelt",
            ["PeltItem_Quality2"] = "2starrabbitpelt",
            ["PeltItem_Quality3"] = "3starrabbitpelt",
            ["PeltItem_Quality4"] = "4starrabbitpelt",
            ["PeltItem_QualityPerfect"] = "perfectrabbitpelt",
            ["MeatItem_Quality1"] = "1starrabbitmeat",
            ["MeatItem_Quality2"] = "2starrabbitmeat",
            ["MeatItem_Quality3"] = "3starrabbitmeat",
            ["MeatItem_Quality4"] = "4starrabbitmeat",
            ["MeatItem_QualityPerfect"] = "perfectrabbitmeat",
            ["MeatAmountMin"] = 1,
            ["MeatAmountMax"] =  3,
            ["SkinningXPToGive"] = 10
        },
        [3] ={
            ["coords"] = vector3(-664.19, 4184.3, 145.44),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_rabbit_01",
            ["PeltItem_Quality1"] = "1starrabbitpelt",
            ["PeltItem_Quality2"] = "2starrabbitpelt",
            ["PeltItem_Quality3"] = "3starrabbitpelt",
            ["PeltItem_Quality4"] = "4starrabbitpelt",
            ["PeltItem_QualityPerfect"] = "perfectrabbitpelt",
            ["MeatItem_Quality1"] = "1starrabbitmeat",
            ["MeatItem_Quality2"] = "2starrabbitmeat",
            ["MeatItem_Quality3"] = "3starrabbitmeat",
            ["MeatItem_Quality4"] = "4starrabbitmeat",
            ["MeatItem_QualityPerfect"] = "perfectrabbitmeat",
            ["MeatAmountMin"] = 1,
            ["MeatAmountMax"] =  3,
            ["SkinningXPToGive"] = 10
        },
        [4] ={
            ["coords"] = vector3(-762.14, 4281.12, 150.7),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_rabbit_01",
            ["PeltItem_Quality1"] = "1starrabbitpelt",
            ["PeltItem_Quality2"] = "2starrabbitpelt",
            ["PeltItem_Quality3"] = "3starrabbitpelt",
            ["PeltItem_Quality4"] = "4starrabbitpelt",
            ["PeltItem_QualityPerfect"] = "perfectrabbitpelt",
            ["MeatItem_Quality1"] = "1starrabbitmeat",
            ["MeatItem_Quality2"] = "2starrabbitmeat",
            ["MeatItem_Quality3"] = "3starrabbitmeat",
            ["MeatItem_Quality4"] = "4starrabbitmeat",
            ["MeatItem_QualityPerfect"] = "perfectrabbitmeat",
            ["MeatAmountMin"] = 1,
            ["MeatAmountMax"] =  3,
            ["SkinningXPToGive"] = 10
        },
        [5] ={
            ["coords"] = vector3(-794.16, 4278.77, 150.44),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_rabbit_01",
            ["PeltItem_Quality1"] = "1starrabbitpelt",
            ["PeltItem_Quality2"] = "2starrabbitpelt",
            ["PeltItem_Quality3"] = "3starrabbitpelt",
            ["PeltItem_Quality4"] = "4starrabbitpelt",
            ["PeltItem_QualityPerfect"] = "perfectrabbitpelt",
            ["MeatItem_Quality1"] = "1starrabbitmeat",
            ["MeatItem_Quality2"] = "2starrabbitmeat",
            ["MeatItem_Quality3"] = "3starrabbitmeat",
            ["MeatItem_Quality4"] = "4starrabbitmeat",
            ["MeatItem_QualityPerfect"] = "perfectrabbitmeat",
            ["MeatAmountMin"] = 1,
            ["MeatAmountMax"] =  3,
            ["SkinningXPToGive"] = 10
        },
    },
}

Config.Level2Locations = {
    [1] = {
        [1] = {
          ["coords"] = vector3(858.61, 2935.76, 45.97),
          ["prop"] = 'prop_big_shit_02',
          ["Animal"] = "a_c_coyote",
          ["PeltItem_Quality1"] = "1starcoyotepelt",
          ["PeltItem_Quality2"] = "2starcoyotepelt",
          ["PeltItem_Quality3"] = "3starcoyotepelt",
          ["PeltItem_Quality4"] = "4starcoyotepelt",
          ["PeltItem_QualityPerfect"] = "perfectcoyotepelt",
          ["MeatItem_Quality1"] = "1starcoyotemeat",
          ["MeatItem_Quality2"] = "2starcoyotemeat",
          ["MeatItem_Quality3"] = "3starcoyotemeat",
          ["MeatItem_Quality4"] = "4starcoyotemeat",
          ["MeatItem_QualityPerfect"] = "perfectcoyotemeat",
          ["MeatAmountMin"] = 2,
          ["MeatAmountMax"] =  4,
          ["SkinningXPToGive"] = 20
        },
        [2] = {
            ["coords"] = vector3(703.13, 2958.13, 44.88),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_coyote",
            ["PeltItem_Quality1"] = "1starcoyotepelt",
            ["PeltItem_Quality2"] = "2starcoyotepelt",
            ["PeltItem_Quality3"] = "3starcoyotepelt",
            ["PeltItem_Quality4"] = "4starcoyotepelt",
            ["PeltItem_QualityPerfect"] = "perfectcoyotepelt",
            ["MeatItem_Quality1"] = "1starcoyotemeat",
            ["MeatItem_Quality2"] = "2starcoyotemeat",
            ["MeatItem_Quality3"] = "3starcoyotemeat",
            ["MeatItem_Quality4"] = "4starcoyotemeat",
            ["MeatItem_QualityPerfect"] = "perfectcoyotemeat",
            ["MeatAmountMin"] = 2,
            ["MeatAmountMax"] =  4,
            ["SkinningXPToGive"] = 20
        },
        [3] ={
            ["coords"] = vector3(704.2, 3046.89, 44.75),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_coyote",
            ["PeltItem_Quality1"] = "1starcoyotepelt",
            ["PeltItem_Quality2"] = "2starcoyotepelt",
            ["PeltItem_Quality3"] = "3starcoyotepelt",
            ["PeltItem_Quality4"] = "4starcoyotepelt",
            ["PeltItem_QualityPerfect"] = "perfectcoyotepelt",
            ["MeatItem_Quality1"] = "1starcoyotemeat",
            ["MeatItem_Quality2"] = "2starcoyotemeat",
            ["MeatItem_Quality3"] = "3starcoyotemeat",
            ["MeatItem_Quality4"] = "4starcoyotemeat",
            ["MeatItem_QualityPerfect"] = "perfectcoyotemeat",
            ["MeatAmountMin"] = 2,
            ["MeatAmountMax"] =  4,
            ["SkinningXPToGive"] = 20
        },
        [4] ={
            ["coords"] = vector3(720.16, 3142.18, 43.0),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_coyote",
            ["PeltItem_Quality1"] = "1starcoyotepelt",
            ["PeltItem_Quality2"] = "2starcoyotepelt",
            ["PeltItem_Quality3"] = "3starcoyotepelt",
            ["PeltItem_Quality4"] = "4starcoyotepelt",
            ["PeltItem_QualityPerfect"] = "perfectcoyotepelt",
            ["MeatItem_Quality1"] = "1starcoyotemeat",
            ["MeatItem_Quality2"] = "2starcoyotemeat",
            ["MeatItem_Quality3"] = "3starcoyotemeat",
            ["MeatItem_Quality4"] = "4starcoyotemeat",
            ["MeatItem_QualityPerfect"] = "perfectcoyotemeat",
            ["MeatAmountMin"] = 2,
            ["MeatAmountMax"] =  4,
            ["SkinningXPToGive"] = 20
        },
        [5] ={
            ["coords"] = vector3(897.01, 3041.13, 40.5),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_coyote",
            ["PeltItem_Quality1"] = "1starcoyotepelt",
            ["PeltItem_Quality2"] = "2starcoyotepelt",
            ["PeltItem_Quality3"] = "3starcoyotepelt",
            ["PeltItem_Quality4"] = "4starcoyotepelt",
            ["PeltItem_QualityPerfect"] = "perfectcoyotepelt",
            ["MeatItem_Quality1"] = "1starcoyotemeat",
            ["MeatItem_Quality2"] = "2starcoyotemeat",
            ["MeatItem_Quality3"] = "3starcoyotemeat",
            ["MeatItem_Quality4"] = "4starcoyotemeat",
            ["MeatItem_QualityPerfect"] = "perfectcoyotemeat",
            ["MeatAmountMin"] = 2,
            ["MeatAmountMax"] =  4,
            ["SkinningXPToGive"] = 20
        },
    },
    [2] = {
        [1] = {
          ["coords"] = vector3(2295.15, 4637.1, 34.0),
          ["prop"] = 'prop_big_shit_02',
          ["Animal"] = "a_c_coyote",
          ["PeltItem_Quality1"] = "1starcoyotepelt",
          ["PeltItem_Quality2"] = "2starcoyotepelt",
          ["PeltItem_Quality3"] = "3starcoyotepelt",
          ["PeltItem_Quality4"] = "4starcoyotepelt",
          ["PeltItem_QualityPerfect"] = "perfectcoyotepelt",
          ["MeatItem_Quality1"] = "1starcoyotemeat",
          ["MeatItem_Quality2"] = "2starcoyotemeat",
          ["MeatItem_Quality3"] = "3starcoyotemeat",
          ["MeatItem_Quality4"] = "4starcoyotemeat",
          ["MeatItem_QualityPerfect"] = "perfectcoyotemeat",
          ["MeatAmountMin"] = 2,
          ["MeatAmountMax"] =  4,
          ["SkinningXPToGive"] = 20
        },
        [2] = {
            ["coords"] = vector3(2249.32, 4589.14, 33.55),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_coyote",
            ["PeltItem_Quality1"] = "1starcoyotepelt",
            ["PeltItem_Quality2"] = "2starcoyotepelt",
            ["PeltItem_Quality3"] = "3starcoyotepelt",
            ["PeltItem_Quality4"] = "4starcoyotepelt",
            ["PeltItem_QualityPerfect"] = "perfectcoyotepelt",
            ["MeatItem_Quality1"] = "1starcoyotemeat",
            ["MeatItem_Quality2"] = "2starcoyotemeat",
            ["MeatItem_Quality3"] = "3starcoyotemeat",
            ["MeatItem_Quality4"] = "4starcoyotemeat",
            ["MeatItem_QualityPerfect"] = "perfectcoyotemeat",
            ["MeatAmountMin"] = 2,
            ["MeatAmountMax"] =  4,
            ["SkinningXPToGive"] = 20
        },
        [3] ={
            ["coords"] = vector3(2315.77, 4603.19, 31.89),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_coyote",
            ["PeltItem_Quality1"] = "1starcoyotepelt",
            ["PeltItem_Quality2"] = "2starcoyotepelt",
            ["PeltItem_Quality3"] = "3starcoyotepelt",
            ["PeltItem_Quality4"] = "4starcoyotepelt",
            ["PeltItem_QualityPerfect"] = "perfectcoyotepelt",
            ["MeatItem_Quality1"] = "1starcoyotemeat",
            ["MeatItem_Quality2"] = "2starcoyotemeat",
            ["MeatItem_Quality3"] = "3starcoyotemeat",
            ["MeatItem_Quality4"] = "4starcoyotemeat",
            ["MeatItem_QualityPerfect"] = "perfectcoyotemeat",
            ["MeatAmountMin"] = 2,
            ["MeatAmountMax"] =  4,
            ["SkinningXPToGive"] = 20
        },
        [4] ={
            ["coords"] = vector3(2406.91, 4688.03, 33.55),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_coyote",
            ["PeltItem_Quality1"] = "1starcoyotepelt",
            ["PeltItem_Quality2"] = "2starcoyotepelt",
            ["PeltItem_Quality3"] = "3starcoyotepelt",
            ["PeltItem_Quality4"] = "4starcoyotepelt",
            ["PeltItem_QualityPerfect"] = "perfectcoyotepelt",
            ["MeatItem_Quality1"] = "1starcoyotemeat",
            ["MeatItem_Quality2"] = "2starcoyotemeat",
            ["MeatItem_Quality3"] = "3starcoyotemeat",
            ["MeatItem_Quality4"] = "4starcoyotemeat",
            ["MeatItem_QualityPerfect"] = "perfectcoyotemeat",
            ["MeatAmountMin"] = 2,
            ["MeatAmountMax"] =  4,
            ["SkinningXPToGive"] = 20
        },
        [5] ={
            ["coords"] = vector3(2288.26, 4746.31, 37.06),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_coyote",
            ["PeltItem_Quality1"] = "1starcoyotepelt",
            ["PeltItem_Quality2"] = "2starcoyotepelt",
            ["PeltItem_Quality3"] = "3starcoyotepelt",
            ["PeltItem_Quality4"] = "4starcoyotepelt",
            ["PeltItem_QualityPerfect"] = "perfectcoyotepelt",
            ["MeatItem_Quality1"] = "1starcoyotemeat",
            ["MeatItem_Quality2"] = "2starcoyotemeat",
            ["MeatItem_Quality3"] = "3starcoyotemeat",
            ["MeatItem_Quality4"] = "4starcoyotemeat",
            ["MeatItem_QualityPerfect"] = "perfectcoyotemeat",
            ["MeatAmountMin"] = 2,
            ["MeatAmountMax"] =  4,
            ["SkinningXPToGive"] = 20
        },
    },
}

Config.Level3Locations = {
    [1] = {
        [1] = {
          ["coords"] = vector3(-723.6, 5154.03, 109.82),
          ["prop"] = 'prop_big_shit_02',
          ["Animal"] = "a_c_deer",
          ["PeltItem_Quality1"] = "1stardeerpelt",
          ["PeltItem_Quality2"] = "2stardeerpelt",
          ["PeltItem_Quality3"] = "3stardeerpelt",
          ["PeltItem_Quality4"] = "4stardeerpelt",
          ["PeltItem_QualityPerfect"] = "perfectdeerpelt",
          ["MeatItem_Quality1"] = "1starvenison",
          ["MeatItem_Quality2"] = "2starvenison",
          ["MeatItem_Quality3"] = "3starvenison",
          ["MeatItem_Quality4"] = "4starvenison",
          ["MeatItem_QualityPerfect"] = "perfectvenison",
          ["MeatAmountMin"] = 3,
          ["MeatAmountMax"] =  5,
          ["SkinningXPToGive"] = 30
        },
        [2] = {
            ["coords"] = vector3(-859.01, 5128.83, 141.29),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_deer",
            ["PeltItem_Quality1"] = "1stardeerpelt",
            ["PeltItem_Quality2"] = "2stardeerpelt",
            ["PeltItem_Quality3"] = "3stardeerpelt",
            ["PeltItem_Quality4"] = "4stardeerpelt",
            ["PeltItem_QualityPerfect"] = "perfectdeerpelt",
            ["MeatItem_Quality1"] = "1starvenison",
            ["MeatItem_Quality2"] = "2starvenison",
            ["MeatItem_Quality3"] = "3starvenison",
            ["MeatItem_Quality4"] = "4starvenison",
            ["MeatItem_QualityPerfect"] = "perfectvenison",
            ["MeatAmountMin"] = 3,
            ["MeatAmountMax"] =  5,
            ["SkinningXPToGive"] = 30
        },
        [3] ={
            ["coords"] = vector3(-658.0, 5161.23, 110.98),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_deer",
            ["PeltItem_Quality1"] = "1stardeerpelt",
            ["PeltItem_Quality2"] = "2stardeerpelt",
            ["PeltItem_Quality3"] = "3stardeerpelt",
            ["PeltItem_Quality4"] = "4stardeerpelt",
            ["PeltItem_QualityPerfect"] = "perfectdeerpelt",
            ["MeatItem_Quality1"] = "1starvenison",
            ["MeatItem_Quality2"] = "2starvenison",
            ["MeatItem_Quality3"] = "3starvenison",
            ["MeatItem_Quality4"] = "4starvenison",
            ["MeatItem_QualityPerfect"] = "perfectvenison",
            ["MeatAmountMin"] = 2,
            ["MeatAmountMax"] =  4,
            ["SkinningXPToGive"] = 20
        },
        [4] ={
            ["coords"] = vector3(-677.62, 5022.79, 161.73),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_deer",
            ["PeltItem_Quality1"] = "1stardeerpelt",
            ["PeltItem_Quality2"] = "2stardeerpelt",
            ["PeltItem_Quality3"] = "3stardeerpelt",
            ["PeltItem_Quality4"] = "4stardeerpelt",
            ["PeltItem_QualityPerfect"] = "perfectdeerpelt",
            ["MeatItem_Quality1"] = "1starvenison",
            ["MeatItem_Quality2"] = "2starvenison",
            ["MeatItem_Quality3"] = "3starvenison",
            ["MeatItem_Quality4"] = "4starvenison",
            ["MeatItem_QualityPerfect"] = "perfectvenison",
            ["MeatAmountMin"] = 3,
            ["MeatAmountMax"] =  5,
            ["SkinningXPToGive"] = 30
        },
        [5] ={
            ["coords"] = vector3(-783.0, 4992.39, 194.95),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_deer",
            ["PeltItem_Quality1"] = "1stardeerpelt",
            ["PeltItem_Quality2"] = "2stardeerpelt",
            ["PeltItem_Quality3"] = "3stardeerpelt",
            ["PeltItem_Quality4"] = "4stardeerpelt",
            ["PeltItem_QualityPerfect"] = "perfectdeerpelt",
            ["MeatItem_Quality1"] = "1starvenison",
            ["MeatItem_Quality2"] = "2starvenison",
            ["MeatItem_Quality3"] = "3starvenison",
            ["MeatItem_Quality4"] = "4starvenison",
            ["MeatItem_QualityPerfect"] = "perfectvenison",
            ["MeatAmountMin"] = 3,
            ["MeatAmountMax"] =  5,
            ["SkinningXPToGive"] = 30
        },
    },
}

Config.Level4Locations = {
    [1] = {
        [1] = {
          ["coords"] = vector3(-1319.09, 4446.08, 22.8),
          ["prop"] = 'prop_big_shit_02',
          ["Animal"] = "a_c_boar",
          ["MeatItem_Quality1"] = "1starpork",
          ["MeatItem_Quality2"] = "2starpork",
          ["MeatItem_Quality3"] = "3starpork",
          ["MeatItem_Quality4"] = "4starpork",
          ["MeatItem_QualityPerfect"] = "perfectpork",
          ["MeatAmountMin"] = 4,
          ["MeatAmountMax"] =  6,
          ["SkinningXPToGive"] = 40
        },
        [2] = {
            ["coords"] = vector3(-1262.31, 4451.42, 7.68),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_boar",
            ["MeatItem_Quality1"] = "1starpork",
            ["MeatItem_Quality2"] = "2starpork",
            ["MeatItem_Quality3"] = "3starpork",
            ["MeatItem_Quality4"] = "4starpork",
            ["MeatItem_QualityPerfect"] = "perfectpork",
            ["MeatAmountMin"] = 4,
            ["MeatAmountMax"] =  6,
            ["SkinningXPToGive"] = 40
        },
        [3] ={
            ["coords"] = vector3(-1365.84, 4381.92, 41.05),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_boar",
            ["MeatItem_Quality1"] = "1starpork",
            ["MeatItem_Quality2"] = "2starpork",
            ["MeatItem_Quality3"] = "3starpork",
            ["MeatItem_Quality4"] = "4starpork",
            ["MeatItem_QualityPerfect"] = "perfectpork",
            ["MeatAmountMin"] = 4,
            ["MeatAmountMax"] =  6,
            ["SkinningXPToGive"] = 40
        },
        [4] ={
            ["coords"] = vector3(-1369.0, 4509.07, 39.43),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_boar",
            ["MeatItem_Quality1"] = "1starpork",
            ["MeatItem_Quality2"] = "2starpork",
            ["MeatItem_Quality3"] = "3starpork",
            ["MeatItem_Quality4"] = "4starpork",
            ["MeatItem_QualityPerfect"] = "perfectpork",
            ["MeatAmountMin"] = 4,
            ["MeatAmountMax"] =  6,
            ["SkinningXPToGive"] = 40
        },
        [5] ={
            ["coords"] = vector3(-1308.82, 4363.83, 7.58),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_boar",
            ["MeatItem_Quality1"] = "1starpork",
            ["MeatItem_Quality2"] = "2starpork",
            ["MeatItem_Quality3"] = "3starpork",
            ["MeatItem_Quality4"] = "4starpork",
            ["MeatItem_QualityPerfect"] = "perfectpork",
            ["MeatAmountMin"] = 4,
            ["MeatAmountMax"] =  6,
            ["SkinningXPToGive"] = 40
        },
    },
}

Config.Level5Locations = {
    [1] = {
        [1] = {
          ["coords"] = vector3(518.3, 5504.86, 770.64),
          ["prop"] = 'prop_big_shit_02',
          ["Animal"] = "a_c_mtlion",
          ["PeltItem_Quality1"] = "1starmountainlionpelt",
          ["PeltItem_Quality2"] = "2starmountainlionpelt",
          ["PeltItem_Quality3"] = "3starmountainlionpelt",
          ["PeltItem_Quality4"] = "4starmountainlionpelt",
          ["PeltItem_QualityPerfect"] = "perfectmountainlionpelt",
          ["MeatItem_Quality1"] = "1starmountainlionmeat",
          ["MeatItem_Quality2"] = "2starmountainlionmeat",
          ["MeatItem_Quality3"] = "3starmountainlionmeat",
          ["MeatItem_Quality4"] = "4starmountainlionmeat",
          ["MeatItem_QualityPerfect"] = "perfectmountainlionmeat",
          ["MeatAmountMin"] = 5,
          ["MeatAmountMax"] =  7,
          ["SkinningXPToGive"] = 50
        },
        [2] = {
            ["coords"] = vector3(487.94, 5516.36, 776.86),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_mtlion",
            ["PeltItem_Quality1"] = "1starmountainlionpelt",
            ["PeltItem_Quality2"] = "2starmountainlionpelt",
            ["PeltItem_Quality3"] = "3starmountainlionpelt",
            ["PeltItem_Quality4"] = "4starmountainlionpelt",
            ["PeltItem_QualityPerfect"] = "perfectmountainlionpelt",
            ["MeatItem_Quality1"] = "1starmountainlionmeat",
            ["MeatItem_Quality2"] = "2starmountainlionmeat",
            ["MeatItem_Quality3"] = "3starmountainlionmeat",
            ["MeatItem_Quality4"] = "4starmountainlionmeat",
            ["MeatItem_QualityPerfect"] = "perfectmountainlionmeat",
            ["MeatAmountMin"] = 5,
            ["MeatAmountMax"] =  7,
            ["SkinningXPToGive"] = 50
        },
        [3] ={
            ["coords"] = vector3(453.7, 5550.41, 783.56),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_mtlion",
            ["PeltItem_Quality1"] = "1starmountainlionpelt",
            ["PeltItem_Quality2"] = "2starmountainlionpelt",
            ["PeltItem_Quality3"] = "3starmountainlionpelt",
            ["PeltItem_Quality4"] = "4starmountainlionpelt",
            ["PeltItem_QualityPerfect"] = "perfectmountainlionpelt",
            ["MeatItem_Quality1"] = "1starmountainlionmeat",
            ["MeatItem_Quality2"] = "2starmountainlionmeat",
            ["MeatItem_Quality3"] = "3starmountainlionmeat",
            ["MeatItem_Quality4"] = "4starmountainlionmeat",
            ["MeatItem_QualityPerfect"] = "perfectmountainlionmeat",
            ["MeatAmountMin"] = 5,
            ["MeatAmountMax"] =  7,
            ["SkinningXPToGive"] = 50
        },
        [4] ={
            ["coords"] = vector3(470.59, 5611.63, 784.93),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_mtlion",
            ["PeltItem_Quality1"] = "1starmountainlionpelt",
            ["PeltItem_Quality2"] = "2starmountainlionpelt",
            ["PeltItem_Quality3"] = "3starmountainlionpelt",
            ["PeltItem_Quality4"] = "4starmountainlionpelt",
            ["PeltItem_QualityPerfect"] = "perfectmountainlionpelt",
            ["MeatItem_Quality1"] = "1starmountainlionmeat",
            ["MeatItem_Quality2"] = "2starmountainlionmeat",
            ["MeatItem_Quality3"] = "3starmountainlionmeat",
            ["MeatItem_Quality4"] = "4starmountainlionmeat",
            ["MeatItem_QualityPerfect"] = "perfectmountainlionmeat",
            ["MeatAmountMin"] = 5,
            ["MeatAmountMax"] =  7,
            ["SkinningXPToGive"] = 50
        },
        [5] ={
            ["coords"] = vector3(534.48, 5607.36, 777.14),
            ["prop"] = 'prop_big_shit_02',
            ["Animal"] = "a_c_mtlion",
            ["PeltItem_Quality1"] = "1starmountainlionpelt",
            ["PeltItem_Quality2"] = "2starmountainlionpelt",
            ["PeltItem_Quality3"] = "3starmountainlionpelt",
            ["PeltItem_Quality4"] = "4starmountainlionpelt",
            ["PeltItem_QualityPerfect"] = "perfectmountainlionpelt",
            ["MeatItem_Quality1"] = "1starmountainlionmeat",
            ["MeatItem_Quality2"] = "2starmountainlionmeat",
            ["MeatItem_Quality3"] = "3starmountainlionmeat",
            ["MeatItem_Quality4"] = "4starmountainlionmeat",
            ["MeatItem_QualityPerfect"] = "perfectmountainlionmeat",
            ["MeatAmountMin"] = 5,
            ["MeatAmountMax"] =  7,
            ["SkinningXPToGive"] = 50
        },
    },
}

Config.LegendaryAnimal1 = "croco"
Config.LegendaryAnimal1Pelt = "legendarycrocodileskin"
Config.LegendaryAnimal1Meat = "legendarycrocodilemeat"
Config.LegendaryAnimal1MeatMin = 6
Config.LegendaryAnimal1MeatMax = 8
Config.LegendaryAnimal1SkinningXPToGive = 100

Config.LegendaryLocation1 = {
    [1] = {
        [1] = {
          ["coords"] = vector3(-2017.94, 2672.24, 1.07),
          ["prop"] = 'prop_big_shit_02',
        },
        [2] = {
            ["coords"] = vector3(-1909.38, 2623.87, 2.93),
            ["prop"] = 'prop_big_shit_02',
        },
        [3] ={
            ["coords"] = vector3(-1977.52, 2580.84, 3.19),
            ["prop"] = 'prop_big_shit_02',
        },
        [4] ={
            ["coords"] = vector3(-1928.96, 2548.06, 2.76),
            ["prop"] = 'prop_big_shit_02',
        },
        [5] ={
            ["coords"] = vector3(-2111.16, 2521.2, 2.99),
            ["prop"] = 'prop_big_shit_02',
        },
    },
}

Config.LegendaryAnimal2 = "hippo"
Config.LegendaryAnimal2Pelt = "legendaryhipposkin"
Config.LegendaryAnimal2Meat = "legendaryhippomeat"
Config.LegendaryAnimal2MeatMin = 7
Config.LegendaryAnimal2MeatMax = 9
Config.LegendaryAnimal2SkinningXPToGive = 200

Config.LegendaryLocation2 = {
    [1] = {
        [1] = {
          ["coords"] = vector3(-1263.1, 2701.45, 1.58),
          ["prop"] = 'prop_big_shit_02',
        },
        [2] = {
            ["coords"] = vector3(-1235.22, 2654.16, 3.59),
            ["prop"] = 'prop_big_shit_02',
        },
        [3] ={
            ["coords"] = vector3(-1275.11, 2594.7, 13.22),
            ["prop"] = 'prop_big_shit_02',
        },
        [4] ={
            ["coords"] = vector3(-1424.13, 2550.73, 13.48),
            ["prop"] = 'prop_big_shit_02',
        },
        [5] ={
            ["coords"] = vector3(-1498.58, 2658.22, 2.74),
            ["prop"] = 'prop_big_shit_02',
        },
    },
}

Config.LegendaryAnimal3 = "BrnBear"
Config.LegendaryAnimal3Pelt = "legendarybearpelt"
Config.LegendaryAnimal3Meat = "legendarybearmeat"
Config.LegendaryAnimal3MeatMin = 8
Config.LegendaryAnimal3MeatMax = 10
Config.LegendaryAnimal3SkinningXPToGive = 300

Config.LegendaryLocation3 = {
    [1] = {
        [1] = {
          ["coords"] = vector3(873.03, 4548.12, 77.84),
          ["prop"] = 'prop_big_shit_02',
        },
        [2] = {
            ["coords"] = vector3(895.69, 4618.67, 113.67),
            ["prop"] = 'prop_big_shit_02',
        },
        [3] ={
            ["coords"] = vector3(995.29, 4615.59, 112.19),
            ["prop"] = 'prop_big_shit_02',
        },
        [4] ={
            ["coords"] = vector3(1011.59, 4554.96, 95.47),
            ["prop"] = 'prop_big_shit_02',
        },
        [5] ={
            ["coords"] = vector3(951.45, 4412.67, 47.62),
            ["prop"] = 'prop_big_shit_02',
        },
    },
}