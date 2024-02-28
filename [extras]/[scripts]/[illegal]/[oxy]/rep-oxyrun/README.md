# Description
Made by Rep Scripts 

Discord : https://discord.gg/VxGs8ceG5W

Tebex: https://rep.tebex.io/

Youtube: https://www.youtube.com/@repscripts

CFX: https://forum.cfx.re/u/bahnmifps/activity/topics
# Dependencies
* [Core Framework](https://github.com/qbcore-framework)
* [Rep-Tablet](https://github.com/Rep-Scripts/rep-tablet)
* [Renewed-Weaponscarry](https://github.com/Renewed-Scripts/Renewed-Weaponscarry)
* [Rep-TalkToNPC](https://github.com/Rep-Scripts/rep-talkNPC)
# Installation

* **Install all the dependencies**
* **Ensure the GOODS**
* **ENJOY**

# 1. Add this item into shared.lua
```lua
['deliverylist'] 			 	 	 = {['name'] = 'deliverylist', 				['label'] = 'Delivery List', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'deliverylist.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A long list of customers and deliveries..'},

["package"] 					 = {["name"] = "package", 			 	["label"] = "Suspicious Package", 		        ["weight"] = 25000, 		["type"] = "item", 		["image"] = "package.png", 				["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Package covered in tape and milk stickers. Marked for Police Seizure."},

['vpn'] 				 		 = {['name'] = 'vpn',  			    			["created"] = nil,    ["decay"] = 5.0,  ['label'] = 'VPN', 					['weight'] = 20000, 	['type'] = 'item', 		['image'] = 'vpn.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = ''},

["rolls"] 					 = {["name"] = "rolls", 			 	["label"] = "Roll of Small Notes", 		        ["weight"] = 100, 		["type"] = "item", 		["image"] = "cashroll.png", 				["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Lots of low denominators - Indicates drug sales."},

['bands'] 				 = {['name'] = 'bands', 			  	  	['label'] = 'Band of Notes', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bands.png', 			['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,	   ['combinable'] = nil,   ['description'] = 'Lots of low denominators - Indicates drug sales.'},
```

# 2. Add in prop Renewed-Weaponscarry
 ["package"] =  { carry = true, model = "prop_idol_case_01", bone = 24817, x = -0.20, y = 0.43, z = 0.05, xr = 91.0,
  yr = 0.0, zr = -265.0, blockAttack = true, blockCar = true, blockRun = true },

# 3. Open client/function.lua and edit PoliceAlert() to your current dispatch
  
# ENJOY!!