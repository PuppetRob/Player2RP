Configuration = {

    framework = 'qbcore',  -- framework "esx" or "qbcore"

    trigger = 'qb-core', -- qb-core or es_extended

    Mysql = 'mysql-async',  -- oxmysql, mysql-async or ghmattisql

    UseKeys = true,
    UseFuel = true,
    UseDeleteVehicle = false,
    UseWorkUniforms = true,
    UseQuasarInventory = false,
    
    NPC = {
        {x = -552.48, y = -202.83, z = 38.24, h = 329.16, ped},
        -- {x = 1533.12, y = -2116.28, z = 76.8, h = 219.12, ped}
    },

    NPCmodel = "cs_barry",

    Payment_type = "cash", --bank or cash

    vehicleData = {
        [`rebel`] = {0, -2.0, -0.3},
        [`mule`] = {0, -2.0, 0},
        [`model3`] = {0, -2.0, 0},
    },

    Color_UI = "#31b9c1",

} 

Target = {
    UseTarget = true, 
    Coords = vector3(-552.48, -202.83, 38.24),

    TargetExport = 'qb-target',

    ["Home"] = {
        Text = 'Job Center', 
        Icon = 'fa fa-briefcase'        
    },

    ["Workclothes"] = {
        [1] = {
            Text = 'Start Work', 
            Icon = 'fa fa-user-circle-o' 
        },
        [2] = {
            Text = 'Remove Job', 
            Icon = 'fa fa-sign-out' 
        }
    },

    ["Vehicle"] = {
        [1] = {
            Text = 'Take Vehicle', 
            Icon = 'fa fa-car' 
        },
        [2] = {
            Text = 'Save Vehicle', 
            Icon = 'fa fa-car' 
        }
    },

    ["Tool"] = {
        [1] = {
            Text = 'Take Tools', 
            Icon = 'fa fa-wrench' 
        },
        [2] = {
            Text = 'Save Tools', 
            Icon = 'fa fa-wrench' 
        }
    },

    ["Job"] = {
        Text = 'Work', 
        Icon = 'fa fa-hand-rock-o' 
    },

    ["Payout"] = {
        Text = 'Collect Payment', 
        Icon = 'fa fa-money' 
    }

}