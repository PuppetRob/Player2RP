
Config = {}
Config.MinCops = 0
Config.Framework = 'qb-core' -- Type exports[Config.Framework]:GetCoreObject()
Config.Target = 'qb-target'-- ox-target will auto conv, don't change
Config.OxInventory = false
Config.UseTalkNPC = false
Config.ItemNeeded = 'deliverylist'
Config.CallCopsChance = 25
Config.Time = 60 -- mins
-- Ped Spawns
Config.Boss = {
    [1] = {
        ped = 'a_m_m_mlcrisis_01',
        pos = vector4(421.81, 64.27, 97.98, 77.23)
    },
    [2] = {
        ped = 'a_m_m_mlcrisis_01',
        pos = vector4(-223.09, -1616.17, 38.05, 276.94)
    },
    [3] = {
        ped = 'a_m_m_mlcrisis_01',
        pos = vector4(-1178.85, -372.44, 36.62, 89.24)
    },
    [4] = {
        ped = 'a_m_m_mlcrisis_01',
        pos = vector4(192.0, 331.5, 105.4, 268.74)
    }
}
Config.CustomerCars = {
    "baller",
    "baller2",
    "baller3",
    "stratum",
    "glendale",
    "sabregt",
    "sentinel2",
    "cavalcade",
    "buccaneer2",
    "picador",
    "primo",
    "premier",
    "manana",
    "dukes",
    "ingot",
    "blista",
}
Config.CustomerDriverPed = {
    'a_m_m_mlcrisis_01',
    'a_m_y_skater_01',
    'a_f_m_fatwhite_01',
    'g_f_y_families_01',
    'csb_undercover',
}
Config.DriveStyle = 39 -- Change this at https://www.vespura.com/fivem/drivingstyle/

Config.Bones = {
    'door_dside_f',
    'seat_pside_f',
}
-- Blips Config
Config.Blip = {
    ["boss"] = {
        sprite = 271,
        range = true,
        color = 2,
        scale = 0.9,
        label = "Boss"
    },
    ["pickup"] = {
        sprite = 524,
        range = true,
        color = 3,
        scale = 0.9,
        label = "Pick Up"
    },
    ["delivery"] = {
        sprite = 480,
        range = true,
        color = 3,
        scale = 0.9,
        label = "Drop Off Spot"
    }
}

Config.Package = 'package'
Config.Delivery = 5 -- Package per run / 2 runs per job
Config.MaxTimeWaitingForCustomers = 18 -- s
Config.MinTimeWaitingForCustomers = 10 -- s


-- Rewards
Config.Reward = true
Config.ItemsReward = "oxy"
Config.MaxItemReward = 4
Config.MinItemReward = 2

Config.LuckyReward = true
Config.LuckyRewardItem = "meth"
Config.LuckyRewardChance = 10
Config.MinLuckyRewardItems = 10
Config.MaxLuckyRewardItems = 30

Config.JobReward = true
Config.JobRewardItem = "cash"
Config.MinJobRewardItem = 1500
Config.MaxJobRewardItem = 3000
-- Laundering
-- If you wanna clean markedbills, just put Config.BandsItem = 'markedbills'. Note that item.info is not recognized. (Markedbills value is no use)

-- Bands 
Config.CleanBands = true
Config.BandsItem = 'bands'
Config.MinBandsPayout = 450
Config.MaxBandsPayout = 550
Config.BandsLaunderingChance = 30
Config.MaxBandsToClean = 20
Config.MinBandsToClean = 10

-- Rolls
Config.CleanRolls = true
Config.RollsItem = 'rolls'
Config.MaxRollsToCleanPayout = 100
Config.MinRollsToCleanPayout = 45
Config.RollsLaunderingChance = 50
Config.MaxRollsToClean = 60
Config.MinRollsToClean = 30


Config.Distance = 150
--Lang
Config.Lang = {
    ['join'] = {label = "Sign in", icon = "fa-solid fa-user"},
    ['signoff'] = {label = "Sign off", icon = "fa-solid fa-user"},
    ['get'] = {label = "Collect Packages", icon = "fas fa-box"},
    ['deliver'] = {label = "Handoff Package", icon = "fas fa-hand-holding"},
    ['info_centertxt'] = {header = "JOB CENTER" ,label = "Waiting for Job..." , icon = "fas fa-home" ,color = "#59c5f7"},
    ['info_find'] = {header = "JOB OFFER" , txt = "24/7 Deliveries", icon1 = "fas fa-home" ,color = "#FFBF00",icon2 = "fas fa-check-circle",icon3 = "fas fa-times-circle"},
    ['error_onjob'] = {label = "You haven't finished the last assigned job!", type = "error", time = 5000},
    ['error_full'] = {label = "You did'nt get the job this time!", type = "error", time = 5000},
    ['error_police'] = {label = "There's a situation! Come back later!", type = "error", time = 5000},
    ['error_leader'] = {label = "Talk to me as a group leader!", type = "error", time = 5000},
    ['error_overmem'] = {label = "Too many people in group!", type = "error", time = 5000},
    ['error_money'] = {label = "Not enough money?", type = "error", time = 5000},
    ['error_item'] = {label = "You don't have a list?", type = "error", time = 5000},
    ['error_box'] = {label = "Put away that box!", type = "error", time = 5000},
    ['error_nobox'] = {label = "Where's the delivery? Is this a scam?", type = "error", time = 5000},
    ['error_vehfar'] = {label = "This is the right car? Are you an OP?", type = "error", time = 5000},
    ['error_wrongcustomer'] = {label = "Not the person we're looking for!", type = "error", time = 5000},
    ['done'] = {label =  "Job Finished", header = "CURRENT", icon = "fas fa-people-carry", color ="#59c5f7"},
    ['stage_1'] = {label = "Find and steal a vehicle to use as transport.", header = "CURRENT", icon = "fas fa-people-carry", color ="#59c5f7"},
    ['stage_2'] = {label = "Go to the supplier and ask for the goods.", header = "CURRENT", icon = "fas fa-people-carry", color ="#59c5f7"},
    ['stage_3'] = {label = "Load the packages into the vehicle trunk.", header = "CURRENT", icon = "fas fa-people-carry", color ="#59c5f7"},
    ['stage_31'] = {label = "%s/%s Load the packages into the vehicle trunk.", header = "CURRENT", icon = "fas fa-people-carry", color ="#59c5f7"},
    ['stage_4'] = {label = "Drive to the handoff location with the transport vehicle.", header = "CURRENT", icon = "fas fa-people-carry", color ="#59c5f7"},
    ['stage_5'] = {label = "Wait for the customers and handoff the goods.", header = "CURRENT", icon = "fas fa-people-carry", color ="#59c5f7"},
    ['stage_51'] = {label = "%s/%s Wait for the customers and handoff the goods.", header = "CURRENT", icon = "fas fa-people-carry", color ="#59c5f7"},
    ['stage_6'] = {label = "Drive to the next handoff location with the transport vehicle.", header = "CURRENT", icon = "fas fa-people-carry", color ="#59c5f7"},
    ['stage_7'] = {label = "Get rid of the vehicle.", header = "CURRENT", icon = "fas fa-people-carry", color ="#59c5f7"},
}

