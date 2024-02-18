Config = {}

Config.prop = 'gr_prop_gr_bench_04b'

Config.craftingBenches = {
    -- Hidden Crafting Stations
    {id = "paleto", coords = vector3(429.16, 6478.77, 28.79), heading = 140.76},
    {id = "grove", coords = vector3(265.85, -1784.17, 27.09), heading = 130.76},
    {id = "airport", coords = vector3(-888.32, -2385.75, 14.02), heading = 52.76},
    {id = "canels", coords = vector3(-1026.48, -1164.53, 2.16), heading = 300.0},
    {id = "peir", coords = vector3(-3261.95, 956.1, 8.35), heading = 90.0},
    {id = "grapeseed", coords = vector3(2441.81, 4973.76, 51.57), heading = 135.0},
    {id = "lighthouse", coords = vector3(3336.69, 5165.21, 18.31), heading = 160.0},
    {id = "leftside", coords = vector3(3817.0, 4442.33, 2.81), heading = 280.0},
    {id = "mining", coords = vector3(2665.7, 2885.57, 35.79), heading = 200.0},
    {id = "industrial", coords = vector3(2739.23, 1540.64, 24.5), heading = 350.0},
    {id = "scrapping", coords = vector3(1568.27, -2170.4, 77.57), heading = 80.0},
    {id = "southindustrial", coords = vector3(801.89, -2371.55, 29.1), heading = 175.0},

    -- Gang Crafting Stations
  --  {id = "grove", coords = vector3(429.16, 6478.77, 28.79), heading = 140.76},
}

--[[
Make sure to change the image path to your inventory image file. Default is qb-inventory, you can change it to qb-inventory by doing this example below:
    https://cfx-nui-qb-inventory/html/images/radio.png
]]


