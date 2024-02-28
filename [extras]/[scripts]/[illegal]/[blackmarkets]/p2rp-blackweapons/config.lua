Config = {
    Debug = false, -- Enable to add debug boxes and message.
    img = "qb-inventory/html/images/", -- Set this to your inventory
    RandomLocation = false, -- Set to true if you want random location. False = create for each location a blackmarket
    OpenWithItem = false, -- Is there an item needed to open the blackmarket ?
    ItemName = "blackpass", -- If you set the above function to yes, place here your itemname
	RemoveItem = true, -- Remove item after opening the weapon shop
    ScratchPrice = 10000, -- Price for only scratching the serial from weapon
	UseScratchItem = false, -- Use item to be able to scratch the serial
	ScratchItem = "sandpaper", -- Which item should be used to scratch if the UseScratchItem is set to true
	RemoveScratchItem = true, -- Remove the item after use 
	UseBlackMoney = false, -- Use black money instead of normal money 
	BlackMoneyName = "markedbills", -- The item name of the black money to be used
	BlackMoneyMultiplier = 1.2, -- Where 1 is 100% and 2 is 200% etc, 1.2 if 120% of total price
}

Config.Weapons = {
	["weapons"] = {
        [1] = { name = "weapon_combatpistol", price = 14000, amount = 1, scratchprice = 2500 },
		[2] = { name = "weapon_microsmg", price = 25000, amount = 1, scratchprice = 2500 },
		[3] = { name = "weapon_pumpshotgun", price = 35000, amount = 1, scratchprice = 2500 },
		[4] = { name = "weapon_assaultrifle_mk2", price = 85000, amount = 1, scratchprice = 2500 },
		[5] = { name = "weapon_bullpuprifle", price = 95000, amount = 1, scratchprice = 2500 },

	},
}
Config.Locations = {
	["PopSmoke"] = {
		["label"] = "Gun Dealer",
		["model"] = {
			[1] = `s_m_o_busker_01`,
			[2] = `ig_claypain`,
			[3] = `s_m_y_dealer_01`,
			[4] = `ig_lamardavis`,
			[5] = `a_m_m_og_boss_01`,
			[6] = `s_m_y_prismuscl_01`,
			[7] = `ig_ramp_mex`,
		},
		["coords"] = {
			[1] = vector4(1081.31, -2984.22, -6.85, 301.24),
			--[2] = vector4(1081.6, -2984.1, -6.85, 311.13),
			--[3] = vector4(-98.72, 6373.75, 31.48, 135.59),
			--[4] = vector4(756.9, -3195.2, 6.07, 84.6),
			},
		["products"] = Config.Weapons["weapons"],
		["hideblip"] = true,
	},
}
