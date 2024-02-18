Config = {}

Config.setupMenu = 'qb-menu' -- qb-menu / nh-context
Config.Debug = false -- Debug Mode
Config.Blip = false -- Blip on Map
Config.RentalPlateMark = "SBMRENT" -- This is a Prefix for the Plate of the Vehicle

-- List of vehicles that can be rented
--@param name = The name of the vehicle, this will be displayed in the menu
--@param model = The model of the vehicle (https://wiki.rage.mp/index.php?title=Vehicles)
--@param price = The price of the vehicle
--@description = You can add as many vehicles as you want, just make sure you add a comma after the last bracket.
Config.vehicleList = {
    { name = "Scorcher (Bike)", model = "scorcher", price = 100 },
    { name = "Futo (2 Door)", model = "futo", price = 250 },
    { name = "Prairie (2 Door)", model = "prairie", price = 300 },
    { name = "Oracle (4 Door)", model = "oracle", price = 500 },
    { name = "Bison (4 Door Utility)", model = "bison", price = 500 },
    { name = "XLS (SUV)", model = "xls", price = 600 },
    { name = "Gresley (SUV)", model = "gresley", price = 650 },
    { name = "Faggio (Scooter)", model = "faggio", price = 150 },
    { name = "Esskey (Motorbike)", model = "esskey", price = 350 },
}

-- Set the rental times and additonal fees
--@param value = The value of the rental time
--@param text = The text of the rental time, this will be displayed in the menu
--@param fees = The additional fees for the rental time
--@description = You can add as many rental times as you want, just make sure you add a comma after the last bracket.
Config.rentalTimes = {
    { value = 1, text = '1 Minute', fees = 50 },
    { value = 5, text = '5 Minutess', fees = 250 },
    { value = 10, text = '10 Minutes', fees = 480 },
    { value = 15, text = '15 Minutes', fees = 650 },
    { value = 30, text = '30 Minutes', fees = 800 },
    { value = 60, text = '1 Hour', fees = 1250 },
}

-- Set the locations for the rental stations
--@param label = The name of the rental station, this will be displayed on the map
--@param coords = The coords of the rental station
--@param model = The model of the ped (https://docs.fivem.net/docs/game-references/ped-models/)
--@param scenario = The scenario of the ped (https://pastebin.com/raw/6mrYTdQv)
--@description = You can add as many locations as you want, just make sure you add a comma after the last bracket. 
Config.Locations = {
    ["rentalstations"] = {
        [1] = { label = "Vehicle Rental", coords = vector4(-836.84, -2347.51, 14.69, 181.63), model = `cs_carbuyer`, scenario = "WORLD_HUMAN_CLIPBOARD"}, -- Airport
        [2] = { label = "Vehicle Rental", coords = vector4(1992.62, 3777.29, 32.18, 183.39), model = `cs_solomon`, scenario = "WORLD_HUMAN_CLIPBOARD"}, -- Sandy
        [3] = { label = "Vehicle Rental", coords = vector4(-500.4, -254.27, 35.72, 202.41), model = `cs_movpremf_01`, scenario = "WORLD_HUMAN_CLIPBOARD"}, -- Job center
        [4] = { label = "Vehicle Rental", coords = vector4(-237.14, 6201.52, 31.94, 145.16), model = `csb_jackhowitzer`, scenario = "WORLD_HUMAN_CLIPBOARD"}, -- Paleto
    },
}

-- Set the locations for the vehicle spawn points
--@param workSpawn = The coords of the vehicle spawn point
--@param heading = The heading of the vehicle spawn point
Config.vehicleSpawn = {
    --- Los Santos International Airport
	[1] = { 
		workSpawn = {
			coords = vector3(-827.0, -2357.92, 14.57),
			heading = 332.44,
		},
	},
    -- Davis Avenue
    [2] = { 
        workSpawn = {
            coords = vector3(1984.73, 3775.29, 32.18),
            heading = 210.94,
        },
    },
    -- Job center
     [3] = { 
        workSpawn = {
            coords = vector3(-498.61, -257.28, 35.57),
            heading = 115.16,
        },
    }, 
    -- -
     [4] = { 
        workSpawn = {
            coords = vector3(-244.26, 6194.39, 31.49),
            heading = 224.6,
        },
    }, 
} 