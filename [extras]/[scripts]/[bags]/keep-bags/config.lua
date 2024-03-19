Config = {}

-- Maximum inventory slots for players (inventory slots)
Config.max_inventory_slots = 41

Config.clothingScript = 'illenium-appearance' -- illenium-appearance or qb-clothing oe esx (skinchanger)
-- When set to skinchanger, it only supports 'bag' as a clothing option and nothing else!

-- Default durations (in seconds)
Config.duration = {
     open = 1,    -- Time to open a bag
     lockpick = 5 -- Time to lockpick a bag
}

-- Prevent players from carrying multiple backpacks
-- They will stuck in one place until they put the extra bags away
Config.notAllowedToCarryMultipleBackpacks = true
-- Maximum allowed backpacks per player
Config.maxAllowedBackpacks = 1

-- Whitelist for lockpicking access
Config.lockpick_whitelist = {
     active = true,
     jobs = { 'lspd', 'bcso', 'highwaypatrol' }, -- Jobs with lockpicking access
     citizenid = {}
}

Config.npc = {
     position = vector4(193.6, -930.91, -108.88, 221.89),
     model = 's_m_m_gardener_01',
     scenario = 'WORLD_HUMAN_DRINKING'
}

Config.retrieval = {
     available_at = 2, -- hours
     expire_at = 24,   -- hours
}

-- Backpack configurations
Config.Bags = {
     {
          item = 'backpack1',
          slots = 10,
          size = 50000,
          cloth = {
               male = {
                    ["bag"] = { item = 112, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 112, texture = 0 }
               }
          },
          blacklist = {
               'weapon_pumpshotgun',              
               'weapon_sawnoffshotgun',            
               'weapon_assaultshotgun',      
               'weapon_bullpupshotgun',        
               'weapon_musket',                
               'weapon_heavyshotgun',          
               'weapon_dbshotgun',             
               'weapon_autoshotgun',           
               'weapon_pumpshotgun_mk2',      
               'weapon_combatshotgun',     
               'weapon_assaultrifle',          
               'weapon_assaultrifle_mk2',     
               'weapon_carbinerifle',          
               'weapon_carbinerifle_mk2',      
               'weapon_advancedrifle',        
               'weapon_specialcarbine',        
               'weapon_bullpuprifle',          
               'weapon_compactrifle',          
               'weapon_specialcarbine_mk2',    
               'weapon_bullpuprifle_mk2',      
               'weapon_militaryrifle',         
               'weapon_mg',                    
               'weapon_combatmg',             
               'weapon_gusenberg',             
               'weapon_combatmg_mk2',          
               'weapon_sniperrifle',           
               'weapon_heavysniper',          
               'weapon_marksmanrifle',         
               'weapon_remotesniper',          
               'weapon_heavysniper_mk2',       
               'weapon_marksmanrifle_mk2'     
          },
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
    --[[  {
          item = 'backpack2',
          slots = 20,
          size = 200000,
          cloth = {
               male = {
                    ["bag"] = { item = 36, texture = 1 }
               },
               female = {
                    ["bag"] = { item = 85, texture = 13 }
               }
          },
          -- If active, the backpack accepts all items except those listed here
          blacklist = {
               'water',
               'steel'
          }
     },  ]]
     {
          item = 'duffle1',
          slots = 20,
          size = 100000,
          cloth = {
               male = {
                    ["bag"] = { item = 82, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 123, texture = 0 }
               }
          }
     },
    --[[  {
          item = 'paramedicbag',
          slots = 10,
          size = 50000,
          prop = GetProp('paramedicbag') -- Use props from shared/props.lua
     }, ]]
--[[      {
          item = 'briefcase',
          slots = 5,
          size = 25000,
          locked = true,
          prop = GetProp('suitcase2') -- Use props from shared/props.lua
     } ]]
    --[[  {
          item = 'policepouches',
          slots = 6,
          size = 200000,
          cloth = {
               male = {
                    ["accessory"] = { item = 146, texture = 0 }
               },
               female = {
                    ["accessory"] = { item = 123, texture = 0 }
               }
          }
     },
     {
          item = 'policepouches1',
          slots = 12,
          size = 400000,
          cloth = {
               male = {
                    ["accessory"] = { item = 147, texture = 0 }
               },
               female = {
                    ["accessory"] = { item = 123, texture = 0 }
               }
          }
     } ]]
}
