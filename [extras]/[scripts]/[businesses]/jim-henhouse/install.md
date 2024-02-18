Thank you for your purchase <3 I hope you have fun with this script and that it brings jobs and RP to your server

If you need support I now have a discord available, it helps me keep track of issues and give better support.

https://discord.gg/xKgQZ6wZvS

-------------------------------------------------------------------------------------------------

# Installation

Add the item images to your inventory script
For Example:
	`[qb]` > `qb-inventory` > `html` > `images`

THESE GO IN YOUR SHARED.LUA IN qb-core:

Under the QBShared.Items in items.lua

	--HENHOUSE
	--Cocktails
	["tillie"] 		 				= {["name"] = "tillie",  	     			["label"] = "Tillie Mae",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "tillie.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "The Tillie Mae Special", ['thirst'] = math.random(20, 30) },
	["b52"] 		 				= {["name"] = "b52",  	     				["label"] = "B-52",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "b52.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "B-52 Cocktail", ['thirst'] = math.random(20, 30) },
	["brussian"] 		 			= {["name"] = "brussian",  	     			["label"] = "Black Russian",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "brussian.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Black Russian Cocktail", ['thirst'] = math.random(20, 30) },
	["bkamikaze"] 				 	= {["name"] = "bkamikaze",  	     		["label"] = "Blue Kamikaze",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "bkamikaze.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Blue Kamikaze Cocktail", ['thirst'] = math.random(20, 30) },
	["cappucc"] 				 	= {["name"] = "cappucc",  	     			["label"] = "Cappuccinotini",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "cappucc.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Cappuccinotini Cocktail", ['thirst'] = math.random(20, 30) },
	["ccookie"] 				 	= {["name"] = "ccookie",  	     			["label"] = "Cranberry Cookie",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "ccookie.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Cranberry Cookie Cocktail", ['thirst'] = math.random(20, 30) },
	["iflag"] 				 		= {["name"] = "iflag",  	     			["label"] = "Irish Flag",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "iflag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Irish Flag Cocktail", ['thirst'] = math.random(20, 30) },
	["kamikaze"] 				 	= {["name"] = "kamikaze",  	     			["label"] = "Kamikaze",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "kamikaze.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Kamikase Cocktail", ['thirst'] = math.random(20, 30) },
	["sbullet"] 		 			= {["name"] = "sbullet",  	     			["label"] = "Silver Bullet",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "sbullet.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Silver Bullet Cocktail", ['thirst'] = math.random(20, 30) },
	["voodoo"] 		 				= {["name"] = "voodoo",  	     			["label"] = "Voodoo",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "voodoo.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Voodoo Cocktail", ['thirst'] = math.random(20, 30) },
	["woowoo"] 		 				= {["name"] = "woowoo",  	     			["label"] = "Woo Woo",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "woowoo.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Woowoo Cocktail", ['thirst'] = math.random(20, 30) },

	--Drink Ingredients
	["orange"] 				 		= {["name"] = "orange",  	     			["label"] = "Orange",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "orange.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "An Orange." },
	["lime"] 				 		= {["name"] = "lime",  	     				["label"] = "Lime",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "lime.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A Lime." },
	["chocolate"] 				 	= {["name"] = "chocolate",  		     	["label"] = "Chocolate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "chocolate.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Chocolate Bar", ['hunger'] = math.random(20, 30) },

	["cranberry"] 				 	= {["name"] = "cranberry",  	     		["label"] = "Cranberry Juice",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "cranberry.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Cranberry Juice", ['thirst'] = math.random(10, 20) },
	["schnapps"] 				 	= {["name"] = "schnapps",  	     			["label"] = "Peach Schnapps",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "schnapps.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Peach Schnapps", ['thirst'] = math.random(10, 20) },
	["gin"] 					 	= {["name"] = "gin",  	     				["label"] = "Gin",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "gin.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Gin", ['thirst'] = math.random(10, 20) },
	["scotch"] 					 	= {["name"] = "scotch",  	     			["label"] = "Scotch",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "scotch.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Scotch", ['thirst'] = math.random(10, 20) },
	["rum"] 					 	= {["name"] = "rum",  	     				["label"] = "Rum",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "rum.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Rum", ['thirst'] = math.random(10, 20) },
	["icream"] 					 	= {["name"] = "icream",  	     			["label"] = "Irish Cream",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "icream.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Irish Cream Liquer", ['thirst'] = math.random(10, 20) },
	["amaretto"] 					= {["name"] = "amaretto",  	     			["label"] = "Amaretto",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "amaretto.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Amaretto", ['thirst'] = math.random(10, 20) },
	["curaco"] 						= {["name"] = "curaco",  	     			["label"] = "Curaco",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "curaco.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Curaco", ['thirst'] = math.random(10, 20) },

	--BEERS
	["ambeer"] 						= {["name"] = "ambeer",  	    	 		["label"] = "AM Beer",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ambeer.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["dusche"] 						= {["name"] = "dusche",  	    	 		["label"] = "Dusche Gold",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "dusche.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["logger"] 						= {["name"] = "logger",  	    	 		["label"] = "Logger Beer",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "logger.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser"] 					= {["name"] = "pisswasser",  	    	 	["label"] = "Pißwasser",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser1.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser2"] 				= {["name"] = "pisswasser2",  	    	 	["label"] = "Pißwasser Stout",		 	["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser2.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser3"] 				= {["name"] = "pisswasser3",  	    	 	["label"] = "Pißwasser Pale Ale",		["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser3.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },

	--SODA
	["sprunk"] 						= {["name"] = "sprunk",  	    	 		["label"] = "Sprunk",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunk.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },
	["sprunklight"] 				= {["name"] = "sprunklight",  	    	 	["label"] = "Sprunk Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunklight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },
	["ecola"] 						= {["name"] = "ecola",  	    	 		["label"] = "eCola",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ecola.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },
	["ecolalight"] 					= {["name"] = "ecolalight",  	    	 	["label"] = "eCola Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "ecolalight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },

	["crisps"] 						= {["name"] = "crisps",  	    			["label"] = "Crisps",					["weight"] = 100, 		["type"] = "item", 		["image"] = "chips.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },

	--Food
	["friedpick"] 				 	= {["name"] = "friedpick",  	     		["label"] = "Fried Pickles",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "friedpick.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A plate of fried pickles", ['hunger'] = math.random(40, 50) },
	["maccheese"] 				 	= {["name"] = "maccheese",  	     		["label"] = "Mac n Cheese",		 		["weight"] = 200, 		["type"] = "item", 		["image"] = "maccheese.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bowl of maccaroni and cheese", ['hunger'] = math.random(40, 50) },
	["bplate"] 						= {["name"] = "bplate",  	     			["label"] = "Brisket Plate",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "bplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A Brisket Plate", ['hunger'] = math.random(40, 50) },
	["cplate"] 						= {["name"] = "cplate",  	     			["label"] = "Fish Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "cplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A Catfish Plate", ['hunger'] = math.random(40, 50) },
	["splate"] 						= {["name"] = "splate",  	     			["label"] = "Steak Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "splate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A Steak Plate", ['hunger'] = math.random(40, 50) },
	["rplate"] 						= {["name"] = "rplate",  	     			["label"] = "Ribs Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "rplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A plate of Ribs", ['hunger'] = math.random(40, 50) },
	["nplate"] 						= {["name"] = "nplate",  	     			["label"] = "Nachos Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "nplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A plate of nachos and cheese", ['hunger'] = math.random(40, 50) },
	["wings"] 						= {["name"] = "wings",  	     			["label"] = "Plate of Wings",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "wings.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A plate of Chicken Wings", ['hunger'] = math.random(40, 50) },

	["bburrito"] 					= {["name"] = "bburrito",  	     			["label"] = "Breakfast Burrito",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "bburrito.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A breakfast Burrito", ['hunger'] = math.random(40, 50) },

	--Food Ingredients
	["meat"] 						= {["name"] = "meat",  	     				["label"] = "Meat",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "meat.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A slab of Meat", ['hunger'] = math.random(40, 50) },
	["pasta"] 						= {["name"] = "pasta",  	     			["label"] = "Bag of Pasta",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "pasta.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A bag of Pasta", ['hunger'] = math.random(40, 50) },
	["pickle"] 						= {["name"] = "pickle",  	     			["label"] = "Pickle",	 		 		["weight"] = 200, 		["type"] = "item", 		["image"] = "pickle.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A jar of Pickles", ['hunger'] = math.random(40, 50) },
	["fish"] 						= {["name"] = "fish",  	     				["label"] = "CatFish",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "fish.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A Catfish", ['hunger'] = math.random(40, 50) },
	["nachos"] 						= {["name"] = "nachos",  	     			["label"] = "Nachos",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "nachos.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bag of Nachos", ['hunger'] = math.random(40, 50) },
	["lettuce"] 	 			 	= {["name"] = "lettuce",       				["label"] = "Lettuce",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "lettuce.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Some big taco brother"},
	["cheddar"] 					= {["name"] = "cheddar",					["label"] = "Cheddar Slice",			["weight"] = 500,		["type"] = "item",		["image"] = "cheddar.png",		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Food" },
	["potato"] 						= {["name"] = "potato",						["label"] = "Potatoes",					["weight"] = 500,		["type"] = "item",		["image"] = "potatoes.png",		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Food" },


Under the QBShared.Jobs = {

	['henhouse'] = {
		label = 'Hen House',
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

--------------------------------------------------------------------------------------------------

## QB-Management:

	- Update to the latest github version
	- Make sure the job "henhouse" has been added to the database
	- The menu's targets should be accessible to bosses from the clock in spot

-------------------------------------------------------------------------------------------------

## Emotes

Custom emotes currently run through dpemotes, its the easier option and adds extra emotes for you to use :)

These go in your [standalone] > dpemotes > client > AnimationList.lua
At about line 1666, place these under DP.PropEmotes = {

	--Jim-Henhouse
	["browncup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Brown Cup", AnimationOptions =
		{ Prop = 'v_serv_bs_mug', PropBone = 28422, PropPlacement = {0.03, -0.02, 0.0, 0.0, 0.0, 0.0},
			EmoteLoop = true, EmoteMoving = true, }},
	["whiskeyb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Whiskey Bottle", AnimationOptions =
		{ Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0},
			EmoteMoving = true, EmoteLoop = true }},
	["rumb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Rum Bottle", AnimationOptions =
		{ Prop = "prop_rum_bottle", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
	["icream"] = {"mp_player_intdrink", "loop_bottle", "Irish Cream Bottle", AnimationOptions =
		{ Prop = "prop_bottle_brandy", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
	["ginb"] =  {"mp_player_intdrink", "loop_bottle", "(Don't Use) Gin Bottle", AnimationOptions =
		{ Prop = "prop_tequila_bottle", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
	["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
		{ Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
	["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
		{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
			EmoteLoop = true, EmoteMoving = true, }},
	["beer1"] = {"mp_player_intdrink", "loop_bottle", "Dusche", AnimationOptions =
		{ Prop = "prop_beerdusche", PropBone = 18905, PropPlacement = {0.04, -0.14, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer2"] = {"mp_player_intdrink", "loop_bottle", "Logger", AnimationOptions =
		{ Prop = "prop_beer_logopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer3"] = {"mp_player_intdrink", "loop_bottle", "AM Beer", AnimationOptions =
		{ Prop = "prop_beer_amopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer4"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser1", AnimationOptions =
		{ Prop = "prop_beer_pissh", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer5"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser2", AnimationOptions =
		{ Prop = "prop_amb_beer_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer6"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser3", AnimationOptions =
		{ Prop = "prop_cs_beer_bot_02", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
		{ Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["sprunk"] = {"mp_player_intdrink", "loop_bottle", "Sprunk", AnimationOptions =
		{ Prop = "v_res_tt_can03", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},

--------------------------------------------------------------------------------------------------

## Jim-Consumables item setup - (Optional) - (https://github.com/jimathy/jim-consumables)
- Support for new `Jim-Consumables` automated adding of items and emotes
- Start `jim-consumables` BEFORE this script and set `Config.JimConsumables` to `true` for it to work
- In Jim-HenHouse's `config.lua` set `JimConsumables` to true
- Restart/Ensure Jim-HenHouse

- Restart Jim-Consumables

--------------------------------------------------------------------------------------------------

## Changelog

### v2.0.5:
	- Add "Multi-Craft" option in the config.lua
	- Split-Stack item exploit fix
	- Optional: Support for new `Jim-Consumables` automated item adding events
		- (Start `jim-consumables` BEFORE this script and set `Config.JimConsumables` to `true` for it to work)
		- (https://github.com/jimathy/jim-consumables)

### v2.0.4:
	- Change/Add support for creating new DJBoothes in (https://github.com/jimathy/jim-djbooth)
	- Change/Add support for creating jobGarages in (https://github.com/jimathy/jim-jobgarage)
	- Removed garage.lua as jim-jobgarage is used instead
	- Fix ATM location for Smokeys MLO

### v2.0.3
	- Remove djbooth info from the config to void confusion
	- Reset default job to henhouse after testing

### v2.0.2
	- Added image icons to ox_lib menus
	- Added Version Update check
	- Removed Built-in DJ Boothes, instead use (https://github.com/jimathy/jim-djbooth)

### v2.0.1
	- Fix for job clock logic
	- Removed testing prints when using ox
	- Consume locale fix
	- Improved `OX_Lib` Context support (better layout for ingredients)
	- Added `OX_Lib` Progressbar support
	- Improved script stopping/restarting events
	- Added more options to blip creation

### v2.0
	- Multiple MLO Support (Read the `Config.MLO` option)
		- GN Mods Black Saloon MLO Support - https://fivem.gnstud.io/package/5029845
		- Prentiss Henhouse MLO Support - https://prentiss.tebex.io/package/4742885
	- OX_Target Support
	- OX_Inventory Support
	- OX_Lib Context Menu Support
	- **Basic** OX_Lib notification support (Set `Config.Notify = "ox"`)
	- Updated shared functions to give more info and be more optimized

### v1.9.8
	- Updated install.md
		- Included instructions to make use of Jim-Consuambles if wanted
	- Updated built-in client and server `Hasitem` events to be more accurate

### v1.9.7
	- Fix henhouse crafting issues if you didn't own popsdiner

### v1.9.6
	- Workaround for the `HasItem()` allowing crafting when items aren't there

### v1.9.5
	- Made the `HasItem` functions built in, so no edits to core needed
		- This allows optimizations + makes crafting menus open/load much faster
	- Add item duping protection to item crafting
	- QoL changes to consumable events

### v1.9.4
	- Made the `HasItem` functions built in, so no edits to core needed
		- This allows optimizations + makes crafting menus open/load much faster

### v1.9.3
	- Locale system and "cn" language added thanks to VossCat
	- Added item duping protection

### v1.9.2
	- DUI Fixes, now shows correctly for players who weren't nearby when changed
	- QBCore item changes and fixes
	- Greatly utilised custom lookEnt() function to have player face towards interaction point

### v1.9.1
	- Added shared file for all loading functions
	- Improved chair code
	- Fixes to Built in DJ Booth

### v1.9
	- Fixed cash register target not working as it should
	- Fixed install check retrieving wrong items
	- Optimised Chair Code
	- Fixed some targets not clearing
	- Built-in Job garage now grabs car names from shared

### v1.8
	- Added the ability to change Logo's and Menus textures through target locations and qb-input
		- Add custom url's in duiserver.lua for when the server/script starts, these are automatically loaded
		- Change images on the fly with targets and custom url's
		- Job lock and grade lock so it has less chance to be abused
		- Added ability to ban certain words and phrases
		- Ability to "reset" to the default in the duiserver.lua
		- Ability to clear back to ingame textures
		- Anything with an image extention works eg. png, gif, jpeg...
		- I'm learning this new system, as always let me know if there's any issues with it
	- Added built-in custom DJ Booth to the stage
		- You can disable this easily in the config
		- Requires xSound - https://github.com/Xogy/xsound
	- Added support for ps-progressbar

### v1.7
	- Added Support for CheckMarks
		- This is a toggle in the config, if it causes issues(like lag) disable it
	- Added Support for Jim-Shops
	- Upgraded Crafting Systems
	- Added simple Toy/Prize support, info in the config.lua
	- Added support for qb-menu icons
	- Improved loading and unloading of qb-targets and props
	- Added Job Garage for deliveries
	- Added target location to bosses office to access bossmenu
	- Change emotes in the install.md that require the contract dlc

### v1.6
    - Optimzation update
        - Script now uses polyzones and better loops to lower idle times
        - Runs at 0.00ms idle

### v1.5
	- Payment systems removed/changed in favour of	support for my free payment script jim-payments: https://github.com/jimathy/jim-payments#
		- Add this script to your server and payment systems will work as normal with extra features
		- This change removes events from client.lua and server.lua
	- Added item checkmarks to qb-menu's to show if you have the required items or not
		- This adds changes to config.lua and client.lua
	- Changed seat variable name in chairs.lua to reduce conflicts with my other scripts
	- Fix for restarting script messing up clockin status when debugging
	- Added tray prop to counter to help locate easier
	- Adjusted Bar stool seating locations

### v1.4
	- Cleanup of Menus
	- QoL fixes to chairs
	- Drinks Fridge in Kitchen usable
	- Added Chopping Board to counter for cocktail making
	- New Drinks Added
	- Custom Emotes
	- New Shared.lua layout used, items will need to be re-added
	- New Icons for a couple items

### v1.3
	- Cleanup and re-organisation of code and files
		- Removed NUI for payment system (you can delete html folder now)
		- Moved chair config to chair.lua, everything related to seating is here now.
	- New Payment system, using QB-Input and QB-Phone's invoice system
		- Commission per sale becomes possible by editing qb-phones config.
		- Ticket system is optional, but easy to add
		- New Varibable Config.MinAmountforTicket, this determines the minimum amount needed to get a receipt for payment
	- QoL fixes

### v1.2
	- Full Re-write of the seating code, if updating from v1.1 you only need to replace config.lua and chairs.lua

### v1.1
	- Fixed Notifcations going to the person paying but not the employees
	- Fixed qb-target naming, it was requiring items rather than using their name to give the item..oops
	- Moved the bank receipt payments amount to the config under "Config.PayPerTicket" to be easier to find
	- Clock-in system more in-use, making food and drinks requires being clocked in, go too far from the building and it clocks you out. This helps reduce abuse to the ticket system. Distance can be changed in the config under "Config.ClockOutDist"