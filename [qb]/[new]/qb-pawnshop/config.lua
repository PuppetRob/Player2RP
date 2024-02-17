Config = {}

Config.PawnLocation = {
--[[     [1] = {
            coords = vector3(412.34, 314.81, 103.13),
            length = 1.5,
            width = 1.8,
            heading = 207.0,
            debugPoly = false,
            minZ = 100.97,
            maxZ = 105.42,
            distance = 3.0
        }, ]]
    }

Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 17 -- Closing Time
Config.SendMeltingEmail = true

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.PawnItems = {
    [1] = {
        item = 'goldchain',
        price = math.random(50,100)
    },
    [2] = {
        item = "diamond_ring",
        price = math.random(125, 145)
    },
    [3] = {
        item = "rolex",
        price = math.random(250, 250)
    },
    [4] = {
        item = "10kgoldchain",
        price = math.random(200, 225)
    },
    [5] = {
        item = "tablet",
        price = math.random(150,200)
    },
    [6] = {
        item = "iphone",
        price = math.random(210, 230)
    },
    [7] = {
        item = "samsungphone",
        price = math.random(100, 220)
    },
    [8] = {
        item = "bobross",
        price = math.random(100, 220)
    },
    [9] = {
        item = "actionfigure",
        price = math.random(100, 220)
    },
    [10] = {
        item = "gamecube",
        price = math.random(100, 220)
    },
    [11] = {
        item = "xboxx",
        price = math.random(100, 220)
    },
    [12] = {
        item = "ps2",
        price = math.random(100, 220)
    },
    [13] = {
        item = "ps5",
        price = math.random(100, 220)
    },
    [14] = {
        item = "brokendetector",
        price = math.random(100, 220)
    },
    [15] = {
        item = "binoculars",
        price = math.random(100, 220)
    },

    [16] = {
        item = "walkstick",
        price = math.random(100, 220)
    },
    [17] = {
        item = "weapon_navyrevolver",
        price = math.random(100, 220)
    },

    [18] = {
        item = "burriedtreasure",
        price = math.random(1000, 2220)
    },
    [19] = {
        item = "treasurekey",
        price = math.random(100, 220)
    },
    [20] = {
        item = "antiquecoin",
        price = math.random(300, 420)
    },
    [21] = {
        item = "ancientcoin",
        price = math.random(300, 420)
    },
    [22] = {
        item = "ww2relic",
        price = math.random(300, 420)
    },
    [23] = {
        item = "pocketwatch",
        price = math.random(300, 420)
    },
    [24] = {
        item = "nokia",
        price = math.random(100, 420)
    }, 
    [25] = {
        item = "dusty_usb",
        price = math.random(80, 120)
    },
    [26] = {
        item = "yellow_diamond",
        price = math.random(380000, 450000)
    }, 
    [27] = {
        item = "goldbar",
        price = math.random(750, 950)
    }, 

    -- // Pokemon Cards Normal \\ --
    [28] = {
        item = "abra",
        price = math.random(10, 50)
    },
    [29] = {
        item = "aerodactyl",
        price = math.random(10, 50)
    },
    [30] = {
        item = "alakazam",
        price = math.random(10, 50)
    },
    [31] = {
        item = "arbok",
        price = math.random(10, 50)
    },
    [32] = {
        item = "arcanine",
        price = math.random(10, 50)
    },
    [33] = {
        item = "articuno",
        price = math.random(10, 50)
    },
    [34] = {
        item = "beedrill",
        price = math.random(10, 50)
    },
    [35] = {
        item = "bellsprout",
        price = math.random(10, 50)
    },
    [36] = {
        item = "blastoise",
        price = math.random(10, 50)
    },
    [37] = {
        item = "butterfree",
        price = math.random(10, 50)
    },
    [38] = {
        item = "caterpie",
        price = math.random(10, 50)
    },
    [39] = {
        item = "chansey",
        price = math.random(10, 50)
    },
    [40] = {
        item = "charizard",
        price = math.random(10, 50)
    },
    [41] = {
        item = "charmander",
        price = math.random(10, 50)
    },
    [42] = {
        item = "charmeleon",
        price = math.random(10, 50)
    },
    [43] = {
        item = "clefable",
        price = math.random(10, 50)
    },
    [44] = {
        item = "clefairy",
        price = math.random(10, 50)
    },
    [45] = {
        item = "cloyster",
        price = math.random(10, 50)
    },
    [46] = {
        item = "cubone",
        price = math.random(10, 50)
    },
    [47] = {
        item = "dewgong",
        price = math.random(10, 50)
    },
    [48] = {
        item = "diglett",
        price = math.random(10, 50)
    },
    [49] = {
        item = "ditto",
        price = math.random(10, 50)
    },
    [50] = {
        item = "dodrio",
        price = math.random(10, 50)
    },
    [51] = {
        item = "doduo",
        price = math.random(10, 50)
    },
    [52] = {
        item = "dragonair",
        price = math.random(10, 50)
    },
    [53] = {
        item = "dragonite",
        price = math.random(10, 50)
    },
    [54] = {
        item = "dratini",
        price = math.random(10, 50)
    },
    [55] = {
        item = "drowzee",
        price = math.random(10, 50)
    },
    [56] = {
        item = "dugtrio",
        price = math.random(10, 50)
    },
    [57] = {
        item = "eevee",
        price = math.random(10, 50)
    },
    [58] = {
        item = "ekans",
        price = math.random(10, 50)
    },

    [59] = {
        item = "electabuzz",
        price = math.random(10, 50)
    },

    [60] = {
        item = "electrode",
        price = math.random(10, 50)
    },

    [61] = {
        item = "exeggcute",
        price = math.random(10, 50)
    },

    [62] = {
        item = "exeggutor",
        price = math.random(10, 50)
    },

    [63] = {
        item = "farfetchd",
        price = math.random(10, 50)
    },

    [64] = {
        item = "fearow",
        price = math.random(10, 50)
    },

    [65] = {
        item = "flareon",
        price = math.random(10, 50)
    },

    [66] = {
        item = "gastly",
        price = math.random(10, 50)
    },

    [67] = {
        item = "gengar",
        price = math.random(10, 50)
    },

    [68] = {
        item = "geodude",
        price = math.random(10, 50)
    },

    [69] = {
        item = "gloom",
        price = math.random(10, 50)
    },

    [70] = {
        item = "golbat",
        price = math.random(10, 50)
    },

    [71] = {
        item = "goldeen",
        price = math.random(10, 50)
    },

    [72] = {
        item = "golduck",
        price = math.random(10, 50)
    },

    [73] = {
        item = "golem",
        price = math.random(10, 50)
    },

    [74] = {
        item = "graveler",
        price = math.random(10, 50)
    },
    [75] = {
        item = "grimer",
        price = math.random(10, 50)
    },
    [76] = {
        item = "growlithe",
        price = math.random(10, 50)
    },
    [77] = {
        item = "gyarados",
        price = math.random(10, 50)
    },
    [78] = {
        item = "haunter",
        price = math.random(10, 50)
    },
    [79] = {
        item = "hitmonchan",
        price = math.random(10, 50)
    },
    [80] = {
        item = "hitmonlee",
        price = math.random(10, 50)
    },
    [81] = {
        item = "horsea",
        price = math.random(10, 50)
    },

    [82] = {
        item = "hypno",
        price = math.random(10, 50)
    },
    [83] = {
        item = "ivysaur",
        price = math.random(10, 50)
    },
    [84] = {
        item = "jigglypuff",
        price = math.random(10, 50)
    },
    [85] = {
        item = "jolteon",
        price = math.random(10, 50)
    },

    [86] = {
        item = "jynx",
        price = math.random(10, 50)
    },
    [87] = {
        item = "kabuto",
        price = math.random(10, 50)
    },
    [88] = {
        item = "kabutops",
        price = math.random(10, 50)
    },
    [89] = {
        item = "kadabra",
        price = math.random(10, 50)
    },

    [90] = {
        item = "kakuna",
        price = math.random(10, 50)
    },
    [91] = {
        item = "kangaskhan",
        price = math.random(10, 50)
    },
    [92] = {
        item = "kingler",
        price = math.random(10, 50)
    },
    [93] = {
        item = "koffing",
        price = math.random(10, 50)
    },

    [94] = {
        item = "krabby",
        price = math.random(10, 50)
    },
    [95] = {
        item = "lapras",
        price = math.random(10, 50)
    },
    [96] = {
        item = "lickitung",
        price = math.random(10, 50)
    },
    [97] = {
        item = "machamp",
        price = math.random(10, 50)
    },
    [98] = {
        item = "machoke",
        price = math.random(10, 50)
    },
    [99] = {
        item = "machop",
        price = math.random(10, 50)
    },
    [100] = {
        item = "magikarp",
        price = math.random(10, 50)
    },
    [101] = {
        item = "magmar",
        price = math.random(10, 50)
    },
    [102] = {
        item = "magnemite",
        price = math.random(10, 50)
    },
    [103] = {
        item = "magneton",
        price = math.random(10, 50)
    },
    [104] = {
        item = "mankey",
        price = math.random(10, 50)
    },
    [105] = {
        item = "marowak",
        price = math.random(10, 50)
    },
    [106] = {
        item = "marshbadge",
        price = math.random(10, 50)
    },
    [107] = {
        item = "meowth",
        price = math.random(10, 50)
    },
    [108] = {
        item = "metapod",
        price = math.random(10, 50)
    },
    [109] = {
        item = "mew",
        price = math.random(10, 50)
    },
    [110] = {
        item = "mewtwo",
        price = math.random(10, 50)
    },
    [111] = {
        item = "moltres",
        price = math.random(10, 50)
    },
    [112] = {
        item = "metapod",
        price = math.random(10, 50)
    },
    [113] = {
        item = "mrmime",
        price = math.random(10, 50)
    },
    [114] = {
        item = "muk",
        price = math.random(10, 50)
    },
    [115] = {
        item = "nidoking",
        price = math.random(10, 50)
    },
    [116] = {
        item = "nidoqueen",
        price = math.random(10, 50)
    },
    [117] = {
        item = "nidoran",
        price = math.random(10, 50)
    },
    [118] = {
        item = "nidorina",
        price = math.random(10, 50)
    },
    [119] = {
        item = "nidorino",
        price = math.random(10, 50)
    },
    [120] = {
        item = "ninetails",
        price = math.random(10, 50)
    },
    [121] = {
        item = "oddish",
        price = math.random(10, 50)
    },
    [122] = {
        item = "omanyte",
        price = math.random(10, 50)
    },
    [123] = {
        item = "omastar",
        price = math.random(10, 50)
    },
    [124] = {
        item = "onix",
        price = math.random(10, 50)
    },
    [125] = {
        item = "paras",
        price = math.random(10, 50)
    },
    [126] = {
        item = "parasect",
        price = math.random(10, 50)
    },
    [127] = {
        item = "persian",
        price = math.random(10, 50)
    },
    [128] = {
        item = "pidgeotto",
        price = math.random(10, 50)
    },
    [129] = {
        item = "pidgey",
        price = math.random(10, 50)
    },

    [130] = {
        item = "pikachu",
        price = math.random(10, 50)
    },

    [131] = {
        item = "pinsir",
        price = math.random(10, 50)
    },

    [132] = {
        item = "poliwag",
        price = math.random(10, 50)
    },

    [133] = {
        item = "polywhirl",
        price = math.random(10, 50)
    },

    [134] = {
        item = "poliwrath",
        price = math.random(10, 50)
    },

    [135] = {
        item = "ponyta",
        price = math.random(10, 50)
    },

    [136] = {
        item = "porygon",
        price = math.random(10, 50)
    },
    [137] = {
        item = "primeape",
        price = math.random(10, 50)
    },
    [138] = {
        item = "psyduck",
        price = math.random(10, 50)
    },

    [139] = {
        item = "raichu",
        price = math.random(10, 50)
    },

    [140] = {
        item = "rapidash",
        price = math.random(10, 50)
    },

    [141] = {
        item = "raticate",
        price = math.random(10, 50)
    },

    [142] = {
        item = "rattata",
        price = math.random(10, 50)
    },

    [143] = {
        item = "rhydon",
        price = math.random(10, 50)
    },

    [144] = {
        item = "rhyhorn",
        price = math.random(10, 50)
    },

    [145] = {
        item = "sandshrew",
        price = math.random(10, 50)
    },
    [146] = {
        item = "sandslash",
        price = math.random(10, 50)
    },
    [147] = {
        item = "scyther",
        price = math.random(10, 50)
    },

    [148] = {
        item = "seadra",
        price = math.random(10, 50)
    },

    [149] = {
        item = "seaking",
        price = math.random(10, 50)
    },

    [150] = {
        item = "seel",
        price = math.random(10, 50)
    },

    [151] = {
        item = "shellder",
        price = math.random(10, 50)
    },

    [152] = {
        item = "slowbro",
        price = math.random(10, 50)
    },

    [153] = {
        item = "slowpoke",
        price = math.random(10, 50)
    },

    [154] = {
        item = "snorlax",
        price = math.random(10, 50)
    },
    [155] = {
        item = "spearow",
        price = math.random(10, 50)
    },
    [156] = {
        item = "squirtle",
        price = math.random(10, 50)
    },

    [157] = {
        item = "starmie",
        price = math.random(10, 50)
    },

    [158] = {
        item = "staryu",
        price = math.random(10, 50)
    },

    [159] = {
        item = "tangela",
        price = math.random(10, 50)
    },

    [160] = {
        item = "tauros",
        price = math.random(10, 50)
    },

  [161] = {
        item = "tentacool",
        price = math.random(10, 50)
    }, 

    [162] = {
        item = "tentacruel",
        price = math.random(10, 50)
    },

    [163] = {
        item = "togepi",
        price = math.random(10, 50)
    },
    [164] = {
        item = "vaporeon",
        price = math.random(10, 50)
    },
    [165] = {
        item = "venomoth",
        price = math.random(10, 50)
    },

    [166] = {
        item = "venonat",
        price = math.random(10, 50)
    },

    [167] = {
        item = "venusaur",
        price = math.random(10, 50)
    },

    [168] = {
        item = "victreebel",
        price = math.random(10, 50)
    },

    [169] = {
        item = "vileplume",
        price = math.random(10, 50)
    },

    [170] = {
        item = "voltorb",
        price = math.random(10, 50)
    },

    [171] = {
        item = "vulpix",
        price = math.random(10, 50)
    },

    [172] = {
        item = "wartortle",
        price = math.random(10, 50)
    },
    [173] = {
        item = "weedle",
        price = math.random(10, 50)
    },
    [174] = {
        item = "weepinbell",
        price = math.random(10, 50)
    },

    [175] = {
        item = "weezing",
        price = math.random(10, 50)
    },

    [176] = {
        item = "wigglytuff",
        price = math.random(10, 50)
    },

    [177] = {
        item = "zapdos",
        price = math.random(10, 50)
    },

    [178] = {
        item = "bulbasaur",
        price = math.random(10, 50)
    },

    [179] = {
        item = "zubat",
        price = math.random(10, 50)
    },

    -- // Pokemon Cards V Cards \\ --
    [180] = {
        item = "blastoisev",
        price = math.random(100, 150)
    },
    [181] = {
        item = "charizardv",
        price = math.random(100, 150)
    },
    [182] = {
        item = "mewv",
        price = math.random(100, 150)
    },
    [183] = {
        item = "pikachuv",
        price = math.random(100, 150)
    },
    [184] = {
        item = "snorlaxv",
        price = math.random(100, 150)
    },
    [185] = {
        item = "venusaurv",
        price = math.random(100, 150)
    },

    -- // Pokemon Cards VMAX Cards \\ --
    [186] = {
        item = "blastoisevmax",
        price = math.random(150, 250)
    },
    [187] = {
        item = "mewtwogx",
        price = math.random(150, 250)
    },
    [188] = {
        item = "snorlaxvmax",
        price = math.random(150, 250)
    },
    [189] = {
        item = "venusaurvmax",
        price = math.random(150, 250)
    },
    [190] = {
        item = "vmaxcharizard",
        price = math.random(250, 450)
    },
    [191] = {
        item = "vmaxpikachu",
        price = math.random(250, 450)
    },

    -- // Pokemon Cards Rainbow Cards \\ --
    [192] = {
        item = "snorlaxvmaxrainbow",
        price = math.random(500, 1000)
    },
    [193] = {
        item = "rainbowvmaxpikachu",
        price = math.random(1000, 2000)
    },
    [194] = {
        item = "rainbowvmaxcharizard",
        price = math.random(1000, 2000)
    },
    [195] = {
        item = "rainbowmewtwogx",
        price = math.random(500, 1000)
    },

    -- // Pacific Heist Items \\ --
    [196] = {
        item = "vandiamond",
        price = math.random(75000, 100000)
    },
    [197] = {
        item = "vanpanther",
        price = math.random(45000, 50000)
    },
    [198] = {
        item = "vannecklace",
        price = math.random(45000, 50000)
    },
    [199] = {
        item = "vanbottle",
        price = math.random(12000, 18000)
    },
    [200] = {
        item = "vanpogo",
        price = math.random(45000, 50000)
    },
    [201] = {
        item = "metalkey",
        price = math.random(500, 750)
    },
    [202] = {
        item = "shedkey",
        price = math.random(500, 750)
    },
    [203] = {
        item = "rustykey",
        price = math.random(500, 750)
    },
    [204] = {
        item = "radioscanner",
        price = math.random(500, 750)
    },
    [205] = {
        item = "green-card",
        price = math.random(200, 350)
    },
    [206] = {
        item = "trojan_usb",
        price = math.random(50, 75)
    },
    [207] = {
        item = "robbery_green_laptop",
        price = math.random(600, 750)
    },
    [208] = {
        item = "seccard",
        price = math.random(600, 750)
    },
    [209] = {
        item = "printerdocument",
        price = math.random(10, 20)
    },
    [210] = {
        item = "gatecrack",
        price = math.random(150, 250)
    },
    [211] = {
        item = "agraphicnovel",
        price = math.random(350, 550)
    },
    [212] = {
        item = "silver_ring",
        price = math.random(50, 100)
    },
    [213] = {
        item = "ruby_ring_silver",
        price = math.random(250, 350)
    },
    [214] = {
        item = "emerald_necklace",
        price = math.random(150, 250)
    },
    [215] = {
        item = "silverchain",
        price = math.random(150, 250)
    },
    [216] = {
        item = "redchip",
        price = math.random(150, 200)
    },
    [217] = {
        item = "greenchip",
        price = math.random(250, 350)
    },
    [218] = {
        item = "bluechip",
        price = math.random(250, 350)
    },
    [219] = {
        item = "television",
        price = math.random(450, 550)
    },
    [220] = {
        item = "microwave",
        price = math.random(150, 250)
    },
    [221] = {
        item = "painting",
        price = math.random(450, 550)
    },
    [222] = {
        item = "safe",
        price = math.random(800, 1250)
    },
    [223] = {
        item = "robbery_hdd_01",
        price = math.random(5000, 6000)
    }
}


Config.MeltingItems = { -- meltTime is amount of time in minutes per item
--[[     [1] = {
        item = 'goldchain',
        rewards = {
            [1] = {
                item = 'goldbar',
                amount = 2
            }
        },
        meltTime = 0.15
    },
    [2] = {
        item = 'diamond_ring',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [3] = {
        item = 'rolex',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            },
            [3] = {
                item = 'electronickit',
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [4] = {
        item = '10kgoldchain',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 5
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            }
        },
        meltTime = 0.15
    }, ]]
}
