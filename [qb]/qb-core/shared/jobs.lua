QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	unemployed = { label = 'Civilian', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Freelancer', payment = 10 } } },
	bus = { label = 'Bus', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Driver', payment = 50 } } },
	judge = { label = 'Honorary', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Judge', payment = 100 } } },
	lawyer = { label = 'Law Firm', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Associate', payment = 50 } } },
	reporter = { label = 'Reporter', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Journalist', payment = 50 } } },
	trucker = { label = 'Trucker', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Driver', payment = 50 } } },
	tow = { label = 'Towing', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Driver', payment = 50 } } },
	garbage = { label = 'Garbage', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Collector', payment = 50 } } },
	vineyard = { label = 'Vineyard', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Picker', payment = 50 } } },
	hotdog = { label = 'Hotdog', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Sales', payment = 50 } } },
	mower = { label = 'Gardener', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Gardener', payment = 50 } } },
	windowcleaner = { label = 'Window Cleaner', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Window Cleaner', payment = 50 } } },

	-- // Emergency Services \\ --

	lspd = {
		label = 'Los Santos Police Department',
		type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'LSPD Cadet', payment = 1200 },
            ['1'] = { name = 'LSPD Officer', payment = 1400 },
            ['2'] = { name = 'LSPD Senior Officer', payment = 1600 },
            ['3'] = { name = 'LSPD Corporal', payment = 1800 },
            ['4'] = { name = 'LSPD Sergeant', payment = 2000 },
            ['5'] = { name = 'LSPD Staff Sergeant', payment = 2200 },
            ['6'] = { name = 'LSPD Lieutenant', payment = 2400 },
            ['7'] = { name = 'LSPD Captain', payment = 2800 },
            ['8'] = { name = 'LSPD Assistant Chief', payment = 3200, isboss = true },
            ['9'] = { name = 'LSPD Police Chief', isboss = true, bankAuth = true, payment = 3400 },
		},
	},

	bcso = {
		label = 'Blaine County Sheriffs Office',
		type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'BCSO Cadet', payment = 1200 },
            ['1'] = { name = 'BCSO Probationary Deputy', payment = 1200 },
            ['2'] = { name = 'BCSO Deputy', payment = 1400 },
            ['3'] = { name = 'BCSO Corporal', payment = 1600 },
            ['4'] = { name = 'BCSO Sergeant', payment = 1800 },
            ['5'] = { name = 'BCSO Staff Sergeant', payment = 2000 },
            ['6'] = { name = 'BCSO Master Sergeant', payment = 2200 },
            ['7'] = { name = 'BCSO Lieutenant', payment = 2400 },
            ['8'] = { name = 'BCSO Captain', payment = 2800 },
            ['9'] = { name = 'BCSO Major', payment = 3000 },
            ['10'] = { name = 'BCSO Undersheriff', payment = 3200, isboss = true },
            ['11'] = { name = 'BCSO Sheriff', isboss = true, bankAuth = true, payment = 3400 },
		},
	},

	sast = {
		label = 'San Andreas State Troopers',
		type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'SAST Cadet', payment = 1200 },
            ['1'] = { name = 'SAST Trooper', payment = 1400 },
            ['2'] = { name = 'SAST Master Trooper', payment = 1800 },
            ['3'] = { name = 'SAST Master Sergeant', payment = 2000 },
            ['4'] = { name = 'SAST Lieutenant', payment = 2400 },
            ['5'] = { name = 'SAST Captain', payment = 2800 },
            ['6'] = { name = 'SAST Major', payment = 3000, isboss = true },
            ['7'] = { name = 'SAST Lieutenant Colonel', isboss = true, bankAuth = true, payment = 3200 },
            ['8'] = { name = 'SAST Police Commissioner', isboss = true, bankAuth = true, payment = 3400 },
		},
	},

	sapr = {
		label = 'San Andreas State Park Rangers',
		type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Game Warden Cadet', payment = 1200 },
            ['1'] = { name = 'Game Warden Ranger', payment = 1800 },
            ['2'] = { name = 'Game Warden Sergeant', payment = 2000 },
            ['3'] = { name = 'Game Warden Captain', payment = 2400 },
            ['4'] = { name = 'Game Warden Director', payment = 3000, isboss = true },
		},
	},

	ambulance = {
		label = 'EMS',
		type = 'ems',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Paramedic', payment = 1800 },
			['2'] = { name = 'Doctor', payment = 2000 },
			['3'] = { name = 'Surgeon', payment = 2400 },
			['4'] = { name = 'Chief', isboss = true, payment = 3000 },
		},
	},

	firefighter = {
		label = 'Firefighter',
		type = 'ems',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Firefighter', payment = 1800 },
			['2'] = { name = 'Captain', payment = 2000 },
			['3'] = { name = 'Lieutenant', payment = 2200 },
			['3'] = { name = 'Captain', payment = 2400 },
			['4'] = { name = 'Asst. Chief', isboss = true, payment = 2800 },
			['4'] = { name = 'Chief', isboss = true, payment = 3000 },
		},
	},

	-- // Vehicles \\ --

	cardealer = {
		label = 'PDM Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Showroom Sales', payment = 75 },
			['2'] = { name = 'Business Sales', payment = 100 },
			['3'] = { name = 'Finance', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	luxuryautos = {
		label = 'Luxury Autos',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Showroom Sales', payment = 75 },
			['2'] = { name = 'Business Sales', payment = 100 },
			['3'] = { name = 'Finance', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	airdealer = {
		label = 'Air Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Showroom Sales', payment = 75 },
			['2'] = { name = 'Business Sales', payment = 100 },
			['3'] = { name = 'Finance', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	bikedealer = {
		label = 'Motorbike Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Showroom Sales', payment = 75 },
			['2'] = { name = 'Business Sales', payment = 100 },
			['3'] = { name = 'Finance', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	boatdealer = {
		label = 'Boat Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Showroom Sales', payment = 75 },
			['2'] = { name = 'Business Sales', payment = 100 },
			['3'] = { name = 'Finance', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	truckdealer = {
		label = 'Truck Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Showroom Sales', payment = 75 },
			['2'] = { name = 'Business Sales', payment = 100 },
			['3'] = { name = 'Finance', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	tunerexotics = {
		label = 'Exotic Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Showroom Sales', payment = 75 },
			['2'] = { name = 'Business Sales', payment = 100 },
			['3'] = { name = 'Finance', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	-- // Mechanics \\ --

	bennys = {
		label = 'Bennys Mechanic',
		type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	ottos = {
		label = 'Ottos Mechanic',
		type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	hayesauto = {
		label = 'Hayes Auto Mechanic',
		type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	bikemechanic = {
		label = 'Bike Mechanic',
		type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	sandymechanic = {
		label = 'Sandy Mechanic',
		type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	-- // Businesses \\ --

	realestate = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'House Sales', payment = 1400 },
			['2'] = { name = 'Business Sales', payment = 1600 },
			['3'] = { name = 'Broker', payment = 1800 },
			['4'] = { name = 'Manager', isboss = true, payment = 2000 },
		},
	},

	taxi = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Driver', payment = 75 },
			['2'] = { name = 'Event Driver', payment = 100 },
			['3'] = { name = 'Sales', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	casino = {
		label = 'Casino Worker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Driver', payment = 75 },
			['2'] = { name = 'Event Driver', payment = 100 },
			['3'] = { name = 'Sales', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	whitewidow = {
		label = 'White Widow',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Driver', payment = 75 },
			['2'] = { name = 'Event Driver', payment = 100 },
			['3'] = { name = 'Sales', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	boxgym = {
		label = 'Boxing Gym',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Driver', payment = 75 },
			['2'] = { name = 'Event Driver', payment = 100 },
			['3'] = { name = 'Sales', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

	-- // Nightclubs and Bars \\ --

	galaxy = {
		label = 'Galaxy Nightclub',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Bartender', payment = 1600 },
			['3'] = { name = 'Security', payment = 1800 },
			['4'] = { name = 'Manager', isboss = true, payment = 2000 },
			['4'] = { name = 'Owner', isboss = true, payment = 2000 },
		},
	},

	vanilla = {
		label = 'Vanilla Unicorn',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Stripper', payment = 1600 },
			['3'] = { name = 'Security', payment = 1800 },
			['4'] = { name = 'Manager', isboss = true, payment = 2000 },
			['4'] = { name = 'Owner', isboss = true, payment = 2000 },
		},
	},

	tequilala = {
		label = 'Tequilala Bar',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Bartender', payment = 1600 },
			['3'] = { name = 'Security', payment = 1800 },
			['4'] = { name = 'Manager', isboss = true, payment = 2000 },
			['4'] = { name = 'Owner', isboss = true, payment = 2000 },
		},
	},

	cyberbar = {
		label = 'Cyber Bar',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Bartender', payment = 1600 },
			['3'] = { name = 'Security', payment = 1800 },
			['4'] = { name = 'Manager', isboss = true, payment = 2000 },
			['4'] = { name = 'Owner', isboss = true, payment = 2000 },
		},
	},

	bahama = {
		label = 'Bahama Mamas',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Stripper', payment = 1600 },
			['3'] = { name = 'Security', payment = 1800 },
			['4'] = { name = 'Manager', isboss = true, payment = 2000 },
			['4'] = { name = 'Owner', isboss = true, payment = 2000 },
		},
	},

	henhouse = {
		label = 'Hen House',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Bartender', payment = 1600 },
			['3'] = { name = 'Security', payment = 1800 },
			['4'] = { name = 'Manager', isboss = true, payment = 2000 },
			['4'] = { name = 'Owner', isboss = true, payment = 2000 },
		},
	},

	-- // Restaurants \\ --

	upnatom = {
		label = 'Up n Atom',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Manager', payment = 1600 },
			['3'] = { name = 'Head Manager', bankAuth = true, isboss = true, payment = 1800 },
			['4'] = { name = 'Owner', bankAuth = true, isboss = true, payment = 2000 },
		},
	},

	burgershot = {
		label = 'BurgerShot',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Manager', payment = 1600 },
			['3'] = { name = 'Head Manager', bankAuth = true, isboss = true, payment = 1800 },
			['4'] = { name = 'Owner', bankAuth = true, isboss = true, payment = 2000 },
		},
	},

	pizzathis = {
		label = 'Pizza This',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Manager', payment = 1600 },
			['3'] = { name = 'Head Manager', bankAuth = true, isboss = true, payment = 1800 },
			['4'] = { name = 'Owner', bankAuth = true, isboss = true, payment = 2000 },
		},
	},

	catcafe = {
		label = 'Cat Cafe',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Manager', payment = 1600 },
			['3'] = { name = 'Head Manager', bankAuth = true, isboss = true, payment = 1800 },
			['4'] = { name = 'Owner', bankAuth = true, isboss = true, payment = 2000 },
		},
	},

	beanmachine = {
		label = 'Bean Machine',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Manager', payment = 1600 },
			['3'] = { name = 'Head Manager', bankAuth = true, isboss = true, payment = 1800 },
			['4'] = { name = 'Owner', bankAuth = true, isboss = true, payment = 2000 },
		},
	},

	kois = {
		label = 'Kois Restaurant',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Manager', payment = 1600 },
			['3'] = { name = 'Head Manager', bankAuth = true, isboss = true, payment = 1800 },
			['4'] = { name = 'Owner', bankAuth = true, isboss = true, payment = 2000 },
		},
	},

	pearls = {
		label = 'Pearls Seafood Restaurant',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Manager', payment = 1600 },
			['3'] = { name = 'Head Manager', bankAuth = true, isboss = true, payment = 1800 },
			['4'] = { name = 'Owner', bankAuth = true, isboss = true, payment = 2000 },
		},
	},

	hornys = {
		label = 'Hornys',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Employee', payment = 1400 },
			['2'] = { name = 'Manager', payment = 1600 },
			['3'] = { name = 'Head Manager', bankAuth = true, isboss = true, payment = 1800 },
			['4'] = { name = 'Owner', bankAuth = true, isboss = true, payment = 2000 },
		},
	},


	
}
