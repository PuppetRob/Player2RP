# Made By: Tkiljoy

# GuideLines:
**You May NOT Repost This Script On ANY platform Without Our Written Consent To Do So.**
**You May NOT Take This Script And Say The Contents Are Yours And You Made It.**

# Dependencies
* [QBCore-Framework] https://github.com/qbcore-framework
* [QB-Target] https://github.com/BerkieBb/qb-target

# How To Install:

**1:Before Starting tk-lumberjack You Must Add The Items First, To Do So Go Into [qb]/qb-core/shared/items.lua**
**And Paste The Following**
```lua
--Hunting Items
	['1starrabbitpelt']             = {['name'] = '1starrabbitpelt', 	            ['label'] = 'One Star Rabbit Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starrabbitpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Rabbit Pelt'},
	['2starrabbitpelt']             = {['name'] = '2starrabbitpelt', 	            ['label'] = 'Two Star Rabbit Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starrabbitpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Rabbit Pelt'},
	['3starrabbitpelt']             = {['name'] = '3starrabbitpelt', 	            ['label'] = 'Three Star Rabbit Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starrabbitpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Rabbit Pelt'},
	['4starrabbitpelt']             = {['name'] = '4starrabbitpelt', 	            ['label'] = 'Four Star Rabbit Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starrabbitpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Rabbit Pelt'},
	['perfectrabbitpelt']             = {['name'] = 'perfectrabbitpelt', 	            ['label'] = 'Perfect Rabbit Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectrabbitpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Rabbit Pelt'},

	['1stardeerpelt']             = {['name'] = '1stardeerpelt', 	            ['label'] = 'One Star Deer Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1stardeerpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Deer Pelt'},
	['2stardeerpelt']             = {['name'] = '2stardeerpelt', 	            ['label'] = 'Two Star Deer Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2stardeerpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Deer Pelt'},
	['3stardeerpelt']             = {['name'] = '3stardeerpelt', 	            ['label'] = 'Three Star Deer Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3stardeerpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Deer Pelt'},
	['4stardeerpelt']             = {['name'] = '4stardeerpelt', 	            ['label'] = 'Four Star Deer Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4stardeerpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Deer Pelt'},
	['perfectdeerpelt']             = {['name'] = 'perfectdeerpelt', 	            ['label'] = 'Perfect Deer Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectdeerpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Deer Pelt'},

	['1starcoyotepelt']             = {['name'] = '1starcoyotepelt', 	            ['label'] = 'One Star Coyote Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starcoyotepelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Coyote Pelt'},
	['2starcoyotepelt']             = {['name'] = '2starcoyotepelt', 	            ['label'] = 'Two Star Coyote Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starcoyotepelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Coyote Pelt'},
	['3starcoyotepelt']             = {['name'] = '3starcoyotepelt', 	            ['label'] = 'Three Star Coyote Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starcoyotepelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Coyote Pelt'},
	['4starcoyotepelt']             = {['name'] = '4starcoyotepelt', 	            ['label'] = 'Four Star Coyote Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starcoyotepelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Coyote Pelt'},
	['perfectcoyotepelt']             = {['name'] = 'perfectcoyotepelt', 	            ['label'] = 'Perfect Coyote Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectcoyotepelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Coyote Pelt'},

	['1starmountainlionpelt']             = {['name'] = '1starmountainlionpelt', 	            ['label'] = 'One Star Mountain Lion Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starmountainlionpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Mountain Lion Pelt'},
	['2starmountainlionpelt']             = {['name'] = '2starmountainlionpelt', 	            ['label'] = 'Two Star Mountain Lion Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starmountainlionpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Mountain Lion Pelt'},
	['3starmountainlionpelt']             = {['name'] = '3starmountainlionpelt', 	            ['label'] = 'Three Star Mountain Lion Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starmountainlionpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Mountain Lion Pelt'},
	['4starmountainlionpelt']             = {['name'] = '4starmountainlionpelt', 	            ['label'] = 'Four Star Mountain Lion Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starmountainlionpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Mountain Lion Pelt'},
	['perfectmountainlionpelt']             = {['name'] = 'perfectmountainlionpelt', 	            ['label'] = 'Perfect Mountain Lion Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectmountainlionpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Mountain Lion Pelt'},

	['1starrabbitmeat']             = {['name'] = '1starrabbitmeat', 	            ['label'] = 'One Star Rabbit Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starrabbitmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Rabbit Meat'},
	['2starrabbitmeat']             = {['name'] = '2starrabbitmeat', 	            ['label'] = 'Two Star Rabbit Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starrabbitmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Rabbit Meat'},
	['3starrabbitmeat']             = {['name'] = '3starrabbitmeat', 	            ['label'] = 'Three Star Rabbit Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starrabbitmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Rabbit Meat'},
	['4starrabbitmeat']             = {['name'] = '4starrabbitmeat', 	            ['label'] = 'Four Star Rabbit Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starrabbitmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Rabbit Meat'},
	['perfectrabbitmeat']             = {['name'] = 'perfectrabbitmeat', 	            ['label'] = 'Perfect Rabbit Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectrabbitmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Rabbit Meat'},

	['1starvenison']             = {['name'] = '1starvenison', 	            ['label'] = 'One Star Deer Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starvenison.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Deer Meat'},
	['2starvenison']             = {['name'] = '2starvenison', 	            ['label'] = 'Two Star Deer Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starvenison.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Deer Meat'},
	['3starvenison']             = {['name'] = '3starvenison', 	            ['label'] = 'Three Star Deer Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starvenison.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Deer Meat'},
	['4starvenison']             = {['name'] = '4starvenison', 	            ['label'] = 'Four Star Deer Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starvenison.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Deer Meat'},
	['perfectvenison']             = {['name'] = 'perfectvenison', 	            ['label'] = 'Perfect Deer Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectvenison.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Deer Meat'},

	['1starcoyotemeat']             = {['name'] = '1starcoyotemeat', 	            ['label'] = 'One Star Coyote Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starcoyotemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Coyote Meat'},
	['2starcoyotemeat']             = {['name'] = '2starcoyotemeat', 	            ['label'] = 'Two Star Coyote Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starcoyotemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Coyote Meat'},
	['3starcoyotemeat']             = {['name'] = '3starcoyotemeat', 	            ['label'] = 'Three Star Coyote Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starcoyotemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Coyote Meat'},
	['4starcoyotemeat']             = {['name'] = '4starcoyotemeat', 	            ['label'] = 'Four Star Coyote Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starcoyotemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Coyote Meat'},
	['perfectcoyotemeat']             = {['name'] = 'perfectcoyotemeat', 	            ['label'] = 'Perfect Coyote Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectcoyotemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Coyote Meat'},

	['1starpork']             = {['name'] = '1starpork', 	            ['label'] = 'One Star Pork', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starpork.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Pork'},
	['2starpork']             = {['name'] = '2starpork', 	            ['label'] = 'Two Star Pork', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starpork.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Pork'},
	['3starpork']             = {['name'] = '3starpork', 	            ['label'] = 'Three Star Pork', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starpork.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Pork'},
	['4starpork']             = {['name'] = '4starpork', 	            ['label'] = 'Four Star Pork', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starpork.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Pork'},
	['perfectpork']             = {['name'] = 'perfectpork', 	            ['label'] = 'Perfect Pork', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectpork.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Pork'},

	['1starmountainlionmeat']             = {['name'] = '1starmountainlionmeat', 	            ['label'] = 'One Star Mountain Lion Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starmountainlionmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Mountain Lion Meat'},
	['2starmountainlionmeat']             = {['name'] = '2starmountainlionmeat', 	            ['label'] = 'Two Star Mountain Lion Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starmountainlionmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Mountain Lion Meat'},
	['3starmountainlionmeat']             = {['name'] = '3starmountainlionmeat', 	            ['label'] = 'Three Star Mountain Lion Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starmountainlionmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Mountain Lion Meat'},
	['4starmountainlionmeat']             = {['name'] = '4starmountainlionmeat', 	            ['label'] = 'Four Star Mountain Lion Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starmountainlionmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Mountain Lion Meat'},
	['perfectmountainlionmeat']             = {['name'] = 'perfectmountainlionmeat', 	            ['label'] = 'Perfect Mountain Lion Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectmountainlionmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Mountain Lion Meat'},

	['legendarycrocodileskin']             = {['name'] = 'legendarycrocodileskin', 	            ['label'] = 'Legendary Crocodile Skin', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendarycrocodileskin.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Crocodile Skin'},
	['legendarycrocodilemeat']             = {['name'] = 'legendarycrocodilemeat', 	            ['label'] = 'Legendary Crocodile Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendarycrocodilemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Crocodile Meat'},

	['legendaryhipposkin']             = {['name'] = 'legendaryhipposkin', 	            ['label'] = 'Legendary Hippo Skin', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendaryhipposkin.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Hippo Skin'},
	['legendaryhippomeat']             = {['name'] = 'legendaryhippomeat', 	            ['label'] = 'Legendary Hippo Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendaryhippomeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Hippo Meat'},

	['legendarybearpelt']             = {['name'] = 'legendarybearpelt', 	            ['label'] = 'Legendary Bear Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendarybearpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Bear Pelt'},
	['legendarybearmeat']             = {['name'] = 'legendarybearmeat', 	            ['label'] = 'Legendary Bear Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendarybearmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Bear Meat'},	
```

**2: Add The Images in the image folder to [qb]/qb-inventory/html/images**

**3: Add in the Level Data in [qb]/qb-core/server/player.lua**
```lua
    --Underneathe this PlayerData.metadata['jobrep']['hotdog'] = PlayerData.metadata['jobrep']['hotdog'] or 0
    --Jobs
    PlayerData.metadata['hunterrep'] = PlayerData.metadata['hunterrep'] or 0
    PlayerData.metadata['hunterxp'] = PlayerData.metadata['hunterxp'] or 0
	PlayerData.metadata['skinning'] = PlayerData.metadata['skinning'] or 0
    PlayerData.metadata['skinningxp'] = PlayerData.metadata['skinningxp'] or 0
    PlayerData.metadata['legendary1'] = PlayerData.metadata['legendary1'] or 0
    PlayerData.metadata['legendary2'] = PlayerData.metadata['legendary2'] or 0
    PlayerData.metadata['legendary3'] = PlayerData.metadata['legendary3'] or 0
```

**3: Paste tk-hunting and dependencies In Your Folder In Resources And Ensure It To Your Server.cfg** 

# THANK YOU!
