Config.Locations["dons"] = {
    zoneEnabled = false,
    chairsEnabled = false,
    job = "pearls", -- Set this to the required job
    label = "Pearls",
    MLO = "dons",
    POSImg = "https://i.imgur.com/zZDb116.png",
    MenuImg = "https://i.imgur.com/H2vO7Dg.png",
    autoClock = { enter = true, exit = true },
    zones = {
        vec2(-1866.0816650391, -1205.9887695312),
        vec2(-1830.6030273438, -1162.0692138672),
        vec2(-1797.5230712891, -1189.0334472656),
        vec2(-1837.7026367188, -1225.6320800781)
    },
    blip = vector3(-1826.28, -1197.81, 14.31), blipcolor = 5, blipsprite = 106, blipscale = 0.7, blipdisp = 6, blipcat = nil,
    garage = { spawn = vector4(-1812.39, -1191.22, 13.02, 215.34), out = vector4(-1809.3, -1196.06, 13.02, 313.04), list = { ["panto"] = {}, ["burrito3"] = {} } },
    Booth = {
        enableBooth = false,
        DefaultVolume = 0.1, -- 0.01 is lowest, 1.0 is max
        radius = 30, -- The radius of the sound from the booth
        coords = vector3(-1819.1, -1199.52, 14.31), -- Where the booth is located
    },
    IngredientFridges = {
        { coords = vec3(-1844.5, -1190.53, 14.5), l = 1.4, w = 0.6, heading = 150, shop = Ingredients.FoodItemsPearls},
    },
    CocktailTargets = {
        { coords = vec3(-1837.07, -1188.95, 14),  l = 0.6, w = 0.6, heading = 60, craftable = Pearls.Cocktail, prop = true},
    },
    BarTap = {
         { coords = vec3(-1837.35, -1189.52, 14), w = 0.6, l = 1.0, heading = 240, craftable = Pearls.Beer },
         { coords = vec3(-1837.9, -1190.63, 14), w = 0.6, l = 1.0, heading = 240, craftable = Pearls.Beer },
    },
    CoffeeTargets = {
        { coords = vec3(-1837.89, -1190.08, 14), w = 0.6, l = 1.0, heading = 30, craftable = Pearls.Coffee },
    },
    OvenTargets = {
        { coords = vec3(-1844.29, -1185.96, 14), w = 0.6, l = 1.8, heading = 60, craftable = Pearls.Oven },
    },
    FryerTargets = {
        { coords = vec3(-1843.51, -1184.5, 14),  w = 0.6, l = 1.4, heading = 60, craftable = Pearls.Fryer },
    },
    ChopBoard = {
        { coords = vec3(-1844.89, -1195.06, 14), l = 0.6, w = 0.6, heading = 152, craftable = Pearls.ChopBlock },
        { coords = vec3(-1848.85, -1198.68, 14), l = 0.6, w = 0.6, heading = 152, craftable = Pearls.ChopBlock  },
        { coords = vec3(-1847.22, -1199.64, 14), l = 0.6, w = 0.6, heading = 152, craftable = Pearls.ChopBlock },
    },
    CounterTarget = {
        { coords = vec3(-1839.79, -1182.58, 14), l = 2.2, w = 0.6, heading = 150 },
    },
    TrayTargets = {
        { coords = vec3(-1834.57, -1190.84, 14),  l = 0.6, w = 0.6, heading = 150},
    },
    DrinkFridges = {
        { coords = vec3(-1844.5, -1190.53, 13.6),  l = 0.6, w = 0.6, heading = 150},
        { coords = vec3(-1840.12, -1192.57, 13.91),  l = 0.6, w = 0.6, heading = 56},
    },
    BossTargets = {
        { coords = vec3(-1839.85, -1183.78, 14),  l = 0.6, w = 0.6, heading = 151 },
    },
    SinkTargets = {
        { coords = vec3(-1839.66, -1186.33, 14),  l = 0.6, w = 0.6, heading = 150},
        { coords = vec3(-1842.43, -1182.55, 14),  l = 0.6, w = 0.6, heading = 150},
    },
    PosTargets = {
        { coords = vec3(-1837.12, -1184.67, 14), l = 0.6, w = 0.6, heading = 223.},
        { coords = vec3(-1841.65, -1189.32, 14), l = 0.6, w = 0.6, heading = 223.},
    },
    SushiRolling = {},
    FrontDesk = {}
}