Config = {
  UseDirkMenu        = true, --## Do you want to use dirk-core prompts for going up to peds or target?
  TabletItem         = "bountytablet", --## Item name of the bounty tablet'
  RestrictTablet     = false, --## You can set this to true if you dont want anyone to be able to use the tablets, otherwise it'll only restrict who can buy them by whatever you have set for that office
  Currency           = "$", --## Currency symbol used in the UI 
  SortType           = "wantedSince", --## totalBounty, activeWarrants, wantedSince , this will be how you sort your most wanted players
  TopHuntersSortType = "totalEarnings", --## Can be "totalEarnings" or "totalContracts", one being total earnings being the factor of who's top hunter, the other being total contracts completed 
  AmountTopHunters   = 5, --## Amount of top hunters to show on the tablet
  FineAccount        = "bank",

  RewardOnKill       = true, --## If this is true then the player will get the reward when they kill the target, if false then they will have to return to the office to return the player

  BountyInterest = {
    Enabled = true, --## If this is true then the bounty will gain interest over time
    Time    = 0.01, --## Time in hours for the interest to be added
    Amount  = 0.05, --## Amount of interest to be added to the bounty (Example is 5%)
  },
  BountyInterestLoopTime = 5, --## Time in seconds for the interest loop to run

  DeleteAfter            = 28, --## Time in days for the bounty to be deleted even if not fulfilled (handy if you had loads of unfulfilled contracts stacking up)

  VehicleRetrievalSpots = {
    ['LSPD Bounties Impound'] = {
      Ped          = "s_m_m_highsec_01",                        --## Ped model of the clerk
      Pos          = vector4(371.79, -1612.92, 29.29, 292.29),   --## Position of the clerk
      Blip         = {Scale = 0.75, Sprite = 817, Color = 52, Display = 4, Close = true}, -- BLIP SETTINGS
      FeeAccount   = "bank", --## Account to get the fee from
      Types        = {"policeBounties"}, --## Types of bounty office this is for, only vehicles seize by this office will be able to be retrieved here
    },
  },
}


Items = {
  ['bountytablet'] = {
    ["name"]        = "bountytablet", 
    ["label"]       = "Bounty Tablet", 
    ["weight"]      = 500, 
    ["type"]        = "item",
    ["image"]       = "bountytablet.png", 
    ["unique"]      = true,
    ["useable"]     = true,
    ["shouldClose"] = true,
    ["combinable"]  = nil,
    ["description"] = "A tablet used by bounty hunters to see current contracts for their office",
  },
}


Core, Settings = exports['dirk-core']:getCore()


--[[
  OX ITEM - Add to your ox_inventory/data/items.lua

  ['bountytablet'] = {          
    label      = "Bounty Tablet",
    weight     = 250,
    allowArmed = false,
  },


]]