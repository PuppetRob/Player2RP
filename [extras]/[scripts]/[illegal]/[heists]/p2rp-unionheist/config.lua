--RAINMAD SCRIPTS - discord.gg/rccvdkmA5X - rainmad.tebex.io
Config = {}

Config['UnionHeist'] = {
    ['framework'] = {
        name = 'QB', -- Only ESX or QB.
        scriptName = 'qb-core' -- Only for QB users.
    },
    ['setjobForPolice'] = 'leo', -- Setjob for check police count and police alert
    ['requiredPoliceCount'] = 0, -- Required police count for start heist
    ['nextRob'] = 12000, -- Seconds for next heist
    ['requiredItems'] = { -- Add this items to database or shared. Don't change the order, you can change the item names.
        'c4_bomb',
    },
    ['cutterPrice'] = 50000, -- For cutter rent price
    ['rewardItems'] = { -- Add this items to database or shared. Don't change the order, you can change the item names.
        {itemName = 'goldbar', count = 5, sellPrice = 100}, -- For gold stacks and trollys
    },
    ['rewardMoneys'] = {
        ['trollys'] = function()
            return math.random(1500, 2000) -- Per grab in trolly, one trolly give you (45 * this price) money
        end,
        ['stacks'] = function()
            return math.random(10000, 15000) -- Per stacks
        end,
    },
    ['moneyItem'] = { -- If your server have money item, you can set it here.
        status = false,
        itemName = 'cash'
    },
    ['black_money'] = {  -- If change true, all moneys will convert to black. QBCore players can change itemName
        status = false,
        itemName = 'black_money'
    },
    ['startHeist'] ={ -- Heist start coords
        pos = vector3(-2961.5, 728.58, 29.44),
        peds = {
            {pos = vector3(-2961.5, 728.58, 29.44), heading = 87.22, ped = 'a_m_o_soucent_01'},
        --    {pos = vector3(304.753, -1178.8, 29.3896), heading = 56.78, ped = 's_m_m_highsec_02'},
         --   {pos = vector3(304.00, -1177.9, 29.4023), heading = 226.42, ped = 's_m_m_fiboffice_02'}
        }
    },
--[[     ['finishHeist'] = { -- Heist finish coords
        buyerPos = vector3(138.516, -3204.7, 4.85759)
    }, ]]
    ['enableIPL'] = true -- If you dont have any ipl script, you need change to true
}

Config['UnionSetup'] = {
    ['builder'] = {model = 's_m_m_dockwork_01', coords = vector3(1129.49, 2125.18, 54.55), heading = 260.0}, -- Builder npc settings
    ['cutter'] = {coords = vector3(23.0486, -638.84, 16.0880), heading = 133.0}, -- After rent, cutter spawn coords
    ['doors'] = { -- Dont change. Fixed doors.
        {coords = vector3(2.88219, -661.45, 16.1306)},
        {coords = vector3(7.80424, -662.13, 16.1306)},
        {coords = vector3(3.37246, -674.02, 16.1306), heading = 250.0},
        {coords = vector3(1.42567, -679.70, 16.1306), heading = 250.0},
        {coords = vector3(-3.0185, -677.92, 16.1306), heading = 250.0},
        {coords = vector3(-1.0102, -672.49, 16.1306), heading = 250.0},
        {coords = vector3(9.11788, -666.37, 16.1306), heading = 160.0},
        {coords = vector3(-0.4899, -662.66, 16.1305), heading = 340.0},
        {coords = vector3(-2.6883, -668.45, 16.1306), heading = 340.0},
        {coords = vector3(7.44782, -671.81, 16.1305), heading = 160.0},
        {coords = vector3(3.63814, -682.23, 16.1306), heading = 160.0},
        {coords = vector3(-6.4396, -678.90, 16.1306), heading = 340.0},
    },
    ['tables'] = { -- You can add new table with money/gold stacks.
        {coords = vector3(-1.5274, -658.64, 15.1306), heading = 250.0, type = 'gold'},
        {coords = vector3(-7.1368, -677.92, 15.1306), heading = 340.0, type = 'gold'},
        {coords = vector3(4.65133, -682.18, 15.1306), heading = 340.0, type = 'gold'},
        {coords = vector3(11.8013, -664.61, 15.1306), heading = 70.0,  type = 'money'}
    },
    ['trollys'] = { -- You can add new trollys.
        {coords = vector3(-4.2608, -675.81, 15.1306), heading = 160.0, type = 'gold'},
        {coords = vector3(4.59683, -678.08, 15.1306), heading = 160.0, type = 'gold'},
        {coords = vector3(11.7111, -662.31, 15.1306), heading = 160.0, type = 'money'},
        {coords = vector3(6.65582, -676.21, 15.1306), heading = 340.0, type = 'money'},
        {coords = vector3(8.37958, -673.92, 15.1306), heading = 160.0, type = 'money'},
        {coords = vector3(6.02901, -673.81, 15.1306), heading = 160.0, type = 'money'},
        {coords = vector3(-3.1441, -669.95, 15.1306), heading = 160.0, type = 'gold'},
        {coords = vector3(-5.2267, -670.48, 15.1306), heading = 250.0, type = 'gold'},
        {coords = vector3(-3.7616, -672.84, 15.1306), heading = 340.0, type = 'gold'},
        {coords = vector3(1.76867, -658.10, 15.1306), heading = 160.0, type = 'gold'},
    }
}

Strings = {
    ['e_start'] = 'Press ~INPUT_CONTEXT~ to Start Union Heist',
    ['cutter_ready'] = 'The cutter is now ready wherever you want, check your gps. Go and start the heist!',
    ['go_to_rent'] = 'Go to meet to rent the cutter, check your gps.',
    ['cutter_blip'] = 'Cutter for Union',
    ['builder_blip'] = 'Rent a cutter',
    ['rent_cutter'] = 'Press ~INPUT_CONTEXT~ to rent cutter (' .. Config['UnionHeist']['cutterPrice'] .. '$)',
    ['start_heist'] = 'Required things for robbery: A lot of bags, c4 bombs and big cutter',
    ['grab_stack'] = 'Press ~INPUT_CONTEXT~ to grab stack',
    ['grab_trolly'] = 'Press ~INPUT_CONTEXT~ to grab trolly',
    ['plant_bomb'] = 'Press ~INPUT_CONTEXT~ to plant C4',
    ['detonate_bombs'] = 'Press ~INPUT_CONTEXT~ to detonate bombs',
    ['drill'] = 'Press ~INPUT_CONTEXT~ to drill wall',
    ['wait_nextrob'] = 'You have to wait',
    ['minute'] = 'minute.',
    ['need_this'] = 'You need this: ',
    ['need_police'] = 'Not enough police in the city.',
    ['total_money'] = 'You got this: ',
    ['police_alert'] = 'Union bank robbery alert! Check your gps.',
    ['not_cop'] = 'You are not cop!',
    ['buyer_blip'] = 'Buyer',
    ['deliver_to_buyer'] = 'Deliver the loot to the buyer. Check gps.',
}