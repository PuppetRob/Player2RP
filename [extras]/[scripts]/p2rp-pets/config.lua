Config = {}

Config.Core = {
    core = 'QBCore',
    name = 'qb-core'
}

Config.UseIds = false --true to use id's, false to disable
Config.UseRoles = false --true to use roles, false to disable

Config.WhitelistedIds = {
    discord = {
        --"discord:000000000000000000",
        --"discord:000000000000000000",
    },
    citizenid = {
        --"ABC123",
        --"ABC123",
    },
    fivem = {
        --"license:0000000000000000000000000000000000000000",
        --"license:0000000000000000000000000000000000000000",
    },
}

Config.WhitelistedRoles = { --paste your discord id's here
    -- "001894851541518484",
    -- "441874784078487484",
}

Config.MenuExports = 'qb-menu'
Config.InputExports = 'qb-input'

Config.Notify = 'QBCore:Notify' --change QBCore to your core if needed
Config.CoreLoaded = 'QBCore:Client:OnPlayerLoaded' --change QBCore to your core if needed

Config.UseTarget = true -- Use qb-target to interact with your pet / store

Config.FoodTimer = 45 --Time in minutes update stats (health, food)
Config.DefaultPetName = 'My pet'
Config.EatTime = 10 -- Time in seconds for how long eating takes

Config.RevivePrice = 1500 --Price to revive your pet

Config.Store = {
    storelocation = vector3(-1819.69, -1135.47, 13.75),
    blipcoords = vector3(-1789.6, -1155.64, 14.04),
    blipsprite = 273, --Blip icon
    blipcolor = 17,
    blipscale = 0.6,
    bliplabel = "Pet store",
    blipshortrange = false
}

Config.Peds = {
    [1] = {
        pos = vector4(-1822.89, -1144.59, 12.75, 319.81),
        name = 's_m_m_doctor_01',
        spawned = false,
        targetLabel = 'Bring pet to vet',
        targetIcon = 'fas fa-stethoscope',
        event = 'lumio-pets:client:vetmenu',
    },
    [2] = {
        pos = vector4(-1822.95, -1137.97, 12.75, 317.17),
        name = 'a_f_y_eastsa_03',
        spawned = false,
        targetLabel = 'Pet store',
        targetIcon = 'fas fa-cat',
        event = 'lumio-pets:client:shopmenu',
    },
}