-- Recipes that come with every workbench
Config.defaultRecipes = {
    ["metal-bolt"] = {
        item = "metal-bolt",
        label = "Metal Bolt",
        image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metalscrap", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "steel", label = "Steel", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
            {item = "aluminium", label = "Aluminium", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/aluminum.png"},
        }
    },

    ["metal-screw"] = {
        item = "metal-screw",
        label = "Metal Screw",
        image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metalscrap", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "steel", label = "Steel", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
            {item = "aluminium", label = "Aluminium", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/aluminum.png"},
        }
    },

    ["aluminium-spring"] = {
        item = "aluminium-spring",
        label = "Aluminium Spring",
        image = "https://cfx-nui-qb-inventory/html/images/aluminium-spring.png", 
        isAttachment = false,
        threshold = 20,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metalscrap", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "steel", label = "Steel", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
            {item = "aluminium", label = "Aluminium", amount = 12, image = "https://cfx-nui-qb-inventory/html/images/aluminum.png"},
        }
    },

    ["empty_weed_bag-bag"] = {
        item = "empty_weed_bag",
        label = "Drug Baggy",
        image = "https://cfx-nui-qb-inventory/html/images/plastic-bag.png", 
        isAttachment = false,
        threshold = 20,
        points = 0,
        components = {
            {item = "plastic", label = "Plastic", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/plastic.png"},
        }
    },

    ["bottle"] = {
        item = "bottle",
        label = "Empty Bottle",
        image = "https://cfx-nui-qb-inventory/html/images/bottle.png", 
        isAttachment = false,
        threshold = 20,
        points = 0,
        components = {
            {item = "glass", label = "Glass", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/bottle.png"},
        }
    },

    ["printerdocument"] = {
        item = "printerdocument",
        label = "Printer Document",
        image = "https://cfx-nui-qb-inventory/html/images/printerdocument.png", 
        isAttachment = false,
        threshold = 20,
        points = 0,
        components = {
            {item = "wood", label = "Wood", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/treebark.png"},
        }
    },

    steel_plate = {
        item = "steel_plate",
        label = "Steel Plate",
        image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png", 
        isAttachment = false,
        threshold = 40,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metalscrap", amount = 12, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "steel", label = "Steel", amount = 18, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
            {item = "aluminium", label = "Aluminium", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/aluminum.png"},
        }
    },

    lockpick = {
        item = "lockpick",
        label = "Lockpick",
        image = "https://cfx-nui-qb-inventory/html/images/lockpick.png", 
        isAttachment = false,
        threshold = 50,
        points = 0,
        components = {
            {item = "metalscrap", label = "Metalscrap", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
        }
    },

    silverplate = {
        item = "silverplate",
        label = "Silver Plate",
        image = "https://cfx-nui-qb-inventory/html/images/silverplate.png", 
        isAttachment = false,
        threshold = 55,
        points = 1,
        components = {
            {item = "silverore", label = "Silver Ore", amount = 12, image = "https://cfx-nui-qb-inventory/html/images/silverore.png"},
            {item = "silveringot", label = "Silver Ingot", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/silveringot.png"},
            {item = "steel", label = "Steel", amount = 18, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
        }
    },

    goldplate = {
        item = "goldplate",
        label = "Gold Plate",
        image = "https://cfx-nui-qb-inventory/html/images/goldplate.png", 
        isAttachment = false,
        threshold = 55,
        points = 1,
        components = {
            {item = "goldore", label = "Gold Ore", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/goldore.png"},
            {item = "goldingot", label = "Gold Ingot", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/goldingot.png"},
            {item = "steel", label = "Steel", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
        }
    },


    bullet_casing = {
        item = "bullet_casing",
        label = "Bullet Casing",
        image = "https://cfx-nui-qb-inventory/html/images/bullet_casing.png", 
        isAttachment = false,
        threshold = 60,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "aluminium", label = "Aluminium", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/aluminum.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
            {item = "goldplate", label = "Gold Plate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/goldplate.png"},
        }
    },

    aluminumoxide = {
        item = "aluminumoxide",
        label = "Aluminumoxide",
        image = "https://cfx-nui-qb-inventory/html/images/aluminumoxide.png", 
        isAttachment = false,
        threshold = 80,
        points = 1,
        components = {
            {item = "aluminium", label = "Aluminium", amount = 30, image = "https://cfx-nui-qb-inventory/html/images/aluminum.png"},
            {item = "glass", label = "Glass", amount = 30, image = "https://cfx-nui-qb-inventory/html/images/glass.png"},
        }
    },

    ironoxide = {
        item = "ironoxide",
        label = "Ironoxide",
        image = "https://cfx-nui-qb-inventory/html/images/ironoxide.png", 
        isAttachment = false,
        threshold = 80,
        points = 1,
        components = {
            {item = "iron", label = "Iron", amount = 30, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "glass", label = "Glass", amount = 30, image = "https://cfx-nui-qb-inventory/html/images/glass.png"},
        }
    },

    
    methlab = {
        item = "methlab",
        label = "Methlab",
        image = "https://cfx-nui-qb-inventory/html/images/lab.png", 
        isAttachment = false,
        threshold = 80,
        points = 1,
        components = {
            {item = "iron", label = "Iron", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "plastic", label = "Plastic", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/plastic.png"},
            {item = "glass", label = "Glass", amount = 60, image = "https://cfx-nui-qb-inventory/html/images/glass.png"},
            {item = "silverplate", label = "silverplate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/silverplate.png"},
        }
    },

    
    advancedlockpick = {
        item = "advancedlockpick",
        label = "Advanced Lockpick",
        image = "https://cfx-nui-qb-inventory/html/images/advancedlockpick.png", 
        isAttachment = false,
        threshold = 100,
        points = 1,
        components = {
            {item = "metal-bolt", label = "Metal Bolt", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "copper", label = "Copper", amount = 18, image = "https://cfx-nui-qb-inventory/html/images/copper.png"},
            {item = "rubber", label = "Rubber", amount = 12, image = "https://cfx-nui-qb-inventory/html/images/rubber.png"},
            {item = "aluminium-spring", label = "Aluminium Spring", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/aluminium-spring.png"},
            {item = "plastic", label = "Plastic", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/plastic.png"},
        }
    },

    screwdriverset = {
        item = "screwdriverset",
        label = "Screwdriver Set",
        image = "https://cfx-nui-qb-inventory/html/images/screwdriverset.png", 
        isAttachment = false,
        threshold = 120,
        points = 1,
        components = {
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "iron", label = "Iron", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "rubber", label = "Rubber", amount = 14, image = "https://cfx-nui-qb-inventory/html/images/rubber.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
            {item = "plastic", label = "Plastic", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/plastic.png"},
            {item = "wood", label = "Wood", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/woodplank.png"},
        }
    },

    trojan_usb = {
        item = "trojan_usb",
        label = "Trojan USB",
        image = "https://cfx-nui-qb-inventory/html/images/trojan_usb.png", 
        isAttachment = false,
        threshold = 140,
        points = 1,
        components = {
            {item = "electronickit", label = "Electronic Kit", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/electronickit.png"},
            {item = "rubber", label = "Rubber", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/rubber.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "plastic", label = "Plastic", amount = 14, image = "https://cfx-nui-qb-inventory/html/images/plastic.png"},
        }
    },

    gunpowder = {
        item = "gunpowder",
        label = "Gunpowder",
        image = "https://cfx-nui-qb-inventory/html/images/Gunpowder.png", 
        isAttachment = false,
        threshold = 160,
        points = 1,
        components = {
            {item = "hydrochloricacid", label = "Hydrochloric Acid", amount = 1, image = "hydrochloricacid.png"},
            {item = "bakingsoda", label = "Baking Soda", amount = 1, image = "bakingsoda.png"},
            {item = "lithium", label = "Lithium", amount = 1, image = "lithium.png"},
            {item = "metalscrap", label = "Metal Scrap", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
        }
    },

    -- // AMMO

    pistol_ammo = {
        item = "pistol_ammo",
        label = "Pistol Ammo",
        image = "https://cfx-nui-qb-inventory/html/images/pistol_ammo.png", 
        isAttachment = false,
        threshold = 180,
        points = 1,
        components = {
            {item = "gunpowder", label = "Gunpowder", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/gunpowder.png"},
            {item = "bullet_casing", label = "Bullet Casing", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/bullet_casing.png"},
            {item = "metalscrap", label = "Metal Scrap", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
        }
    },

    shotgun_ammo = {
        item = "shotgun_ammo",
        label = "Shotgun Ammo",
        image = "https://cfx-nui-qb-inventory/html/images/shotgun_ammo.png", 
        isAttachment = false,
        threshold = 200,
        points = 1,
        components = {
            {item = "gunpowder", label = "Gunpowder", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/gunpowder.png"},
            {item = "bullet_casing", label = "Bullet Casing", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/bullet_casing.png"},
            {item = "metalscrap", label = "Metal Scrap", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "steel", label = "Steel", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
        }
    },
    
    smg_ammo = {
        item = "smg_ammo",
        label = "SMG Ammo",
        image = "https://cfx-nui-qb-inventory/html/images/smg_ammo.png", 
        isAttachment = false,
        threshold = 220,
        points = 1,
        components = {
            {item = "gunpowder", label = "Gunpowder", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/gunpowder.png"},
            {item = "bullet_casing", label = "Bullet Casing", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/bullet_casing.png"},
            {item = "metalscrap", label = "Metal Scrap", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "steel", label = "Steel", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
        }
    },

    -- // WEAPONS

    -- // Pistols
    ["pistol-body"] = {
        item = "pistol-body",
        label = "Pistol Body",
        image = "https://cfx-nui-qb-inventory/html/images/pistol-body.png", 
        isAttachment = false,
        threshold = 250,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    ["pistol-clip"] = {
        item = "pistol-clip",
        label = "Pistol Clip",
        image = "https://cfx-nui-qb-inventory/html/images/pistol-clip.png", 
        isAttachment = false,
        threshold = 250,
        points = 1,
        components = {
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    ["pistol-grip"] = {
        item = "pistol-grip",
        label = "Pistol Stock",
        image = "https://cfx-nui-qb-inventory/html/images/pistol-grip.png", 
        isAttachment = false,
        threshold = 250,
        points = 1,
        components = {
            {item = "steel", label = "Steel", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    ["pistol-trigger"] = {
        item = "pistol-trigger",
        label = "Pistol Trigger",
        image = "https://cfx-nui-qb-inventory/html/images/pistol-trigger.png", 
        isAttachment = false,
        threshold = 250,
        points = 1,
        components = {
            {item = "rubber", label = "Rubber", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/rubber.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    -- Pistol
    weapon_snspistol = {
        item = "weapon_snspistol",
        label = "SNS Pistol",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_snspistol_mk2.png", 
        isAttachment = false,
        threshold = 280,
        points = 1,
        components = {
            {item = "pistol-body", label = "Pistol Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-body.png"},
            {item = "pistol-grip", label = "Pistol Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-grip.png"},
            {item = "pistol-trigger", label = "Pistol Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-trigger.png"},
            {item = "pistol-clip", label = "Pistol Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-clip.png"},
            {item = "pistol-receiver", label = "Pistol Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-receiver.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
        }
    },

        -- // SMG
    ["smg-body"] = {
        item = "smg-body",
        label = "SMG Body",
        image = "https://cfx-nui-qb-inventory/html/images/smg-body.png", 
        isAttachment = false,
        threshold = 320,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "copper", label = "Copper", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/copper.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    ["smg-clip"] = {
        item = "smg-clip",
        label = "SMG Clip",
        image = "https://cfx-nui-qb-inventory/html/images/smg-clip.png", 
        isAttachment = false,
        threshold = 320,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "copper", label = "Copper", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/copper.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    ["smg-stock"] = {
        item = "smg-stock",
        label = "SMG Stock",
        image = "https://cfx-nui-qb-inventory/html/images/smg-stock.png", 
        isAttachment = false,
        threshold = 320,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "copper", label = "Copper", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/copper.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    ["smg-trigger"] = {
        item = "smg-trigger",
        label = "SMG Trigger",
        image = "https://cfx-nui-qb-inventory/html/images/smg-trigger.png", 
        isAttachment = false,
        threshold = 320,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "copper", label = "Copper", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/copper.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    weapon_microsmg = {
        item = "weapon_microsmg",
        label = "Micro SMG",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_microsmg.png", 
        isAttachment = false,
        threshold = 350,
        points = 1,
        components = {
            {item = "smg-body", label = "SMG Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-body.png"},
            {item = "smg-stock", label = "SMG Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-stock.png"},
            {item = "smg-trigger", label = "SMG Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-trigger.png"},
            {item = "smg-clip", label = "SMG Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-clip.png"},
            {item = "smg-receiver", label = "SMG Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-receiver.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
        }
    }, 
    

    -- // SHOTGUNS
    ["shotgun-body"] = {
        item = "shotgun-body",
        label = "Shotgun Body",
        image = "https://cfx-nui-qb-inventory/html/images/shotgun-body.png", 
        isAttachment = false,
        threshold = 370,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
            {item = "wood_plank", label = "Wood Plank", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/woodplank.png"},
        }
    },

    ["shotgun-stock"] = {
        item = "shotgun-stock",
        label = "Shotgun Stock",
        image = "https://cfx-nui-qb-inventory/html/images/shotgun-stock.png", 
        isAttachment = false,
        threshold = 370,
        points = 1,
        components = {
            {item = "steel", label = "Steel", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    ["shotgun-trigger"] = {
        item = "shotgun-trigger",
        label = "Shotgun Trigger",
        image = "https://cfx-nui-qb-inventory/html/images/shotgun-trigger.png", 
        isAttachment = false,
        threshold = 370,
        points = 1,
        components = {
            {item = "rubber", label = "Rubber", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/rubber.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    -- Shotgun
    weapon_pumpshotgun = {
        item = "weapon_pumpshotgun",
        label = "Pump Shotgun",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_pumpshotgun.png", 
        isAttachment = false,
        threshold = 400,
        points = 1,
        components = {
            {item = "shotgun-body", label = "Shotgun Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-body.png"},
            {item = "shotgun-stock", label = "Shotgun Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-stock.png"},
            {item = "shotgun-trigger", label = "Shotgun Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-trigger.png"},
            {item = "shotgun-receiver", label = "Shotgun Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-receiver.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
        }
    },
  
   -- // RIFLE
   ["rifle-body"] = {
        item = "rifle-body",
        label = "Rifle Body",
        image = "https://cfx-nui-qb-inventory/html/images/rifle-body.png", 
        isAttachment = false,
        threshold = 420,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "copper", label = "Copper", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/copper.png"},
            {item = "steel", label = "Steel", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    ["rifle-clip"] = {
        item = "rifle-clip",
        label = "Rifle Clip",
        image = "https://cfx-nui-qb-inventory/html/images/rifle-clip.png", 
        isAttachment = false,
        threshold = 420,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "copper", label = "Copper", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/copper.png"},
            {item = "steel", label = "Steel", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    ["rifle-stock"] = {
        item = "rifle-stock",
        label = "Rifle Stock",
        image = "https://cfx-nui-qb-inventory/html/images/rifle-stock.png", 
        isAttachment = false,
        threshold = 420,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "copper", label = "Copper", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/copper.png"},
            {item = "steel", label = "Steel", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    ["rifle-trigger"] = {
        item = "rifle-trigger",
        label = "Rifle Trigger",
        image = "https://cfx-nui-qb-inventory/html/images/rifle-trigger.png", 
        isAttachment = false,
        threshold = 420,
        points = 1,
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "iron", label = "Copper", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "steel", label = "Steel", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        }
    },

    -- Rifle
    weapon_assaultrifle = {
        item = "weapon_assaultrifle",
        label = "Assault Rifle",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_assaultrifle_mk2.png", 
        isAttachment = false,
        threshold = 450,
        points = 1,
        components = {
            {item = "rifle-body", label = "Rifle Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-body.png"},
            {item = "rifle-stock", label = "Rifle Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-stock.png"},
            {item = "rifle-trigger", label = "Rifle Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-trigger.png"},
            {item = "rifle-clip", label = "Rifle Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-clip.png"},
            {item = "rifle-receiver", label = "Rifle Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-receiver.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
        }
    },    

--[[     -- // ATTACHEMENTS \\ --

    -- 
    pistol_defaultclip = {
        item = "pistol_defaultclip",
        label = "Pistol Default Clip",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_assaultrifle_mk2.png", 
        isAttachment = true,
        threshold = 0,
        points = 1,
        components = {
            {item = "metal-screw", label = "Metal Screw", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
            {item = "rubber", label = "Rubber", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/rubber.png"},
            {item = "aluminium", label = "Aluminium", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/aluminum.png"},
            {item = "metalscrap", label = "Metal Scrap", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            
        }
    },   
    
    pistol_extendedclip = {
        item = "pistol_extendedclip",
        label = "Pistol Extended Clip",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_assaultrifle_mk2.png", 
        isAttachment = true,
        threshold = 0,
        points = 1,
        components = {
            {item = "metal-screw", label = "Metal Screw", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "pistol_defaultclip", label = "Pistol Default Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol_defaultclip.png"},  
        }
    }, 
 ]]


}

--Recipes that are unlocked with blueprints
Config.blueprintRecipes = {
    handcuffs = {
        item = "handcuffs",
        label = "Handcuffs",
        image = "https://cfx-nui-qb-inventory/html/images/handcuffs.png",
        isAttachment = false,
        points = 1,
        components = {
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "advancedlockpick", label = "Advanced Lockpick", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/advancedlockpick.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png"
    },

    electronickit = {
        item = "electronickit",
        label = "Electronic Kit",
        image = "https://cfx-nui-qb-inventory/html/images/electronickit.png",
        isAttachment = false,
        points = 1, 
        components = {
            {item = "radio", label = "Radio", amount = 1, image = "radio.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "steel-plate"},
            {item = "rubber", label = "Rubber", amount = 8, image = "rubber.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 8, image = "metal-screw.png"},
            {item = "iphone", label = "iPhone", amount = 1, image = "iphone.png"},
            {item = "trojan_usb", label = "Trojan USB", amount = 1, image = "trojan_usb.png"},
            {item = "goldplate", label = "Gold Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/goldplate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    atmkit = {
        item = "atmkit",
        label = "ATM Kit",
        image = "https://cfx-nui-qb-inventory/html/images/atmkit.png",
        isAttachment = false,
        points = 1, 
        components = {
            {item = "electronickit", label = "Electronic Kit", amount = 1, image = "electronickit.png"},
            {item = "samsungphone", label = "Samsung Phone", amount = 1, image = "samsungphone.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "metal-screw.png"},
            {item = "aluminium", label = "Aluminium", amount = 8, image = "aluminum.png"},
            {item = "goldplate", label = "Gold Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/goldplate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    armor = {
        item = "armor",
        label = "Armor",
        image = "https://cfx-nui-qb-inventory/html/images/armor.png",
        isAttachment = false,
        points = 1, 
        components = {
            {item = "steel", label = "Steel", amount = 20, image = "steel.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 6, image = "steel-plate"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "metal-screw.png"},
            {item = "ironoxide", label = "Ironoxide", amount = 1, image = "ironoxide.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    syphoningkit = {
        item = "syphoningkit",
        label = "Syphoning Kit",
        image = "https://cfx-nui-qb-inventory/html/images/syphoningkit.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "jerrycan", label = "Jerry Can", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/jerrycan.png"},
            {item = "plastic", label = "plastic", amount = 5, image = "https://cfx-nui-qb-inventory/html/images/plastic.png"},
            {item = "rubber", label = "Rubber", amount = 5, image = "https://cfx-nui-qb-inventory/html/images/rubber.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "wood", label = "Wood", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/woodplank.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    harness = {
        item = "harness",
        label = "Harness",
        image = "https://cfx-nui-qb-inventory/html/images/harness.png",
        isAttachment = false,
        points = 1, 
        components = {
            {item = "plastic", label = "Plastic", amount = 20, image = "plastic.png"},
            {item = "rubber", label = "Rubber", amount = 20, image = "rubber.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "metal-screw.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    thermite = { 
        item = "thermite",
        label = "Thermite",
        image = "https://cfx-nui-qb-inventory/html/images/thermite.png",
        isAttachment = false,
        points = 1, 
        components = {
            {item = "gunpowder", label = "Gunpowder", amount = 20, image = "gunpowder.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 6, image = "metal-bolt.png"},
            {item = "metalscrap", label = "metalscrap", amount = 6, image = "metalscrap.png"},
            {item = "rubber", label = "Rubber", amount = 20, image = "rubber.png"},
            {item = "plastic", label = "Plastic", amount = 20, image = "plastic.png"},
            {item = "ironoxide", label = "Ironoxide", amount = 2, image = "ironoxide.png"},
            {item = "aluminumoxide", label = "Aluminumoxide", amount = 2, image = "aluminumoxide.png"},
            {item = "silverplate", label = "Silver Plate", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/silverplate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    }, 

    thermitecharge = {
        item = "thermitecharge",
        label = "Thermite Charge",
        image = "https://cfx-nui-qb-inventory/html/images/thermitecharge.png",
        isAttachment = false,
        points = 1, 
        components = {
            {item = "gunpowder", label = "Gunpowder", amount = 20, image = "gunpowder.png"},
            {item = "metal-screw", label = "Metal Bolt", amount = 6, image = "metal-screw.png"},
            {item = "steel", label = "Steel", amount = 6, image = "steel.png"},
            {item = "iron", label = "Iron", amount = 20, image = "iron.png"},
            {item = "plastic", label = "Plastic", amount = 20, image = "plastic.png"},
            {item = "ironoxide", label = "Ironoxide", amount = 3, image = "ironoxide.png"},
            {item = "aluminumoxide", label = "Aluminumoxide", amount = 3, image = "aluminumoxide.png"},
            {item = "wood", label = "Wood", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/woodplank.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    weapon_molotov = {
        item = "weapon_molotov",
        label = "Molotov Cocktail",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_molotov.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "gunpowder", label = "Gunpowder", amount = 1, image = "gunpowder.png"},
            {item = "jerrycan", label = "Jerry Can", amount = 1, image = "jerrycan.png"},
            {item = "glass", label = "Glass", amount = 20, image = "glass.png"},
            {item = "sulphuricacid", label = "Sulphuricacid", amount = 2, image = "sulphuricacid.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },
    
    weapon_stickybomb = {
        item = "weapon_stickybomb",
        label = "Stickybomb",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_stickybomb.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "gunpowder", label = "Gunpowder", amount = 4, image = "gunpowder.png"},
            {item = "jerrycan", label = "Jerry Can", amount = 1, image = "jerrycan.png"},
            {item = "electronickit", label = "Electronickit", amount = 20, image = "electronickit.png"},
            {item = "sulphuricacid", label = "Sulphuricacid", amount = 2, image = "sulphuricacid.png"},
            {item = "aluminium-spring", label = "Aluminum Spring", amount = 4, image = "aluminium-spring.png"},
            {item = "copper", label = "Copper", amount = 20, image = "copper.png"},
            {item = "silverplate", label = "Silver Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/silverplate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    c4_bomb = {
        item = "c4_bomb",
        label = "C4 Bomb",
        image = "https://cfx-nui-qb-inventory/html/images/c4_bomb.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "gunpowder", label = "Gunpowder", amount = 20, image = "gunpowder.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 6, image = "metal-screw.png"},
            {item = "steel", label = "Steel", amount = 6, image = "steel.png"},
            {item = "iron", label = "Iron", amount = 20, image = "iron.png"},
            {item = "plastic", label = "Plastic", amount = 20, image = "plastic.png"},
            {item = "ironoxide", label = "Ironoxide", amount = 4, image = "ironoxide.png"},
            {item = "aluminumoxide", label = "Aluminumoxide", amount = 4, image = "aluminumoxide.png"},
            {item = "aluminium-spring", label = "Aluminum Spring", amount = 4, image = "aluminium-spring.png"},
            {item = "copper", label = "Copper", amount = 28, image = "copper.png"},
            {item = "wood", label = "Wood", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/woodplank.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    tunerlaptop = {
        item = "tunerlaptop",
        label = "Tuner Laptop",
        image = "https://cfx-nui-qb-inventory/html/images/tunerlaptop.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "electronickit", label = "Electronic Kit", amount = 4, image = "electronickit.png"},
            {item = "glass", label = "glass", amount = 100, image = "glass.png"},
            {item = "metalscrap", label = "Metal Scrap", amount = 100, image = "metalscrap.png"},
            {item = "plastic", label = "Plastic", amount = 100, image = "plastic.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 10, image = "metal-screw.png"},
            {item = "copper", label = "Copper", amount = 100, image = "copper.png"},
            {item = "laptop", label = "Laptop", amount = 1, image = "laptop.png"},
            {item = "vpn", label = "VPN", amount = 1, image = "vpn.png"},
            {item = "trojan_usb", label = "Trojan USB", amount = 1, image = "trojan_usb.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "steel-plate.png"},
            {item = "rubber", label = "Rubber", amount = 40, image = "rubber.png"},
            {item = "silverplate", label = "Silver Plate", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/silverplate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    boostingtablet = {
        item = "boostingtablet",
        label = "Boosting Tablet",
        image = "https://cfx-nui-qb-inventory/html/images/boostingtablet.png",
        isAttachment = false,
        points = 1,  
        components = { 
            {item = "electronickit", label = "Electronic Kit", amount = 2, image = "electronickit.png"},
            {item = "glass", label = "glass", amount = 40, image = "glass.png"},
            {item = "rubber", label = "Rubber", amount = 40, image = "rubber.png"},
            {item = "plastic", label = "Plastic", amount = 40, image = "plastic.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 6, image = "metal-screw.png"},
            {item = "copper", label = "Copper", amount = 20, image = "copper.png"},
            {item = "vpn", label = "VPN", amount = 1, image = "vpn.png"},
            {item = "tablet", label = "Tablet", amount = 1, image = "tablet.png"},
            {item = "trojan_usb", label = "Trojan USB", amount = 1, image = "trojan_usb.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    hackingdevice = {
        item = "hackingdevice",
        label = "Hacking Device",
        image = "https://cfx-nui-qb-inventory/html/images/hackingdevice.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "electronickit", label = "Electronic Kit", amount = 1, image = "electronickit.png"},
            {item = "glass", label = "glass", amount = 20, image = "glass.png"},
            {item = "rubber", label = "Rubber", amount = 20, image = "rubber.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "steel-plate.png"},
            {item = "metal-bolt", label = "Metal Screw", amount = 6, image = "metal-bolt.png"},
            {item = "iron", label = "Iron", amount = 20, image = "iron.png"},
            {item = "trojan_usb", label = "Trojan USB", amount = 1, image = "trojan_usb.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    gpshackingdevice = {
        item = "gpshackingdevice",
        label = "GPS Hacking Device",
        image = "https://cfx-nui-qb-inventory/html/images/gpshackingdevice.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "electronickit", label = "Electronic Kit", amount = 1, image = "electronickit.png"},
            {item = "glass", label = "glass", amount = 10, image = "glass.png"},
            {item = "rubber", label = "Rubber", amount = 10, image = "rubber.png"},
            {item = "plastic", label = "Plastic", amount = 10, image = "plastic.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 6, image = "metal-screw.png"},
            {item = "iron", label = "Iron", amount = 20, image = "iron.png"},
            {item = "radio", label = "Radio", amount = 1, image = "radio.png"},
            {item = "hackingdevice", label = "Hacking Device", amount = 1, image = "hackingdevice.png"},
            {item = "advancedlockpick", label = "Advanced Lockpick", amount = 1, image = "advancedlockpick.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

   -- // AMMO \\ --

    rifle_ammo = {
        item = "rifle_ammo",
        label = "Rifle Ammo",
        image = "https://cfx-nui-qb-inventory/html/images/rifle_ammo.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "gunpowder", label = "Gunpowder", amount = 30, image = "https://cfx-nui-qb-inventory/html/images/gunpowder.png"},
            {item = "bullet_casing", label = "Bullet Casing", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/bullet_casing.png"},
            {item = "metalscrap", label = "Metal Scrap", amount = 5, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "steel", label = "Steel", amount = 5, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    mg_ammo = {
        item = "mg_ammo",
        label = "Machine Gun Ammo",
        image = "https://cfx-nui-qb-inventory/html/images/mg_ammo.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "gunpowder", label = "Gunpowder", amount = 40, image = "https://cfx-nui-qb-inventory/html/images/gunpowder.png"},
            {item = "bullet_casing", label = "Bullet Casing", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/bullet_casing.png"},
            {item = "metalscrap", label = "Metal Scrap", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "steel", label = "Steel", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },
 
    snp_ammo = {
        item = "snp_ammo",
        label = "Sniper Ammo",
        image = "https://cfx-nui-qb-inventory/html/images/snp_ammo.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "gunpowder", label = "Gunpowder", amount = 50, image = "https://cfx-nui-qb-inventory/html/images/gunpowder.png"},
            {item = "bullet_casing", label = "Bullet Casing", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/bullet_casing.png"},
            {item = "metalscrap", label = "Metal Scrap", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "steel", label = "Steel", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    -- // GUN PARTS \\ --

    ["pistol-receiver"] = {
        item = "pistol-receiver",
        label = "Pistol Receiver",
        image = "https://cfx-nui-qb-inventory/html/images/pistol-receiver.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "aluminium", label = "Aluminium", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/aluminum.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    ["shotgun-receiver"] = {
        item = "shotgun-receiver",
        label = "Shotgun Receiver",
        image = "https://cfx-nui-qb-inventory/html/images/shotgun-receiver.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "aluminium", label = "Aluminium", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/aluminum.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    ["smg-receiver"] = {
        item = "smg-receiver",
        label = "SMG Receiver",
        image = "https://cfx-nui-qb-inventory/html/images/smg-receiver.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "copper", label = "Copper", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/copper.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 3, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },
 
    ["rifle-receiver"] = {
        item = "rifle-receiver",
        label = "Rifle Receiver",
        image = "https://cfx-nui-qb-inventory/html/images/rifle-receiver.png",
        isAttachment = false,
        points = 1,  
        components = {
            {item = "metalscrap", label = "Metal Scrap", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/metalscrap.png"},
            {item = "iron", label = "Iron", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/iron.png"},
            {item = "copper", label = "Copper", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/copper.png"},
            {item = "steel", label = "Steel", amount = 20, image = "https://cfx-nui-qb-inventory/html/images/steel.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },    

        -- // WEAPONS \\ --
       
    -- Pistol
    weapon_appistol = {
        item = "weapon_appistol",
        label = "AP Pistol",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_snspistol_mk2.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "pistol-body", label = "Pistol Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-body.png"},
            {item = "pistol-grip", label = "Pistol Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-grip.png"},
            {item = "pistol-trigger", label = "Pistol Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-trigger.png"},
            {item = "pistol-clip", label = "Pistol Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-clip.png"},
            {item = "pistol-receiver", label = "Pistol Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-receiver.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
            {item = "silverplate", label = "Silver Plate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/silverplate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },
    
    weapon_machinepistol = {
        item = " weapon_machinepistol",
        label = "Machine Pistol",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_snspistol_mk2.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "pistol-body", label = "Pistol Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-body.png"},
            {item = "pistol-grip", label = "Pistol Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-grip.png"},
            {item = "pistol-trigger", label = "Pistol Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-trigger.png"},
            {item = "pistol-clip", label = "Pistol Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-clip.png"},
            {item = "pistol-receiver", label = "Pistol Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-receiver.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
            {item = "silverplate", label = "Silver Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/silverplate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    weapon_fnx45 = {
        item = " weapon_fnx45",
        label = "FN FNX-45",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_pistol50.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "pistol-body", label = "Pistol Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-body.png"},
            {item = "pistol-grip", label = "Pistol Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-grip.png"},
            {item = "pistol-trigger", label = "Pistol Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-trigger.png"},
            {item = "pistol-clip", label = "Pistol Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-clip.png"},
            {item = "pistol-receiver", label = "Pistol Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/pistol-receiver.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

        -- SMG
    weapon_assaultsmg = {
        item = "weapon_assaultsmg",
        label = "Assault SMG",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_assaultsmg.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "smg-body", label = "SMG Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-body.png"},
            {item = "smg-stock", label = "SMG Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-stock.png"},
            {item = "smg-trigger", label = "SMG Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-trigger.png"},
            {item = "smg-clip", label = "SMG Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-clip.png"},
            {item = "smg-receiver", label = "SMG Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-receiver.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
            {item = "silverplate", label = "Silver Plate", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/silverplate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    weapon_mac10 = {
        item = "weapon_mac10",
        label = "MAC 10",
        image = "https://cfx-nui-qb-inventory/html/images/mac-10.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "smg-body", label = "SMG Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-body.png"},
            {item = "smg-stock", label = "SMG Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-stock.png"},
            {item = "smg-trigger", label = "SMG Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-trigger.png"},
            {item = "smg-clip", label = "SMG Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-clip.png"},
            {item = "smg-receiver", label = "SMG Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/smg-receiver.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    -- Shotgun
    weapon_remington = {
        item = "weapon_remington",
        label = "Remington",
        image = "https://cfx-nui-qb-inventory/html/images/remington.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "shotgun-body", label = "Shotgun Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-body.png"},
            {item = "shotgun-stock", label = "Shotgun Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-stock.png"},
            {item = "shotgun-trigger", label = "Shotgun Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-trigger.png"},
            {item = "shotgun-receiver", label = "Shotgun Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-receiver.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    weapon_dbshotgun = {
        item = "weapon_dbshotgun",
        label = "Double Barrel Shotgun",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_dbshotgun.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "shotgun-body", label = "Shotgun Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-body.png"},
            {item = "shotgun-stock", label = "Shotgun Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-stock.png"},
            {item = "shotgun-trigger", label = "Shotgun Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-trigger.png"},
            {item = "shotgun-receiver", label = "Shotgun Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/shotgun-receiver.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 2, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    -- Rifle
    weapon_bullpuprifle = {
        item = "weapon_bullpuprifle",
        label = "Bullpup Rifle",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_bullpuprifle.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "rifle-body", label = "Rifle Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-body.png"},
            {item = "rifle-stock", label = "Rifle Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-stock.png"},
            {item = "rifle-trigger", label = "Rifle Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-trigger.png"},
            {item = "rifle-clip", label = "Rifle Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-clip.png"},
            {item = "rifle-receiver", label = "Rifle Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-receiver.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    weapon_ak47 = {
        item = "weapon_ak47",
        label = "AK47",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_assaultrifle.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "rifle-body", label = "Rifle Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-body.png"},
            {item = "rifle-stock", label = "Rifle Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-stock.png"},
            {item = "rifle-trigger", label = "Rifle Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-trigger.png"},
            {item = "rifle-clip", label = "Rifle Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-clip.png"},
            {item = "rifle-receiver", label = "Rifle Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-receiver.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 4, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
            {item = "wood_plank", label = "Wood Plank", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/woodplank.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    -- Machine Guns
    weapon_mg = {
        item = "weapon_mg",
        label = "Machine Gun",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_mg.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "rifle-body", label = "Rifle Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-body.png"},
            {item = "rifle-stock", label = "Rifle Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-stock.png"},
            {item = "rifle-trigger", label = "Rifle Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-trigger.png"},
            {item = "rifle-clip", label = "Rifle Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-clip.png"},
            {item = "rifle-receiver", label = "Rifle Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-receiver.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 6, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },

    -- Sniper Rifle
    weapon_sniperrifle = {
        item = "weapon_sniperrifle",
        label = "Sniper Rifle",
        image = "https://cfx-nui-qb-inventory/html/images/weapon_sniperrifle.png", 
        isAttachment = false,
        threshold = 0,
        points = 1,
        components = {
            {item = "rifle-body", label = "Rifle Body", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-body.png"},
            {item = "rifle-stock", label = "Rifle Stock", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-stock.png"},
            {item = "rifle-trigger", label = "Rifle Trigger", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-trigger.png"},
            {item = "rifle-clip", label = "Rifle Clip", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-clip.png"},
            {item = "rifle-receiver", label = "Rifle Receiver", amount = 1, image = "https://cfx-nui-qb-inventory/html/images/rifle-receiver.png"},
            {item = "metal-bolt", label = "Metal Bolt", amount = 10, image = "https://cfx-nui-qb-inventory/html/images/metal-bolt.png"},
            {item = "metal-screw", label = "Metal Screw", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/metal-screw.png"},
            {item = "steel_plate", label = "Steel Plate", amount = 8, image = "https://cfx-nui-qb-inventory/html/images/steel-plate.png"},
        },
        blueprintImage = "https://cfx-nui-qb-inventory/html/images/blueprint.png" --Additional Value Required
    },
}




    


    
    

    
    
  

    



    
   
    
    
    
    
   