Config.JobLocations = {
    {
        info = {
            RouteBusy = false,
        },
        pickup = {
            pos = vector4(1566.23, 3569.35, 33.86, 20.93),
            ped = 'g_m_importexport_01'
        },
        locations = {
            ['spawn'] = {pos = vector4(-12.03, -78.81, 57.06, 230.64)}, 
            ['wait'] = {pos = vector3(30.1, -93.57, 56.71)}, 
            ['despawn'] = {pos = vector3(75.14, -138.34, 54.97)} 
        }
    }, {
        info = {
            RouteBusy = false,
        },
        pickup = {
            pos = vector4(-614.82, 3016.87, 18.29, 282.53),
            ped = 'g_f_y_families_01'
        },
        locations = {
            ['spawn'] = {pos = vector4(692.24, 52.63, 83.85, 227.59)},  --FORUM DRIVE
            ['wait'] = {pos = vector3(621.17, 55.77, 89.74)}, 
            ['despawn'] = {pos = vector3(530.17, 118.52, 96.77)} 
        }
    }, {
        info = {
            RouteBusy = false,
        },
        pickup = {
            pos = vector4(1250.83, -2562.04, 42.71, 219.28),
            ped = 'g_m_y_lost_01'
        },
        locations = {
            ['spawn'] = {pos = vector4(788.56, 199.95, 81.49, 156.77)},  --ALTA PLACE
            ['wait'] = {pos = vector3(680.72, 214.61, 93.02)}, 
            ['despawn'] = {pos = vector3(588.19, 276.08, 103.21)} 
        }
    },
    {
        info = {
            RouteBusy = false,
        },
        pickup = {
            pos = vector4(-70.31, -1620.92, 31.45, 236.69),
            ped = 'g_m_y_lost_01'
        },
        locations = {
            ['spawn'] = {pos = vector4(923.49, -1778.15, 31.0, 354.79)},  --ALTA PLACE
            ['wait'] = {pos = vector3(950.15, -1809.36, 31.14)},
            ['despawn'] = {pos = vector3(976.74, -1890.03, 31.1)}
        }
    },
    {
        info = {
            RouteBusy = false,
        },
        pickup = {
            pos = vector4(484.27, -1875.31, 26.17, 275.6),
            ped = 'g_m_y_lost_01'
        },
        locations = {
            ['spawn'] = {pos = vector4(-652.29, -1070.2, 15.57, 31.94)},  --ALTA PLACE
            ['wait'] = {pos = vector3(-629.07, -932.21, 22.59)},
            ['despawn'] = {pos = vector3(-577.56, -846.59, 26.2)}
        }
    },
    {
        info = {
            RouteBusy = false,
        },
        pickup = {
            pos = vector4(-1595.86, 170.62, 59.17, 178.24),
            ped = 'g_m_importexport_01'
        },
        locations = {
            ['spawn'] = {pos = vector4(1334.36, -2006.78, 49.31, 101.74)}, 
            ['wait'] = {pos = vector3(1358.43, -1893.34, 54.39)}, 
            ['despawn'] = {pos = vector3(1400.22, -1701.54, 64.52)} 
        }
    },
    {
        info = {
            RouteBusy = false,
        },
        pickup = {
            pos = vector4(-781.64, -2350.99, 14.57, 247.29),
            ped = 'g_m_importexport_01'
        },
        locations = {
            ['spawn'] = {pos = vector4(-30.33, 532.09, 167.5, 284.98)}, 
            ['wait'] = {pos = vector3(148.37, 571.04, 183.85)}, 
            ['despawn'] = {pos = vector3(214.95, 643.34, 188.22)} 
        }
    },
    {
        info = {
            RouteBusy = false,
        },
        pickup = {
            pos = vector4(-645.49, -1221.42, 11.02, 298.48),
            ped = 'g_m_importexport_01'
        },
        locations = {
            ['spawn'] = {pos = vector4(1074.33, -3040.7, 5.9, 170.25)}, 
            ['wait'] = {pos = vector3(915.76, -3057.19, 5.9)}, 
            ['despawn'] = {pos = vector3(776.98, -3007.21, 5.85)} 
        }
    },
}