Config.BuyPetMenu = {
    [1] = {
        header = '🐕 | Retriever',
        txt = 'Buy a Retriever for €500',
        spawnname = 'a_c_retriever',
        price = 500,
        type = 'dog',
        animations = {
            {
                header = '💤 | Lay Down',
                txt = 'Have your pet lay down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = false,
                        animDict = 'creatures@rottweiler@amb@sleep_in_kennel@',
                        animName = 'sleep_in_kennel',
                    },
                },
            },
            {
                header = '🐶 | Bark',
                txt = 'Have your pet speak',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_BARKING_RETRIEVER'
                    },
                },
            },
            {
                header = '🐕‍🦺 | Sit Down',
                txt = 'Have your pet sit down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_SITTING_SHEPHERD'
                    },
                },
            },
        }
    },

    [2] = {
        header = '🐕 | Husky',
        txt = 'Buy a Husky for €500',
        spawnname = 'a_c_husky',
        price = 500,
        type = 'dog',
        animations = {
            {
                header = '💤 | Lay Down',
                txt = 'Have your pet lay down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = false,
                        animDict = 'creatures@rottweiler@amb@sleep_in_kennel@',
                        animName = 'sleep_in_kennel',
                    },
                },
            },
            {
                header = '🐶 | Bark',
                txt = 'Have your pet speak',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_BARKING_RETRIEVER'
                    },
                },
            },
            {
                header = '🐕‍🦺 | Sit Down',
                txt = 'Have your pet sit down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_SITTING_SHEPHERD'
                    },
                },
            },
        }
    },

    [3] = {
        header = '🐕 | Pug',
        txt = 'Buy a Pug for €500',
        spawnname = 'a_c_pug',
        price = 500,
        type = 'dog',
        animations = {
            {
                header = '💤 | Lay Down',
                txt = 'Have your pet lay down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = false,
                        animDict = 'creatures@rottweiler@amb@sleep_in_kennel@',
                        animName = 'sleep_in_kennel',
                    },
                },
            },
            {
                header = '🐶 | Bark',
                txt = 'Have your pet speak',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_BARKING_SMALL'
                    },
                },
            },
            {
                header = '🐕‍🦺 | Sit Down',
                txt = 'Have your pet sit down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_SITTING_SMALL'
                    },
                },
            },
        }
    },

    [4] = {
        header = '🐕 | Poedel',
        txt = 'Buy a Poedel for €500',
        spawnname = 'a_c_poodle',
        price = 500,
        type = 'dog',
        animations = {
            {
                header = '💤 | Lay Down',
                txt = 'Have your pet lay down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = false,
                        animDict = 'creatures@rottweiler@amb@sleep_in_kennel@',
                        animName = 'sleep_in_kennel',
                    },
                },
            },
            {
                header = '🐶 | Bark',
                txt = 'Have your pet speak',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_BARKING_SMALL'
                    },
                },
            },
            {
                header = '🐕‍🦺 | Sit Down',
                txt = 'Have your pet sit down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_SITTING_SMALL'
                    },
                },
            },
        }
    },

    [5] = {
        header = '🐕 | Rottweiler',
        txt = 'Buy a Rottweiler for €500',
        spawnname = 'a_c_rottweiler',
        price = 500,
        type = 'dog',
        animations = {
            {
                header = '💤 | Lay Down',
                txt = 'Have your pet lay down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = false,
                        animDict = 'creatures@rottweiler@amb@sleep_in_kennel@',
                        animName = 'sleep_in_kennel',
                    },
                },
            },
            {
                header = '🐶 | Bark',
                txt = 'Have your pet speak',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_BARKING_ROTTWEILER'
                    },
                },
            },
            {
                header = '🐕‍🦺 | Sit Down',
                txt = 'Have your pet sit down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_SITTING_SHEPHERD'
                    },
                },
            },
        }
    },

    [6] = {
        header = '🐕 | Westy',
        txt = 'Buy a Westy for €500',
        spawnname = 'a_c_westy',
        price = 500,
        type = 'dog',
        animations = {
            {
                header = '💤 | Lay Down',
                txt = 'Have your pet lay down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = false,
                        animDict = 'creatures@rottweiler@amb@sleep_in_kennel@',
                        animName = 'sleep_in_kennel',
                    },
                },
            },
            {
                header = '🐶 | Bark',
                txt = 'Have your pet speak',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_BARKING_SMALL'
                    },
                },
            },
            {
                header = '🐕‍🦺 | Sit Down',
                txt = 'Have your pet sit down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_SITTING_SMALL'
                    },
                },
            },
        }
    },

    [7] = {
        header = '🐈 | Cat',
        txt = 'Buy a Cat for €500',
        spawnname = 'a_c_cat_01',
        price = 500,
        type = 'cat',
        animations = {
            {
                header = '💤 | Lay Down',
                txt = 'Have your pet lay down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_CAT_SLEEPING_GROUND'
                    },
                }
            }
        }
    },
    [8] = {
        header = '🐕 | Shepherd',
        txt = 'Buy a Shepherd for €500',
        spawnname = 'a_c_shepherd',
        price = 500,
        type = 'dog',
        animations = {
            {
                header = '💤 | Lay Down',
                txt = 'Have your pet lay down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = false,
                        animDict = 'creatures@rottweiler@amb@sleep_in_kennel@',
                        animName = 'sleep_in_kennel',
                    },
                },
            },
            {
                header = '🐶 | Bark',
                txt = 'Have your pet speak',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_BARKING_ROTTWEILER'
                    },
                },
            },
            {
                header = '🐕‍🦺 | Sit Down',
                txt = 'Have your pet sit down',
                params = {
                    event = 'lumio-pets:client:doanimation',
                    args = {
                        scenario = true,
                        scenName = 'WORLD_DOG_SITTING_SHEPHERD'
                    },
                },
            },
        }
    },
    [9] = {
        header = '🐔 | Chicken',
        txt = 'Buy a Chicken for €500',
        spawnname = 'a_c_hen',
        price = 500,
        type = 'chicken',
        animations = {
        }
    },
}