-------------------------------
---------- CASE#2506 ----------
-------------------------------

### QBCORE WHITE WIDOW JOB###

Here we have a indepth white widow job for your server.
Doubles as a weed farming script for CBD weed. 
You can harvest crops, trim into baggies and then roll up joints.
Job locked store to allow for selling of drug equipment.
Snack table for your customers to purchase food.
All 3 points of sale set up.
Comes with a custom van and livery.
MLO IS NOT PROVIDED!!

### USAGE ###

- Third-eye targeting for entire job
- Target cabinet in store to purchase stock
- TargetEPOS systems to make sales
- Target Snack table to purchase snacks
- Target tray on counter to pass orders
- Target safe in office to open storage
- Target clipboard in office to go on and off duty
- Target crops in basement to harvest cbd crops
- Target table in basement to trim crops into baggies
- Target tray behind counter upstairs to roll baggies into joints
- Target garage outside to take out/return company vehicle

### INSTALL ###

1) Customise config.lua to your liking.
2) Add `case-whitewidowjob` and `whitewidowrumpo` into your server resources. 
3) Add `ensure case-whitewidowjob` and `ensure whitewidowrumpo` in your `server.cfg`
4) Add job and item information below into your `qb-core/shared.lua`
5) Add images provided into your `qb-inventory/html/images` 
6) Restart your city.
7) Enjoy!

### SHARED.LUA ###
-- Whitewidow job information

["whitewidow"] = {
		label = "White Widow",
		defaultDuty = true,
		grades = {
			['0'] = {
				name = 'Deliveries',
				payment = 40
		},
			['1'] = {
				name = 'Sales',
				payment = 65
		},
			['2'] = {
				name = 'Management',
				payment = 90
		},
			['3'] = {
				name = 'Owner',
				isboss = true,
				payment = 150
			},
		},
	},

-- Whitewidow items	

	["weed_skunk_cbd_crop"] 	     = {["name"] = "weed_skunk_cbd_crop", 		["label"] = "CBD Skunk Crop", 			["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_skunk_crop.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD Skunk!"},
	["weed_og-kush_cbd_crop"] 		 = {["name"] = "weed_og-kush_cbd_crop", 	["label"] = "CBD OG Kush Crop", 		["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_og-kush_crop.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD OG Kush"},
	["weed_white-widow_cbd_crop"]    = {["name"] = "weed_white-widow_cbd_crop", ["label"] = "CBD White Widow Crop", 	["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_white-widow_crop.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD White Widow"},
	["weed_ak47_cbd_crop"] 			 = {["name"] = "weed_ak47_cbd_crop", 	    ["label"] = "CBD AK 47 Crop", 			["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_ak47_crop.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD AK47!"},
	["weed_skunk_cbd"] 				 = {["name"] = "weed_skunk_cbd", 			["label"] = "CBD Skunk 2g", 			["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_skunk_cbd.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD Skunk!"},
	["weed_og-kush_cbd"] 		     = {["name"] = "weed_og-kush_cbd", 			["label"] = "CBD OGKush 2g", 			["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_og-kush_cbd.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD OG Kush!"},
	["weed_white-widow_cbd"] 		 = {["name"] = "weed_white-widow_cbd", 	    ["label"] = "CBD White Widow 2g", 		["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_white-widow_cbd.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD White Widow!"},
	["weed_ak47_cbd"] 				 = {["name"] = "weed_ak47_cbd", 			["label"] = "CBD AK47 2g", 				["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_ak47_cbd.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD 2g AK47!"},
	["weed_skunk_cbd_joint"] 	     = {["name"] = "weed_skunk_cbd_joint", 		["label"] = "CBD Skunk Joint", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_skunk_cbd_joint.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that skunk son!"},
	["weed_og-kush_cbd_joint"] 		 = {["name"] = "weed_og-kush_cbd_joint", 	["label"] = "CBD OG Kush Joint", 		["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_og-kush_cbd_joint.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that og kush son!"},
	["weed_white-widow_cbd_joint"] 	 = {["name"] = "weed_white-widow_cbd_joint",["label"] = "CBD White Widow Joint", 	["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_white-widow_cbd_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that white widow son!"},
	["weed_ak47_cbd_joint"] 		 = {["name"] = "weed_ak47_cbd_joint", 		["label"] = "CBD AK 47 Joint", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_ak47_cbd_joint.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that ak47 son!"},
	["drug_scales"] 		 	     = {["name"] = "drug_scales", 				["label"] = "Scale", 					["weight"] = 1500, 	    ["type"] = "item", 		["image"] = "drug_scales.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "This is not what it looks like"},
	["empty_weed_bag"] 				 = {["name"] = "empty_weed_bag", 			["label"] = "Drug Baggies", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "weed-empty-bag.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "A small empty bag"},
	["weed_nutrition"] 				 = {["name"] = "weed_nutrition", 			["label"] = "Plant Fertilizer", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "weed_nutrition.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	  	    ["combinable"] = nil,   ["description"] = "Get that big bug energy!"},
	["weed_water"] 				     = {["name"] = "weed_water", 			    ["label"] = "Distilled Water", 		    ["weight"] = 500, 		["type"] = "item", 		["image"] = "weed_water.png", 		            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "Distilled water for your plants"},
	["weed_pot"] 				     = {["name"] = "weed_pot", 			        ["label"] = "Plant Pot", 		        ["weight"] = 100, 		["type"] = "item", 		["image"] = "weed_pot.png", 		            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "A simple plant pot for all your planting needs!"},
	["rolling_paper"] 			 	 = {["name"] = "rolling_paper", 			["label"] = "Rolling Papers", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "rolling_paper.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Paper made specifically for encasing and smoking tobacco or cannabis."},
	['drug_shears'] 			     = {['name'] = 'drug_shears', 		        ['label'] = 'Trimming Shears', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'drug_shears.png', 					['unique'] = false,    	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A set of high quality trimming shears.'},	
	["lighter"] 				 	 = {["name"] = "lighter", 			  	  		["label"] = "Lighter", 					["weight"] = 5, 		["type"] = "item", 		["image"] = "lighter.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "On new years eve a nice fire to stand next to"},

### PREVIEW ###
https://www.youtube.com/watch?v=zu-ztrWSovI

### SUPPORT ###
https://discord.gg/AmSa92Eb7T


