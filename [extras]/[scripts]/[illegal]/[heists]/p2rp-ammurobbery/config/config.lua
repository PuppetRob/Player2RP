Config = Config or {}

Config.requiredItem = "advancedlockpick" -- required item to start stealing, set it to false if you don't want it
Config.DebugPoly = false -- for debug purpose
Config.policeCall = true -- set to false if you don't want to notify police 
Config.boxDistance = 1.5 -- distance from box
Config.requiredCopsCount = 2 -- required cops count to start stealing
Config.searchTime = 5000 -- searchTime before getting items
Config.cooldownTimer = 1000 * 60 * 60 -- 1000 = 1s // box cooldown

Config.ammuVitrines = { -- vitrines conf every stealable vitrine is an object

    -- // Postal 9275  815.42, -2153.53, 29.62 \\ --
    
    vitrine1 = { -- preferable to set vitrinekey as name
        coords = vector3(815.42, -2150.54, 29.62), -- vitrine coords
        name = "vitrine1",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label", -- label is translatble.. you can change it in locales/en.lua
        heading = 350, -- vitrine heading
        length = 1.5, -- box length
        width = 1, -- box width
        items = { -- items that can be found in vitine
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine2 = {
        coords = vector3(818.53, -2149.95, 29.62),
        name = "vitrine2",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 0.01,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },
    vitrine3 = {
        coords = vector3(822.01, -2149.86, 29.62),
        name = "vitrine3",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 4.1,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "case_recoil",
            },
        }
    },
    vitrine4 = {
        coords = vector3(825.6, -2149.4, 29.62),
        name = "vitrine4",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 4.1,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine5 = {
        coords = vector3(827.04, -2152.35, 29.62),
        name = "vitrine5",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 260,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },
    vitrine6 = {
        coords = vector3(823.42, -2152.78, 29.62),
        name = "vitrine6",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 125,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },
    vitrine7 = {
        coords = vector3(821.88, -2156.44, 29.62),
        name = "vitrine7",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 180,
        length = 1.5,
        width = 0.5,
        items = {
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine8 = {
        coords = vector3(816.59, -2156.89, 29.62),
        name = "vitrine8",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 180,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },
    vitrine9 = {
        coords = vector3(815.42, -2153.53, 29.62),
        name = "vitrine9",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 180,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine10 = {
        coords = vector3(810.14, -2156.9, 29.62),
        name = "vitrine10",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 180,
        length = 1.5,
        width = 0.5,
        items = {
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },


    -- // Postal 8194 vector3(844.11, -1028.19, 28.19) \\ --
    
    vitrine11 = { -- preferable to set vitrinekey as name
        coords = vector3(846.58, -1030.74, 28.23), -- vitrine coords
        name = "vitrine11",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label", -- label is translatble.. you can change it in locales/en.lua
        heading = 265, -- vitrine heading
        length = 1.5, -- box length
        width = 1, -- box width
        items = { -- items that can be found in vitine
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },

        }
    },
    vitrine12 = {
        coords = vector3(846.4, -1027.28, 28.21),
        name = "vitrine12",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 280,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_fnx45",
            },
        }
    },
    vitrine13 = {
        coords = vector3(840.79, -1026.82, 28.19),
        name = "vitrine13",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 145,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine14 = {
        coords = vector3(842.9, -1030.67, 28.19),
        name = "vitrine14",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 90,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine15 = {
        coords = vector3(846.26, -1034.82, 28.24),
        name = "vitrine15",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 270,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },
    vitrine16 = {
        coords = vector3(844.07, -1036.17, 28.19),
        name = "vitrine16",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 180,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },
    vitrine17 = {
        coords = vector3(839.94, -1035.3, 28.41),
        name = "vitrine17",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 90,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },
    vitrine18 = {
        coords = vector3(839.94, -1032.82, 28.19),
        name = "vitrine18",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 90,
        length = 1.5,
        width = 0.5,
        items = {
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine19 = {
        coords = vector3(839.94, -1030.22, 28.19),
        name = "vitrine19",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 90,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine20 = {
        coords = vector3(842.74, -1033.33, 28.19),
        name = "vitrine20",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 360,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },

    -- // Postal 7121 vector3(246.3, -45.76, 69.94) \\ --
    

    vitrine21 = { -- preferable to set vitrinekey as name
        coords = vector3(246.76, -44.4, 69.94), -- vitrine coords
        name = "vitrine21",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label", -- label is translatble.. you can change it in locales/en.lua
        heading = 250, -- vitrine heading
        length = 1.5, -- box length
        width = 1, -- box width
        items = { -- items that can be found in vitine
        { -- chance is between 1 and 100, every item has his own chance to get and quantity
        minChance = 1,
        maxChance = 30,
        minQuantity = 1,
        maxQuantity = 1,
        item = "pistol_ammo",
    },
    {
        minChance = 31,
        maxChance = 40,
        minQuantity = 1,
        maxQuantity = 1,
        item = "smg_ammo",
    },
    {
        minChance = 41,
        maxChance = 50,
        minQuantity = 1,
        maxQuantity = 1,
        item = "shotgun_ammo",
    },
        }
    },
    vitrine22 = {
        coords = vector3(249.76, -45.15, 69.94),
        name = "vitrine22",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 330,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },
    vitrine23 = {
        coords = vector3(250.54, -53.97, 69.94),
        name = "vitrine23",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 155,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "case_recoil",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine24 = {
        coords = vector3(247.73, -52.94, 69.94),
        name = "vitrine24",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 150,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine25 = {
        coords = vector3(253.95, -54.94, 69.94),
        name = "vitrine25",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 150,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },
    vitrine26 = {
        coords = vector3(257.15, -53.91, 69.94),
        name = "vitrine26",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 2500,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },
    vitrine27 = {
        coords = vector3(253.95, -52.57, 69.94),
        name = "vitrine27",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 65,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_fnx45",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine28 = {
        coords = vector3(258.29, -49.05, 69.94),
        name = "vitrine28",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 250,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine29 = {
        coords = vector3(253.18, -46.25, 69.94),
        name = "vitrine29",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 330,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine30 = {
        coords = vector3(248.0, -49.9, 69.94),
        name = "vitrine30",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 165,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },

    -- // Postal 7354 vector3(2568.58, 297.4, 108.74) \\ --
    

    vitrine31 = { -- preferable to set vitrinekey as name
        coords = vector3(2564.21, 300.79, 108.73), -- vitrine coords
        name = "vitrine31",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label", -- label is translatble.. you can change it in locales/en.lua
        heading = 131, -- vitrine heading
        length = 1.5, -- box length
        width = 1, -- box width
        items = { -- items that can be found in vitine
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine32 = {
        coords = vector3(2566.63, 299.78, 109.01),
        name = "vitrine32",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 80,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },
    vitrine33 = {
        coords = vector3(2571.29, 299.64, 108.74),
        name = "vitrine33",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 355,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine34 = {
        coords = vector3(2567.13, 294.79, 108.74),
        name = "vitrine34",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 80,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine35 = {
        coords = vector3(2563.51, 298.01, 108.74),
        name = "vitrine35",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 95,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },

        }
    },
    vitrine36 = {
        coords = vector3(2563.59, 294.61, 108.74),
        name = "vitrine36",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 85,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },
    vitrine37 = {
        coords = vector3(2563.94, 291.17, 108.74),
        name = "vitrine37",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 85,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine38 = {
        coords = vector3(2567.47, 289.05, 108.74),
        name = "vitrine38",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 180,
        length = 1.5,
        width = 0.5,
        items = {
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine39 = {
        coords = vector3(2570.95, 288.95, 108.74),
        name = "vitrine39",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 180,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine40 = {
        coords = vector3(2571.71, 294.63, 108.74),
        name = "vitrine40",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 270,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },


    -- // Postal 5034 vector3(-3169.2, 1084.09, 20.84) \\ --
    

    vitrine41 = { -- preferable to set vitrinekey as name
        coords = vector3(-3164.34, 1086.73, 20.84), -- vitrine coords
        name = "vitrine41",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label", -- label is translatble.. you can change it in locales/en.lua
        heading = 335, -- vitrine heading
        length = 1.5, -- box length
        width = 1, -- box width
        items = { -- items that can be found in vitine
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine42 = {
        coords = vector3(-3167.91, 1085.41, 20.84),
        name = "vitrine42",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 335,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },
    vitrine43 = {
        coords = vector3(-3169.92, 1086.34, 20.84),
        name = "vitrine43",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 329,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine44 = {
        coords = vector3(-3171.0, 1082.74, 20.84),
        name = "vitrine44",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 155,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine45 = {
        coords = vector3(-3174.77, 1084.72, 20.84),
        name = "vitrine45",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 155,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },
    vitrine46 = {
        coords = vector3(-3172.56, 1090.64, 21.05),
        name = "vitrine46",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 335,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },
    vitrine47 = {
        coords = vector3(-3170.27, 1089.66, 20.84),
        name = "vitrine47",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 335,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine48 = {
        coords = vector3(-3168.4, 1088.84, 20.84),
        name = "vitrine48",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 335,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine49 = {
        coords = vector3(-3166.52, 1087.88, 20.84),
        name = "vitrine49",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 250,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },
    vitrine50 = {
        coords = vector3(-3174.77, 1087.75, 20.84),
        name = "vitrine50",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 72,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },


    -- // Postal 5004 vector3(-1115.92, 2694.72, 18.55) \\ --
    

    vitrine51 = { -- preferable to set vitrinekey as name
        coords = vector3(-1110.48, 2695.95, 18.55), -- vitrine coords
        name = "vitrine51",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label", -- label is translatble.. you can change it in locales/en.lua
        heading = 300, -- vitrine heading
        length = 1.5, -- box length
        width = 1, -- box width
        items = { -- items that can be found in vitine
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine52 = {
        coords = vector3(-1111.97, 2695.04, 18.55),
        name = "vitrine52",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 31,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },
    vitrine53 = {
        coords = vector3(-1114.27, 2696.6, 18.55),
        name = "vitrine53",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 310,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine54 = {
        coords = vector3(-1116.7, 2698.5, 18.55),
        name = "vitrine54",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 330,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_fnx45",
            },
        }
    },
    vitrine55 = {
        coords = vector3(-1119.11, 2699.03, 18.55),
        name = "vitrine55",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 305,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "case_recoil",
            },
        }
    },
    vitrine56 = {
        coords = vector3(-1120.43, 2695.75, 18.55),
        name = "vitrine56",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 135,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },
    vitrine57 = {
        coords = vector3(-1123.71, 2700.75, 18.99),
        name = "vitrine57",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 65,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine58 = {
        coords = vector3(-1118.38, 2701.34, 18.55),
        name = "vitrine58",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 220,
        length = 1.5,
        width = 0.5,
        items = {
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine59 = {
        coords = vector3(-1114.53, 2701.31, 18.77),
        name = "vitrine59",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 315,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },
    vitrine60 = {
        coords = vector3(-1112.64, 2699.21, 18.82),
        name = "vitrine60",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 315,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },

    -- // Postal 3018 vector3(1695.64, 3754.6, 34.71) \\ --
    

    vitrine61 = { -- preferable to set vitrinekey as name
        coords = vector3(1695.51, 3752.57, 34.71), -- vitrine coords
        name = "vitrine61",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label", -- label is translatble.. you can change it in locales/en.lua
        heading = 140, -- vitrine heading
        length = 1.5, -- box length
        width = 1, -- box width
        items = { -- items that can be found in vitine
        {
            minChance = 1,
            maxChance = 50,
            minQuantity = 1,
            maxQuantity = 1,
            item = "weapon_pistol",
        },
        {
            minChance = 51,
            maxChance = 90,
            minQuantity = 1,
            maxQuantity = 1,
            item = "weapon_snspistol",
        },
        {
            minChance = 91,
            maxChance = 100,
            minQuantity = 1,
            maxQuantity = 1,
            item = "weapon_vintagepistol",
        },
        }
    },
    vitrine62 = {
        coords = vector3(1700.61, 3756.6, 35.06),
        name = "vitrine62",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 320,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },
    vitrine63 = {
        coords = vector3(1696.43, 3756.47, 34.71),
        name = "vitrine63",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 320,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },
    vitrine64 = {
        coords = vector3(1695.02, 3757.86, 34.71),
        name = "vitrine64",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 320,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },

        }
    },
    vitrine65 = {
        coords = vector3(1692.66, 3754.93, 34.71),
        name = "vitrine65",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 140,
        length = 1.5,
        width = 1,
        items = {
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine66 = {
        coords = vector3(1689.95, 3757.86, 34.71),
        name = "vitrine66",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 125,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },
    vitrine67 = {
        coords = vector3(1690.65, 3760.49, 34.71),
        name = "vitrine67",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 40,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine68 = {
        coords = vector3(1693.96, 3762.75, 34.92),
        name = "vitrine68",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 320,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine69 = {
        coords = vector3(1695.71, 3761.26, 34.71),
        name = "vitrine69",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 305,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },
    vitrine70 = {
        coords = vector3(1697.83, 3759.2, 34.71),
        name = "vitrine70",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 315,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },


-- // Postal 1034 vector3(-328.83, 6079.26, 31.45) \\ --
    

    vitrine71 = { -- preferable to set vitrinekey as name
        coords = vector3(-324.47, 6080.26, 31.45), -- vitrine coords
        name = "vitrine71",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label", -- label is translatble.. you can change it in locales/en.lua
        heading = 13, -- vitrine heading
        length = 1.5, -- box length
        width = 1, -- box width
        items = { -- items that can be found in vitine
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine72 = {
        coords = vector3(-327.38, 6075.6, 31.45),
        name = "vitrine72",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 210,
        length = 1.5,
        width = 1,
        items = {
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine73 = {
        coords = vector3(-331.35, 6078.79, 31.45),
        name = "vitrine73",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 137,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },
    vitrine74 = {
        coords = vector3(-327.73, 6080.38, 31.45),
        name = "vitrine74",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 310,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine75 = {
        coords = vector3(-328.9, 6081.68, 31.45),
        name = "vitrine75",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 310,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine76 = {
        coords = vector3(-334.11, 6082.0, 31.45),
        name = "vitrine76",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 118,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },
    vitrine77 = {
        coords = vector3(-333.51, 6084.44, 31.45),
        name = "vitrine77",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 45,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },
    vitrine78 = {
        coords = vector3(-329.78, 6086.6, 31.67),
        name = "vitrine78",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 315,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },

        }
    },
    vitrine79 = {
        coords = vector3(-328.19, 6085.03, 31.45),
        name = "vitrine79",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 320,
        length = 1.5,
        width = 0.5,
        items = {
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine80 = {
        coords = vector3(-325.74, 6082.58, 31.45),
        name = "vitrine80",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 320,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },


-- // Postal 4024 vector3(1251.58, 2705.47, 38.13) \\ --
    

    vitrine81 = { -- preferable to set vitrinekey as name
        coords = vector3(1251.58, 2705.47, 38.13), -- vitrine coords
        name = "vitrine81",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label", -- label is translatble.. you can change it in locales/en.lua
        heading = 85, -- vitrine heading
        length = 1.5, -- box length
        width = 1, -- box width
        items = { -- items that can be found in vitine
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine82 = {
        coords = vector3(1251.6, 2707.49, 38.13),
        name = "vitrine82",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 85,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine83 = {
        coords = vector3(1253.29, 2706.78, 38.13),
        name = "vitrine83",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 350,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },
    vitrine84 = {
        coords = vector3(1255.52, 2709.15, 38.13),
        name = "vitrine84",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 315,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },
    vitrine85 = {
        coords = vector3(1254.74, 2711.14, 38.13),
        name = "vitrine85",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 275,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine86 = {
        coords = vector3(1251.83, 2711.93, 38.13),
        name = "vitrine86",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 357,
        length = 1.5,
        width = 1,
        items = {
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine87 = {
        coords = vector3(1250.17, 2706.76, 38.13),
        name = "vitrine87",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 90,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_battleaxe",
            },
        }
    },
    vitrine88 = {
        coords = vector3(1251.64, 2713.89, 38.13),
        name = "vitrine88",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 3,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine89 = {
        coords = vector3(1253.74, 2713.8, 38.13),
        name = "vitrine89",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 3,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine90 = {
        coords = vector3(1256.5, 2713.01, 38.13),
        name = "vitrine90",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 277,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },

-- // Postal Legion \\ --
    

    vitrine91 = { -- preferable to set vitrinekey as name
        coords = vector3(14.59, -1111.69, 29.8), -- vitrine coords
        name = "vitrine91",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label", -- label is translatble.. you can change it in locales/en.lua
        heading = 85, -- vitrine heading
        length = 1.5, -- box length
        width = 1, -- box width
        items = { -- items that can be found in vitine
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },
    vitrine92 = {
        coords = vector3(13.08, -1111.79, 29.8),
        name = "vitrine92",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 85,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine93 = {
        coords = vector3(8.29, -1110.03, 29.8),
        name = "vitrine93",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 350,
        length = 1.5,
        width = 1,
        items = {
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "smg_ammo",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
    vitrine94 = {
        coords = vector3(7.26, -1108.98, 29.8),
        name = "vitrine94",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 315,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_dagger",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_switchblade",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "case_recoil",
            },
        }
    },
    vitrine95 = {
        coords = vector3(3.78, -1107.44, 29.8),
        name = "vitrine95",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 275,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine96 = {
        coords = vector3(4.29, -1105.99, 29.8),
        name = "vitrine96",
        target_icon = "fas fa-sack-dollar",
        target_label = "ammurobbery.vitine_target_label",
        heading = 357,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pistol",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_snspistol",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_vintagepistol",
            },
        }
    },
    vitrine97 = {
        coords = vector3(4.77, -1104.72, 29.8),
        name = "vitrine97",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 90,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "ziptie",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_combatpistol",
            },
        }
    },
    vitrine98 = {
        coords = vector3(5.16, -1103.45, 29.8),
        name = "vitrine98",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 3,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "case_recoil",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_sawnoffshotgun",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "weapon_pumpshotgun",
            },
        }
    },
    vitrine99 = {
        coords = vector3(7.89, -1106.99, 29.8),
        name = "vitrine99",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 3,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 51,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "handcuffs",
            },
            {
                minChance = 91,
                maxChance = 100,
                minQuantity = 1,
                maxQuantity = 1,
                item = "armor",
            },
        }
    },
    vitrine100 = {
        coords = vector3(9.28, -1105.68, 29.8),
        name = "vitrine100",
        target_icon = "fas fa-shield",
        target_label = "ammurobbery.shelf_target_label",
        heading = 277,
        length = 1.5,
        width = 0.5,
        items = {
            { -- chance is between 1 and 100, every item has his own chance to get and quantity
                minChance = 1,
                maxChance = 30,
                minQuantity = 1,
                maxQuantity = 1,
                item = "pistol_ammo",
            },
            {
                minChance = 31,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "case_recoil",
            },
            {
                minChance = 41,
                maxChance = 50,
                minQuantity = 1,
                maxQuantity = 1,
                item = "shotgun_ammo",
            },
        }
    },
}

