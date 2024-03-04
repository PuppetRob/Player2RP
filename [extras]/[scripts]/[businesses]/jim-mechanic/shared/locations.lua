Config.Locations = Config.Locations or {}

Config.Locations[#Config.Locations+1] = { --[[ GABZ BENNYS ]]--
	Enabled = true,
	job = "bennys",
	zones = {
		vec2(-263.99075317382, -1349.6701660156),
		vec2(-263.5015258789, -1298.9702148438),
		vec2(-229.94024658204, -1299.089477539),
		vec2(-229.81985473632, -1291.589477539),
		vec2(-216.73846435546, -1288.9470214844),
		vec2(-193.63221740722, -1294.155883789),
		vec2(-174.24346923828, -1293.1431884766),
		vec2(-151.77659606934, -1300.6693115234),
		vec2(-151.88639831542, -1311.1921386718),
		vec2(-177.41833496094, -1311.566772461),
		vec2(-177.5919342041, -1351.1942138672)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(-226.48, -1316.17, 31.27, 0.0), w = 3.6, d = 0.8, },
	},
	store = {
		{ coords = vec4(-228.64, -1314.19, 31.3, 90.0), w = 3.60, d = 0.8 },
	},
	crafting = {
		{ coords = vec4(-214.82, -1339.74, 31.46, 90.0), w = 2.8, d = 1.5 },
	},
	clockin = {
		{ coords = vec4(-195.55, -1316.46, 31.2, 181.72), prop = false },
	},
	manualRepair = {
		{ coords = vec4(-200.28, -1311.62, 31.3, 0.0), prop = true, },
	},
	carLift = {
        { coords = vec4(-201.85, -1319.65, 31.3, 19.36), useMLOLift = true },
        { coords = vec4(-221.27, -1318.71, 31.3, 352.67), useMLOLift = true },
    },
	garage = {
		spawn = vec4(-182.74, -1317.61, 30.63, 357.23),
		out = vec4(-190.62, -1311.57, 31.3, 0.0),
		list = { "towtruck", "panto" },
		prop = true
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/b/be/BennysOriginalMotorWorks-GTAO-Logo.png",
		{ coords = vec4(-192.21, -1316.34, 31.10, 285.83), prop = true },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "perform" },
	},
	blip = {
		coords = vec3(-211.55, -1324.55, 30.9),
		label = "Bennys Original Motorworks",
		color = 1,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/kKC2Mw2.png",
	},
	discord = {
		link = "",
		color = 16711680,
	}
}

