Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-543.92, -196.89, 38.23),
        showBlip = false,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = "City Services"
        },
        licenses = {
            ["id_card"] = {
                label = "ID Card", --[[ If you change this you need to change in the app.js. Search "if (license.label == "ID Card"){" and in there change labels of IF ]]
                cost = 250,
            },
            ["driver_license"] = {
                label = "Driver License",  --[[ If you change this you need to change in the app.js. Search "if (license.label == "Driver License"){" and in there change labels of IF ]]
                cost = 250,
                metadata = "driver"
            },
            ["weaponlicense"] = {
                label = "Weapon License",  --[[ If you change this you need to change in the app.js. Search "if (license.label == "Weapon License"){" and in there change labels of IF ]]
                cost = 450,
                metadata = "weapon"
            },
            ["huntinglicense"] = {
                label = "Hunting License",
                cost = 750,
                metadata = "hunting"
            },
            ["fishinglicense"] = {
                label = "Fishing License",
                cost = 550,
                metadata = "fishing"
            },
        }
    },
}

--[[ Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(240.3, -1379.89, 33.74),
        showBlip = true,
        blipData = {
            sprite = 225,
            display = 4,
            scale = 0.65,
            colour = 3,
            title = "Driving School"
        },
        instructors = {
            "DJD56142",
            "DXT09752",
            "SRI85140",
        }
    },
} ]]

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'a_m_m_hasjew_01',
        coords = vec4(-542.52, -197.16, 37.24, 63.55),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
--[[     -- Driving School Ped
    {
        model = 'a_m_m_eastsa_02',
        coords = vec4(240.91, -1379.2, 32.74, 138.96),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        drivingschool = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    } ]]
}
