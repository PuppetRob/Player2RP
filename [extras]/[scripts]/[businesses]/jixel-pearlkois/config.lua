-- Discord For Support
-- https://discord.gg/xKgQZ6wZvS

Config = {
	Debug = false, -- false to remove green boxes
	Lan = "en",
	img = "qb-inventory/html/images/", -- Change this to your inventory's name and image folder (SET TO "" IF YOU HAVE DOUBLE IMAGES)
	Core = "qb-core", -- set this to your core folder
	Inv = "qb", -- set to "ox" if using OX Inventory
	Menu = "qb", -- set to "ox" if using ox_lib context menus
	Notify = "qb",
	JimConsumables = true, -- Enable this to disable this scripts control of food/drink items
	JimShop = false, -- Enable this to use jim-shops for buying ingredients
}
Ingredients = {
	BarItems = {
		label = "Bar Store",
		slots = 20,
		items = {
			{ name = "cranberry", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
			{ name = "schnapps", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
			{ name = "gin", price = 0, amount = 50, info = {}, type = "item", slot = 3, },
			{ name = "scotch", price = 0, amount = 50, info = {}, type = "item", slot = 4, },
			{ name = "rum", price = 0, amount = 50, info = {}, type = "item", slot = 5, },
			{ name = "icream", price = 0, amount = 50, info = {}, type = "item", slot = 6, },
			{ name = "amaretto", price = 0, amount = 50, info = {}, type = "item", slot = 7, },
			{ name = "curaco", price = 0, amount = 50, info = {}, type = "item", slot = 8, },
			{ name = "vodka", price = 0, amount = 50, info = {}, type = "item", slot = 9, },
			{ name = "tequila", price = 0, amount = 50, info = {}, type = "item", slot = 10, },
			{ name = "whiskey", price = 0, amount = 50, info = {}, type = "item", slot = 11, },
			{ name = "sprunk", price = 0, amount = 50, info = {}, type = "item", slot = 12, },
			{ name = "sprunklight", price = 0, amount = 50, info = {}, type = "item", slot = 13, },
			{ name = "ecola", price = 0, amount = 50, info = {}, type = "item", slot = 14, },
			{ name = "ecolalight", price = 0, amount = 50, info = {}, type = "item", slot = 15, },
			{ name = "crisps", price = 0, amount = 50, info = {}, type = "item", slot = 16, },
			{ name = "orange", price = 0, amount = 50, info = {}, type = "item", slot = 17, },
			{ name = "lime", price = 0, amount = 50, info = {}, type = "item", slot = 18, },
			{ name = "lemon", price = 0, amount = 50, info = {}, type = "item", slot = 19, },
			{ name = "coffeebeans", price = 0, amount = 50, info = {}, type = "item", slot = 20, },
		},
	},
	FoodItemsPearls = {
		label = "Food Fridge Store",
		slots = 16,
		items = {
			{ name = "cod", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
			{ name = "salmon", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
			{ name = "tuna", price = 0, amount = 50, info = {}, type = "item", slot = 3, },
			{ name = "scallops", price = 0, amount = 50, info = {}, type = "item", slot = 4, },
			{ name = "lobster", price = 0, amount = 50, info = {}, type = "item", slot = 5,},
			{ name = "mussels", price = 0, amount = 50, info = {}, type = "item", slot = 6, },
			{ name = "meat", price = 0, amount = 50, info = {}, type = "item", slot = 7, },
			{ name = "flour", price = 0, amount = 50, info = {}, type = "item", slot = 8,},
			{ name = "lettuce", price = 0, amount = 50, info = {}, type = "item", slot = 9, },
			{ name = "banana", price = 0, amount = 50, info = {}, type = "item", slot = 10, },
			{ name = "chocolate", price = 0, amount = 50, info = {}, type = "item", slot = 11, },
			{ name = "onions", price = 0, amount = 50, info = {}, type = "item", slot = 12, },
			{ name = "carrot", price = 0, amount = 50, info = {}, type = "item", slot = 13, },
			{ name = "rice", price = 0, amount = 50, info = {}, type = "item", slot = 14, },						    
			{ name = "avocado", price = 0, amount = 50, info = {}, type = "item", slot = 15, },
			{ name = "potatoes", price = 0, amount = 50, info = {}, type = "item", slot = 16, },
			{ name = "cheddar", price = 0, amount = 50, info = {}, type = "item", slot = 17, },
			{ name = "pasta", price = 0, amount = 50, info = {}, type = "item", slot = 18, },
			{ name = "banana", price = 0, amount = 50, info = {}, type = "item", slot = 19, },
			{ name = "orange", price = 0, amount = 50, info = {}, type = "item", slot = 20, },
			{ name = "fish", price = 0, amount = 50, info = {}, type = "item", slot = 21, },
		},
	},
	FoodItemsKoi = {
		label = "Food Fridge Store",
		slots = 17,
		items = {
			{ name = "cod", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
			{ name = "salmon", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
			{ name = "tuna", price = 0, amount = 50, info = {}, type = "item", slot = 3, },
			{ name = "scallops", price = 0, amount = 50, info = {}, type = "item", slot = 4, },
			{ name = "lobster", price = 0, amount = 50, info = {}, type = "item", slot = 5,},
			{ name = "mussels", price = 0, amount = 50, info = {}, type = "item", slot = 6, },
			{ name = "meat", price = 0, amount = 50, info = {}, type = "item", slot = 7, },
			{ name = "nori", price = 0, amount = 50, info = {}, type = "item", slot = 8, },
			{ name = "flour", price = 0, amount = 50, info = {}, type = "item", slot = 9,},
			{ name = "lettuce", price = 0, amount = 50, info = {}, type = "item", slot = 10, },
			{ name = "banana", price = 0, amount = 50, info = {}, type = "item", slot = 11, },
			{ name = "chocolate", price = 0, amount = 50, info = {}, type = "item", slot = 12, },
			{ name = "onions", price = 0, amount = 50, info = {}, type = "item", slot = 13, },
			{ name = "carrot", price = 0, amount = 50, info = {}, type = "item", slot = 14, },
			{ name = "rice", price = 0, amount = 50, info = {}, type = "item", slot = 15, },
			{ name = "avocado", price = 0, amount = 50, info = {}, type = "item", slot = 16, },
			{ name = "potatoes", price = 0, amount = 50, info = {}, type = "item", slot = 17, },
			{ name = "cheddar", price = 0, amount = 50, info = {}, type = "item", slot = 18, },
			{ name = "pasta", price = 0, amount = 50, info = {}, type = "item", slot = 19, },
			{ name = "nachos", price = 0, amount = 50, info = {}, type = "item", slot = 20, },
			{ name = "greenonion", price = 0, amount = 50, info = {}, type = "item", slot = 21, },
			{ name = "broth", price = 0, amount = 50, info = {}, type = "item", slot = 22, },
			{ name = "noodles", price = 0, amount = 50, info = {}, type = "item", slot = 23, },

		},
	},

}

Pearls = {
	Cocktails = {
		{ ['tillie'] = { ['vodka'] = 1, ['lime'] = 1,	} },
		{ ['b52'] = {	['coffee'] = 1,	['icream'] = 1,	['orange'] = 1,	} },
		{ ['brussian'] = { ['coffee'] = 1, ['vodka'] = 1,	} },
		{ ['bkamikaze'] = { ['curaco'] = 1, ['lime'] = 1, ['vodka'] = 1, } },
		{ ['cappucc'] = {	['coffee'] = 1,	['chocolate'] = 1,	} },
		{ ['ccookie'] = { ['amaretto'] = 1, ['cranberry'] = 1, } },
		{ ['iflag'] = { ['icream'] = 1, ['orange'] = 1, } },
		{ ['kamikaze'] = { ['vodka'] = 1, ['orange'] = 1, ['lime'] = 1, } },
		{ ['sbullet'] = { ['gin'] = 1, ['lime'] = 1, ['scotch'] = 1, } },
		{ ['voodoo'] = { ['coffee'] = 1, ['rum'] = 1, } },
		{ ['woowoo'] = { ['cranberry'] = 1, ['schnapps'] = 1, ['vodka'] = 1, } },
	},
	Coffee = {
		{ ['coffee'] = { ['coffeebeans'] = 1,} },
	},
	Oven = {
		{ ['fishnchips'] = { ['fishfingers'] = 1, ['frenchfries'] = 1, } },
		{ ['tunapog'] = { ['tuna'] = 1, ['cheddar'] = 1, } },
		{ ['steriyaki'] = { ['meat'] = 1, ['pasta'] = 1, } },
		{ ['lobstertail'] = { ['lobster'] = 1, ['lettuce'] = 1, } },
		{ ['smokedsalmon'] = { ['salmon'] = 1, ['lettuce'] = 1, } },
		{ ['filetmignon'] = { ['meat'] = 1, ['cheddar'] = 1, } },
		{ ['mackrel'] = { ['fish'] = 1, } },
	},
	Fryer = {
		{ ['frenchfries'] = { ['slicedpotatoes'] = 1, } },
		{ ['fishfingers'] = { ['cod'] = 1, } },
	},
	ChopBlock = {
		{ ['slicedpotatoes'] = { ['potatoes'] = 1, }, ['amount'] = 3 },
		{ ['slicedonions'] = { ['onions'] = 1, }, ['amount'] = 3 },
		{ ['fruitgazpacho'] = { ['banana'] = 1, ['orange'] = 1 }, ['amount'] = 3 },
	},
	Beer = {
		{ ['ambeer'] = { } },
		{ ['dusche'] = { } },
		{ ['logger'] = { } },
		{ ['pisswasser'] = { } },
		{ ['pisswasser2'] = { } },
		{ ['pisswasser3'] = { } },
	},
}

Koi = {
	Cocktails = {
		{ ['tillie'] = { ['vodka'] = 1, ['lime'] = 1,	} },
		{ ['b52'] = {	['coffee'] = 1,	['icream'] = 1,	['orange'] = 1,	} },
		{ ['brussian'] = { ['coffee'] = 1, ['vodka'] = 1,	} },
		{ ['bkamikaze'] = { ['curaco'] = 1, ['lime'] = 1, ['vodka'] = 1, } },
		{ ['cappucc'] = {	['coffee'] = 1,	['chocolate'] = 1,	} },
		{ ['ccookie'] = { ['amaretto'] = 1, ['cranberry'] = 1, } },
		{ ['iflag'] = { ['icream'] = 1, ['orange'] = 1, } },
		{ ['kamikaze'] = { ['vodka'] = 1, ['orange'] = 1, ['lime'] = 1, } },
		{ ['sbullet'] = { ['gin'] = 1, ['lime'] = 1, ['scotch'] = 1, } },
		{ ['voodoo'] = { ['coffee'] = 1, ['rum'] = 1, } },
		{ ['woowoo'] = { ['cranberry'] = 1, ['schnapps'] = 1, ['vodka'] = 1, } },
	},
	Coffee = {
		{ ['coffee'] = { ['coffeebeans'] = 1,} },
	},
	Oven = {
		{ ['fishnchips'] = { ['fishfingers'] = 1, ['frenchfries'] = 1, } },
		{ ['tunapog'] = { ['tuna'] = 1, ['cheddar'] = 1, } },
		{ ['steriyaki'] = { ['meat'] = 1, ['pasta'] = 1, } },
		{ ['fdicks'] = { ['fishfingers'] = 1, } },
		{ ['splate'] = { ['meat'] = 1, ['frenchfries'] = 1, } },
		{ ['rplate'] = { ['meat'] = 1, ['lettuce'] = 1, } },
		{ ['nplate'] = { ['nachos'] = 1, ['cheddar'] = 1, } },
		{ ['wings'] = { ['meat'] = 1, } },
		{ ['cookedrice'] = { ['rice'] = 1, } },
		{ ['ramen'] = { ['greenonion'] = 1, ['broth'] = 1, ['noodles'] = 1, ['meat'] = 1 } },
	},
	Fryer = {
		{ ['frenchfries'] = { ['slicedpotatoes'] = 1, } },
		{ ['fishfingers'] = { ['cod'] = 1, } },
	},
	ChopBlock = {
		{ ['sushi'] = { ['slicedfish'] = 1, ['rice'] = 1, ['avocado'] = 1, ['slicedcarrot'] = 1}, ['amount'] = 3 },
		{ ['slicedfish'] = { ['cod'] = 1, }, ['amount'] = 3 },
		{ ['slicedonions'] = { ['onions'] = 1, },  ['amount'] = 3 },
		{ ['slicedcarrot'] = { ['carrot'] = 1, },  ['amount'] = 3 },
		{ ['slicedpotatoes'] = { ['potatoes'] = 1, }, ['amount'] = 3 },
	},
	Beer = {
		{ ['ambeer'] = { } },
		{ ['dusche'] = { } },
		{ ['logger'] = { } },
		{ ['pisswasser'] = { } },
		{ ['pisswasser2'] = { } },
		{ ['pisswasser3'] = { } },
	},
	Sushi = {
		{ ['sushi'] = { ['nori'] = 1, ['tuna'] = 1, ['rice'] = 1} },
	}
}

Loc = {}
Config.Locations =	{}