Config.Locations[#Config.Locations+1] = { -- [[ BIKE MECHANIC]] --
	Enabled = true,
	job = "bikemechanic",
	zones = {
		vec2(2493.2834472656, 4079.8583984375),
		vec2(2513.8764648438, 4069.0866699219),
		vec2(2541.7385253906, 4122.9858398438),
		vec2(2518.8464355469, 4133.5810546875)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(1180.85, 2635.0, 37.75, 90.0), w = 1.6, d = 0.6 },
	},
	store = {
		{ coords = vec4(1171.64, 2635.84, 37.78, 45.0), w = 0.6, d = 0.5 },
	},
	crafting = {
		{ coords = vec4(1176.69, 2635.44, 37.75, 270.0), w = 3.2, d = 1.0 },
	},
	clockin = {
		{ coords = vec4(1183.89, 2635.29, 37.78, 185.0), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(1162.75, 2622.96, 38.0, 1.32), prop = true, },
	},
	carLift = {
		{ coords = vec4(1174.78, 2644.54, 37.75, 180.0), },
		{ coords = vec4(1182.22, 2644.75, 37.75, 180.0) },
	},
	garage = {
		spawn = vec4(1165.92, 2642.87, 37.23, 358.2),
		out = vec4(1170.25, 2645.6, 37.81, 88.15),
		list = { "towtruck", "panto" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(1179.39, 2635.17, 37.75, 176.0), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(1177.62, 2640.83, 37.75),
		label = "Los Santos Customs",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/Zd6V0vI.png",
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { -- [[SANDY MECHANIC]] --
	Enabled = true,
	job = "sandymechanic",
	zones = {
		vec2(1190.8255615234, 2634.4262695312),
		vec2(1185.66015625, 2674.3720703125),
		vec2(1159.9328613281, 2674.5087890625),
		vec2(1160.1389160156, 2622.6899414062)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(1180.85, 2635.0, 37.75, 90.0), w = 1.6, d = 0.6 },
	},
	store = {
		{ coords = vec4(1171.64, 2635.84, 37.78, 45.0), w = 0.6, d = 0.5 },
	},
	crafting = {
		{ coords = vec4(1176.69, 2635.44, 37.75, 270.0), w = 3.2, d = 1.0 },
	},
	clockin = {
		{ coords = vec4(1183.89, 2635.29, 37.78, 185.0), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(1162.75, 2622.96, 38.0, 1.32), prop = true, },
	},
	carLift = {
		{ coords = vec4(1174.78, 2644.54, 37.75, 180.0), },
		{ coords = vec4(1182.22, 2644.75, 37.75, 180.0) },
	},
	garage = {
		spawn = vec4(1165.92, 2642.87, 37.23, 358.2),
		out = vec4(1170.25, 2645.6, 37.81, 88.15),
		list = { "towtruck", "panto" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(1179.39, 2635.17, 37.75, 176.0), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "perform" },
	},
	blip = {
		coords = vec3(1177.62, 2640.83, 37.75),
		label = "Los Santos Customs",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/Zd6V0vI.png",
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ OTTOS AUTOS ]]--
	Enabled = true,
	job = "ottos",
	zones = {
		vec2(787.97576904297, -785.07196044922),
		vec2(833.92730712891, -782.94207763672),
		vec2(848.05615234375, -832.97772216797),
		vec2(793.00842285156, -832.58557128906)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(836.97, -814.73, 26.33, 90.0), w = 0.6, d = 3.6, },
	},
	store = {
		{ coords = vec4(837.02, -808.22, 26.33, 90.0), w = 1.0, d = 1.4, },
	},
	crafting = {
		{ coords = vec4(837.03, -811.74, 26.33, 90.0), w = 1.4, d = 2.2, },
	},
	clockin = {
		{ coords = vec4(834.63, -829.76, 26.13, 197.67), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(835.0, -801.06, 26.27, 0.25), prop = true, },
	},
	carLift = {
		{ coords = vec4(828.15, -812.69, 26.33, 270.5) },
		{ coords = vec4(828.25, -819.93, 26.33, 270.5) },
		{ coords = vec4(827.96, -805.63, 26.33, 270.5) },
	},
	garage = {
		spawn = vec4(826.59, -793.63, 26.21, 84.34),
		out = vec4(824.3, -801.2, 26.37, 0.65),
		list = { "towtruck", "panto" },
		prop = true
	},
	payments = {
		{ coords = vec4(833.96, -826.79, 26.13, 0.35), prop = true },
		img = "https://i.imgur.com/74UVnCb.jpeg",
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(831.03, -813.01, 26.33),
		label = "Ottos Autos",
		color = 1,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/texIPiV.png",
	},
	discord = {
		link = "",
		color = 16711680,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ HAYES AUTOS ]]--
	Enabled = true,
	job = "hayesauto",
	zones = {
		vec2(-1439.9047851563, -443.4548034668),
		vec2(-1426.0206298828, -466.5227355957),
		vec2(-1400.1343994141, -451.71572875977),
		vec2(-1414.7999267578, -427.64019775391)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(-1414.94, -452.35, 35.91, 302.0), w = 4.0, d = 1.0, },
	},
	store = {
		{ coords = vec4(-1408.04, -448.04, 35.91, 302.0), w = 5.5, d = 1.0, },
	},
	crafting = {
		{ coords = vec4(-1407.68, -442.32, 35.91, 302.0), w = 0.6, d = 1.0, },
	},
	clockin = {
		{ coords = vec4(-1427.19, -457.51, 35.71, 300.0), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(-1421.91, -455.41, 35.91, 33.32), prop = true, },
	},
	carLift = {
		{ coords = vec4(-1418.92, -443.53, 35.91, 211.54) },
	},
	garage = {
		spawn = vec4(-1379.84, -451.82, 34.44, 124.0),
		out = vec4(-1401.57, -451.19, 34.48, 212.71),
		list = { "towtruck", "panto" },
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/0/0c/HayesAutoBodyShop-GTAV-Logo.png",
		{ coords = vec4(-1429.02, -453.6, 35.97, 350.0), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "perform" },
	},
	blip = {
		coords = vec3(-1417.12, -445.9, 35.91),
		label = "Hayes Autos",
		color = 57,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/j823Ss0.png",
	},
	discord = {
		link = "",
		color = 39135,
	}
}
