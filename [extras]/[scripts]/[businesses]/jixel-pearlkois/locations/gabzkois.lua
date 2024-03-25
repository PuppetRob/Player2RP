Config.Locations["gabzkois"] = {
    zoneEnabled = true,
    chairsEnabled = true,
    job = "kois", -- Set this to the required job
    label = "Kois",
    MLO = "koi",
    POSImg = "https://i.imgur.com/zr1mzDs.png",
    MenuImg = "https://i.imgur.com/H2vO7Dg.png",
    autoClock = { enter = false, exit = true },
    zones = {
        vec2(-1098.35, -1438.8),
        vec2(-1055.1618652344, -1514.6763916016),
        vec2(-990.84399414062, -1476.4558105469),
        vec2(-1014.5709228516, -1423.4932861328)
    },
    blip = vector3(-1035.53, -1481.95, 4.58), blipcolor = 5, blipsprite = 106, blipscale = 0.7, blipdisp = 6, blipcat = nil,
    garage = { spawn = vector4(-1021.86, -1467.21, 5.04, 312.89), out = vector4(-1016.59, -1464.73, 5.03, 16.14), list = { ["panto"] = {}, ["burrito3"] = {} } },
    Booth = {
        enableBooth = false,
        DefaultVolume = 0.1, -- 0.01 is lowest, 1.0 is max
        radius = 30, -- The radius of the sound from the booth
        coords = vec3(120.0, -1281.72, 29.48), -- Where the booth is located
    },
    IngredientFridges = {
        { coords = vec3(-1076.26, -1441.31, -1.8), l = 0.6, w = 1.8, heading = 125, shop = Ingredients.FoodItemsKoi},
		{ coords = vec3(-1074.3, -1439.94, -1.8), l = 0.6, w = 1.8, heading = 305, shop = Ingredients.FoodItemsKoi},
    },
    CocktailTargets = {
        { coords = vec3(-1075.16, -1449.94, -1.8), heading = 35, prop = true, propzoffset = -0.5, craftable = Koi.Cocktails },
    },
    BarTap = {
        { coords = vec3(-1833.76, -1189.39, 14), w = 0.6, l = 1.0, heading = 240, craftable = Koi.Beer },
    },
    CoffeeTargets = {
        { coords = vec3(-1072.74, -1448.56, -1.8), w = 1.3, l = 0.6, heading = 33, craftable = Koi.Coffee },
    },
    OvenTargets = {
        { coords = vec3(-1072.23, -1443.79, -1.8), w = 0.6, l = 1.5, heading = 215, craftable = Koi.Oven },
        { coords = vec3(-1074.2, -1445.16, -1.8), w = 0.6, l = 1.5, heading = 215, craftable = Koi.Oven },
    },
    FryerTargets = {
        { coords = vec3(-1073.63, -1445.95, -1.8),  w = 1.1, l = 1.5, heading = 35, craftable = Koi.Fryer },
		{ coords = vec3(-1071.63, -1444.58, -1.8),  w = 1.1, l = 1.5, heading = 35, craftable = Koi.Fryer },
    },
    ChopBoard = {
        { coords = vec3(-1078.46, -1445.08, -1.8), l = 0.6, w = 0.6, heading = 35, craftable = Koi.ChopBlock },
    },
    SushiRolling = {
        { coords = vec3(-1075.21, -1446.01, -1.8), l = 0.6, w = 0.6, heading = 307, craftable = Koi.Sushi},
        { coords = vec3(-1072.63, -1445.33, -1.8), l = 0.6, w = 0.6, heading = 307, craftable = Koi.Sushi},
    },
    CounterTarget = {
        { coords = vec3(-1067.19, -1444.39, -1.8), l = 0.6, w = 1.0,  heading = 35},
    },
    TrayTargets = {
        { coords = vec3(-1033.55, -1482.99, 4.58), l = 0.6, w = 0.6, heading = 150},
    },
    
    DrinkFridges = {
        { coords = vec3(-1068.28, -1445.16, -1.8), l = 0.6, w = 0.6, heading = 223 },
    },
    BossTargets = {
        { coords = vec3(-1054.47, -1441.57, -1.8),  l = 0.6, w = 0.6, heading = 223},
    },
    SinkTargets = {
        { coords = vec3(-1077.19, -1444.03, -1.8), l = 0.6, w = 0.6, heading = 35},
        { coords = vec3(-1071.46, -1440.03, -1.8), l = 0.6, w = 0.6, heading = 35},
        { coords = vec3(-1048.17, -1485.99, 2.78), l = 0.6, w = 0.6, heading = 32},
        { coords = vec3(-1047.35, -1485.31, 2.78), l = 0.6, w = 0.6, heading = 32},
        { coords = vec3(-1044.12, -1491.72,  2.78), l = 0.6, w = 0.6, heading = 32},
        { coords = vec3(-1043.25, -1491.13, 2.78), l = 0.6, w = 0.6, heading = 32},
    },
    PosTargets = {
        {coords = vec3(-1834.11, -1189.97, 14), l = 0.6, w = 0.6, heading = 247},
        {coords = vec3(-1835.12, -1191.73, 14),  l = 0.6, w = 0.6, heading = 247},
    },
    FrontDesk = {
        {coords = vec3(-1034.44, -1484.18, 4.58), l = 0.6, w = 0.6, heading = 247},
    },
}
