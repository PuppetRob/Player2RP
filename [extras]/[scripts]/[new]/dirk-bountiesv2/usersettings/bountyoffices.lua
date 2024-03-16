Config.BountyOffices = {
  
  ['policeBounties']  = {
    OfficeName = "LSPD Bail Bonds",
    OfficeIcon = "fa-solid fa-gavel",
    PayAccount = "bank", --## Account to pay the bounty to or take the bounty from
    Clerk = {
      Ped  = "s_m_m_highsec_01", --## Ped model of the clerk
      Pos  = vector4(450.33, -977.83, 30.69, 225.19),   --## Position of the clerk
      Blip = {Scale = 0.75, Sprite = 189, Color = 3, Display = 4, Close = true}, 
    },


    --## If you want a boss menu for this office, set Enabled to true and set the position of the boss menu
    BossMenu = {
      Enabled  = false, 
      Position = vector4(441.13, -975.76, 30.69, 229.17), --## Position of the boss menu
      Job      = {name = "lspd", bossRank = 4}, --## Job associated to access the boss menu
    },

    BountyTablet = {
      Color        = "rgb(0, 76, 143, 0.8)", --## Color of the background
      Icon         = "pdlogo.png",          --## The Icon of the tablet, this is the image that will be shown on the tablet
      ShowCreators = true,                   --## Do you want to show the bounty creators name in the bounty list?
      BuyAccount   = "cash",                 --## Account to take money from when buying the tablet
      Price        = 5000,                   --## Price of the tablet               
      Access       = {                       --## Access settings for the tablet
        -- Item    = 'license_item',      --## Item name of the license (if you want to use an item as a lock for buying the tablet e.g hunter_license)
        License = 'policeBountyLicense1', --## License name of the license (if you want to use a license as a lock for buying the tablet e.g hunter_license) --## You could use the same license name at multiple (THIS IS DIRK-CORES OWN BUILT IN SYSTEM)
        -- Jobs    = {
        --   police = 0, 
        -- },
        -- CustomCheck = function()
        --   return true --## Return true if you want to allow the player to buy the tablet
        -- end,
      },
    },

    BountyCreation = { --## Settings for creation of bounties, such as who can create them, what the consequences are and the look of the form.
      Color        = "rgb(0, 76, 143, 0.8)", --## Color of the background
      Title        = "LSPD Bail Bonds",     --## Title of the bounty creation menu
      Icon         = "fa-solid fa-gavel",   --## Icon of the bounty creation menu
      Consequences = { Kill = false, Jail = 60, Fine = 1000, Vehicle = true}, --## Consequences allowed for this type of bounty office
      Access       = {
        Public = false,             --## OPTIONAL : If true anyone can create a bounty
        Jobs   = {                 --## OPTIONAL : Jobs that can create a bounty              
          lspd = 5, 
          bcso = 5, 
        },
        -- CustomCheck = function()
        --   return true --## Return true if you want to allow the player to buy the tablet
        -- end,
      },
    },
  },
  ['illegalBounties']  = {
    OfficeName = "Contract Killaz",
    PayAccount = "cash", --## Account to pay the bounty to or take the bounty from
    Clerk = {
      Ped  = "a_m_m_eastsa_02", --## Ped model of the clerk
      Pos  = vector4(1214.87, -493.4, 67.16, 97.24),   --## Position of the clerk
    },

    BountyTablet = {
      Color        = "rgb(255, 0, 0, 0.8)", --## Color of the background
      Icon         = "skull.png",          --## The Icon of the tablet, this is the image that will be shown on the tablet
      ShowCreators = false,                   --## Do you want to show the bounty creators name in the bounty list?
      BuyAccount   = "cash",                 --## Account to take money from when buying the tablet
      Price        = 5000,                   --## Price of the tablet               
      Access       = {                       --## Access settings for the tablet remove this table to make it public
        License = "illegalBounties2",
      -- Jobs    = {
        --   police = 0, 
        -- },
      },
    },

    BountyCreation = { --## Settings for creation of bounties, such as who can create them, what the consequences are and the look of the form.
      Color        = "rgb(255, 0, 0, 0.8)", --## Color of the background
      Title        = "Contract Killers",     --## Title of the bounty creation menu
      Icon         = "fa-solid fa-skull",   --## Icon of the bounty creation menu
      Consequences = { Kill = true, Jail = false, Fine = false, Vehicle = false}, --## Consequences allowed for this type of bounty office
      Access       = {
        Public = true,             --## OPTIONAL : If true anyone can create a bounty
        -- CustomCheck = function()
        --   return true --## Return true if you want to allow the player to buy the tablet
        -- end,
      },
    },
  },


}