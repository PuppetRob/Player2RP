Config = {}

-- Variables
local second = 1
local minute = 60
local hour = 3600

Config.Framework = "qb" -- "qb" or "esx"
Config.Target = true -- Using QB-Target, true or false (QB Only)

Config.AlertNearby = false -- Alert the player if there is a trader nearby
Config.AlertDistance = 15.0 -- Distance between the closest trader and the player to call the alert

Config.CommandEnabled = false -- Enable or disable command to display trader timing
Config.Command = "trader" -- Command the player will use to display trader timing

Config.MoneyType = "cash" 

--[[
 	ESX: 'money' = Cash, 'bank' = Bank, 'dirty' = Dirty Money
	QB-Core: 'cash' = Cash, 'bank' = Bank, 'crypto' = Cryptocurrency
--]] 


Config.TraderOptions = {
	
	TraderPosition = vector4(-263.77, -2678.93, 6.48, 41.29), -- Vector4 format

	TraderModel = "a_m_m_ktown_01", -- https://docs.fivem.net/docs/game-references/ped-models/

	TimingConfiguration = {

		TimeToSpawn = 5 * minute, -- Amount of time it takes for the Trader to spawn
		TimeAvailable = 15 * minute -- Amount of time the Trader will be available for
	},

	TraderBuyEnabled = true, -- Enable or disable the buying option in the menu
	TraderBuyOptions = {

		-- Label: What will be shown on the menu as the name of the item
		-- Item: What the item is called in the database
		-- Price: How much the item cost to buy
		-- isWeapon: True/False (Is the item a weapon e.g. pistol)

		{label = "Armor Blueprint", item = "blueprint_armor", price = 25000, isWeapon = false},
		{label = "ATM Kit Blueprint", item = "blueprint_atmkit", price = 25000, isWeapon = false},
		{label = "Pistol Receiver Blueprint", item = "blueprint_pistol-receiver", price = 25000, isWeapon = false},
		{label = "Shotgun Receiver Blueprint", item = "blueprint_shotgun-receiver", price = 25000, isWeapon = false}

	},

	TraderSellEnabled = true, -- Enable or disable the selling option in the menu
	TraderSellOptions = {

		-- Label: What will be shown on the menu as the name of the item
		-- Item: What the item is called in the database
		-- Price: How much the item cost to sell
		-- isWeapon: True/False (Is the item a weapon e.g. pistol)
		
		{label = "Gold Bar", item = "goldbar", price = 1250, isWeapon = false},
		{label = "Government Hardware", item = "robbery_hdd_01", price = 250000, isWeapon = false}
	}
}

Config.MenuOptions = {

	Header = "Black Market Trader",
	BuyButton = "Buy Items",
	SellButton = "Sell Items",
}

Config.Discord = true -- Enable or disable discord webhooks (put your webhook in server/discord.lua)
Config.Debug = false -- Only enable if asked to by Discord support