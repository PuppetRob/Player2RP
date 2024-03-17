local QBCore = exports['qb-core']:GetCoreObject()

local blips = { 

  {title="Gold Mining", colour=5, id=618, x = -850.78, y = 4432.83, z = 14.13, scale = 0.65},
  {title="Gold Mining", colour=5, id=618, x = -1273.16, y = 1898.18, z = 100.82, scale = 0.65},

  {title="Foundry", colour=1, id=436, x =  1112.29, y = -2009.9, z = 31.46, scale = 0.65}, -- Smelter
  {title="Recycle Centre", colour=2, id=365, x =  746.83, y = -1399.59, z = 26.61, scale = 0.7}, -- Smelter

   {title="Ore Buyer", colour=9, id=434, x = 304.91, y = 2821.12, z = 43.44, scale = 0.65}, -- Ore Buyer
   {title="Jewel Buyer", colour=9, id=434, x = 1651.49, y = 4879.89, z = 41.16, scale = 0.65}, -- Jewel Buyer
   {title="Materials Buyer", colour=9, id=434, x = 347.11, y = 3405.89, z = 36.66, scale = 0.65}, -- Jewel Buyer
   {title="Fish Buyer", colour=9, id=434, x = 163.73, y = 6633.23, z = 31.6, scale = 0.65}, -- Fish Buyer



   {title="Dynasty 8", colour=2, id=476, x = -706.68, y = 268.77, z = 83.15, scale = 0.55},
   {title="Go Kart Track", colour=26, id=646, x = -157.307, y = -2144.747, z = 16.705, scale = 0.65},
  -- {title="Movie Theatre", colour=8, id=135, x = 352.53, y = 179.06, z = 103.0, scale = 0.65},
  
    -- Motels
   {title="Pink Cage", colour=29, id=124, x = 321.63, y = -210.15, z = 54.09, scale = 0.55},
   {title="Beach Hotel", colour=29, id=124, x = -1469.65, y = -655.25, z = 29.5, scale = 0.55},
   {title="Mafia Hotel", colour=29, id=124, x = 396.75, y = -2.28, z = 91.94, scale = 0.55},
   {title="Davis Motel", colour=29, id=124, x = 372.31, y = -1785.63, z = 29.1, scale = 0.55},
   {title="Dreamview Motel", colour=29, id=124, x = -100.32, y = 6321.05, z = 31.58, scale = 0.55},


   --{title="Yoga", colour=4, id=197, x = -1314.71, y = -1466.1, z = 4.37, scale = 0.65},
   --{title="Yoga", colour=4, id=197, x = -1494.1, y = 829.05, z = 181.6, scale = 0.65},
                                        
   {title="Metal Detecting", colour=4, id=103, x = -1802.49, y = -779.25, z = 7.64, scale = 0.65},


   {title="Pawn Shop", colour=70, id=431, x = -311.33, y = 6189.63, z = 31.56, scale = 0.65},
   {title="Pawn Shop", colour=70, id=431, x = 1701.88, y = 3781.82, z = 34.71, scale = 0.65},
   {title="Pawn Shop", colour=70, id=431, x = 135.12, y = -1781.33, z = 29.73, scale = 0.65},

   {title="Vangelico", colour=26, id=617, x = -625.24, y = -232.86, z = 38.06, scale = 0.65},
   {title="WeedShop", colour=2, id=496, x = 194.23, y = -243.55, z = 54.07, scale = 0.65},

   {title="Mini Golf", colour=1, id=358, x = -1728.31, y = -1125.42, z = 13.02, scale = 0.65},
   {title="Pool Hall", colour=0, id=509, x = -1596.62, y = -991.55, z = 13.08, scale = 0.45},

   {title="Hardware and Furniture Store", colour=81, id=402, x = 2737.26, y = 3462.09, z = 55.7, scale = 0.75},
   {title="Hardware Store", colour=81, id=402, x = 252.49, y = -267.3, z = 54.04, scale = 0.75},

   {title="Weazel News", colour=75, id=459, x = -588.57, y = -929.8, z = 24.61, scale = 0.65},

   {title="Towing", colour=55, id=477, x = -217.66, y = -1168.29, z = 23.04, scale = 0.45},

   {title="Plasma Game", colour=2, id=429, x = -1084.7562255859, y = -1280.9090576172, z = 5.6599960327148, scale = 0.60},
   {title="Skateboard Shop", colour=61, id=577, x = -1122.74, y = -1439.45, z = 5.23, scale = 0.65},
   {title="Surfing", colour=3, id=483, x = -1507.33, y = -1396.08, z = 1.44, scale = 0.65},
   {title="Art Gallery", colour=64, id=269, x = -411.25, y = 26.55, z = 46.23, scale = 0.65},

   {title="Boat Shop", colour=18, id=410, x = -806.17, y = -1354.95, z = 5.18, scale = 0.65},
   {title="Bike Shop", colour=59, id=348, x = -65.56, y = 70.73, z = 71.61, scale = 0.65},
   {title="Air Shop", colour=53, id=582, x = -1643.73, y = -3138.59, z = 13.52, scale = 0.65},
   {title="PDM", colour=61, id=225, x = -45.67, y = -1098.34, z = 26.42, scale = 0.60},
  -- {title="Luxury Autos", colour=50, id=523, x = -793.79, y = -225.0, z = 37.25, scale = 0.60},
  -- {title="Used Vehicles", colour=19, id=225, x = 1232.43, y = 2713.6, z = 38.01, scale = 0.60},
   {title="Truck Shop", colour=69, id=477, x = 847.7, y = -3217.13, z = 5.87, scale = 0.60},

 

   {title="Quarry", colour=21, id=547, x = 2968.41, y = 2751.28, z = 43.22, scale = 0.70},
   {title="Mine", colour=21, id=547, x = -595.93, y = 2087.5, z = 131.38, scale = 0.70},

       -- Mechanics
   {title="Bennys", colour=43, id=446, x = -220.91, y = -1327.13, z = 31.3, scale = 0.6},
   {title="Bike Mechanic", colour=43, id=446, x = 2519.53, y = 4101.24, z = 38.58, scale = 0.6},
   {title="Hayes Auto", colour=43, id=446, x = -1417.44, y = -446.6, z = 35.52, scale = 0.6},
   {title="Ottos Mechanic", colour=43, id=446, x = 817.5, y = -809.27, z = 25.53, scale = 0.6},
   {title="Sandy Mechanic", colour=43, id=446, x = 1173.86, y = 2656.51, z = 38.07, scale = 0.6},
                                        

 -- Emergency Services
  {title="Sandy BCSO", colour=38, id=60, x = 1853.72, y = 3686.15, z = 34.28, scale = 0.65},
  {title="Davis BCSO", colour=38, id=60, x = 372.07, y = -1600.59, z = 30.05, scale = 0.65},
  {title="Paleto BCSO", colour=38, id=60, x = -451.54, y = 6014.25, z = 44.01, scale = 0.65},
  --{title="SAST HP", colour=38, id=60, x =  1541.14, y = 817.28, z = 77.66, scale = 0.65},
 -- {title="SAST LeMesa", colour=38, id=60, x = 830.53, y = -1290.07, z = 28.24, scale = 0.65},
  {title="LSPD MRPD", colour=38, id=60, x = 439.12, y = -982.06, z = 30.69, scale = 0.65},
  {title="Park Rangers", colour=25, id=60, x = -813.93, y = 5394.53, z = 35.87, scale = 0.65},
  {title="Davis Fire", colour=6, id=648, x =  199.96, y = -1634.66, z = 30.02, scale = 0.65},
 -- {title="Pillbox Hospital", colour=1, id=61, x = 304.27, y = -600.33, z = 43.28, scale = 0.60},
  {title="Sandy Hospital", colour=1, id=61, x = 1767.19, y = 3639.81, z = 34.85, scale = 0.60},
  {title="Pharmacist", colour=0, id=403, x = 1741.88, y = 3639.05, z = 34.85, scale = 0.65},

  {title="Police Impound", colour=12, id=524, x = -288.34, y = 6131.8, z = 30.99, scale = 0.60},



  {title="Fight Club", colour=82, id=491, x = -517.56, y = -1712.28, z = 20.46, scale = 0.65},
  {title="Fight Arena", colour=59, id=675, x = -324.47, y = -1968.62, z = 66.99, scale = 0.65},


  {title="Metal Welding", colour=7, id=478, x = -7.26, y = -2694.4, z = 5.63, scale = 0.55},

  {title="Hunting Store", colour=31, id=141, x = -774.21, y = 5602.79, z = 33.74, scale = 0.65},

           
  {title="Bean Machine", colour=21, id=489, x = -627.54, y = 238.29, z = 81.89, scale = 0.65},
  
    -- Fishing
  {title="Fishing Tournament", colour=15, id=205, x = -1613.31, y = 5259.81, z = 4.43, scale = 0.60},
  {title="Bait and Tackle", colour=12, id=59, x = -1593.99, y = 5198.7, z = 4.36, scale = 0.55},


  {title="Tequilala", colour=28, id=93, x = -559.5, y = 281.6, z = 82.18, scale = 0.65},
  {title="Galaxy Nightclub", colour=27, id=93, x = 353.73, y = 298.15, z = 104.04, scale = 0.65},


  {title="Bahama Mamas", colour=61, id=121, x = -1393.44, y = -596.79, z = 30.32, scale = 0.65},
 -- {title="Vanilla Unicorn", colour=61, id=121, x = 111.05, y = -1287.95, z = 28.26, scale = 0.65},

 -- {title="Pizza This", colour=7, id=267, x = 803.75, y = -752.65, z = 26.78, scale = 0.5},
 -- {title="Hen House", colour=17, id=93, x = -306.56, y = 6265.08, z = 31.48, scale = 0.65},
 -- {title="Cat Cafe", colour=8, id=89, x = -581.27, y = -1062.66, z = 22.35, scale = 0.45},
 -- {title="Cyber Bar", colour=27, id=484, x = 334.65, y = -910.12, z = 29.26, scale = 0.65},
  {title="Toy Store", colour=34, id=680, x = 388.43, y = -760.57, z = 29.65, scale = 0.60},

  {title="Event Studio", colour=50, id=135, x = -258.7, y = 232.85, z = 92.07, scale = 0.60},
 -- {title="Burger Shot", colour=59, id=106, x = -1183.84, y = -884.05, z = 13.8, scale = 0.50},

  --{title="Up n Atom", colour=28, id=76, x = 86.16, y = 281.24, z = 110.21, scale = 0.50},


 -- {title="Koi Restaurant", colour=26, id=674, x = -1035.06, y = -1482.78, z = 4.55, scale = 0.65},
 -- {title="Pearls", colour=77, id=267, x = -1825.66, y = -1198.94, z = 14.31, scale = 0.55},
  {title="Pet Shop", colour=17, id=273, x = -1786.71, y = -1159.27, z = 13.47, scale = 0.65},
 -- {title="Ice Cream Shop", colour=61, id=499, x = -1766.38, y = -1133.64, z = 13.02, scale = 0.55},

  {title="Boxing Gym", colour=6, id=311, x = 376.47, y = -1100.18, z = 29.44, scale = 0.55},
  {title="Beach Gym", colour=6, id=311, x = -1202.76, y = -1567.48, z = 4.87, scale = 0.55},

  {title="Car Rentals", colour=17, id=811, x = -1035.22, y = -2728.06, z = 20.13, scale = 0.65},
  {title="Car Rentals", colour=17, id=811, x = 1992.62, y = 3777.29, z = 32.18, scale = 0.65},
  {title="Car Rentals", colour=17, id=811, x = -500.4, y = -254.27, z = 35.72, scale = 0.65},
  {title="Car Rentals", colour=17, id=811, x = -237.14, y = 6201.52, z = 31.94, scale = 0.65},

  
  {title="Digital Shop", colour=34, id=564, x = -631.64, y = -279.42, z = 35.58, scale = 0.65},
  {title="Phone Shop", colour=30, id=817, x = -778.61, y = -612.73, z = 30.28, scale = 0.65},

--  {title="Casino", colour=45, id=679, x = 947.16, y = 32.48, z = 73.05, scale = 0.65},



    -- Example {title="", colour=, id=, x=, y=, z=},
--[[     
    {title="Fishing Vendor", colour=38, id=68, x = -3436.27, y = 957.88, z = -0.29, scale = 0.65},
    {title="Fishing Vendor", colour=38, id=68, x = 1694.89, y = 33.56, z = 159.81, scale = 0.65},
    {title="Fishing Vendor", colour=38, id=68, x = 1292.32, y = 4230.17, z = 30.44, scale = 0.65},

    {title="Fruit Stand", colour=9, id=434, x = 1477.22, y = 2723.29, z = 37.58, scale = 0.65},
    {title="Fruit Picking", colour=17, id=285, x = 1792.59, y = 4594.38, z = 37.68, scale = 0.65},  
    {title="Bus Job", colour=16, id=513, x = 462.23, y = -641.15, z = 28.44, scale = 0.65},

  -- {title="Fish Monger", colour=12, id=628, x = -1039.46, y = -1396.89, z = 5.55, scale = 0.65},




  

















  {title="Material Buyer", colour=9, id=434, x = 2341.67, y = 3126.13, z = 48.21, scale = 0.65}, -- Material Buyer
 --  {title="Gem Buyer", colour=9, id=434, x = 463.18, y = -770.21, z = 27.36, scale = 0.65}, -- Gem Buyer
  -- {title="Scrap Yard List", colour=40, id=303, x = 248.15, y = 360.89, z = 106.14, scale = 0.65}, -- qb-scrapyard
  -- {title="A Warehouse", colour=40, id=303, x = 972.53, y = -2286.33, z = 30.51, scale = 0.650}, -- Warhoue, do something with it.


	 -- ILLEGAL

 -- {title="A Black Market", colour=40, id=303, x = 559.63, y = 2794.83, z = 42.16, scale = 0.650}, -- Behind plasma in harmony | Patoche Free
 -- {title="A Oxy Run", colour=40, id=303, x = 1387.31, y = 3608.27, z = 38.94, scale = 0.650}, -- Airpot, add pilot in pedspawner
 -- {title="Chop Shop", colour=40, id=303, x = 752.36, y = -1207.53, z = 24.76, scale = 0.650}, -- p2rp-chopshop
 -- {title="A Illegal Med", colour=40, id=303, x = -1373.0, y = -327.0, z = 40.0, scale = 0.650}, -- Near Bloods MLO off Perth Street | Free from Charlie
 -- {title="Grandma", colour=40, id=303, x = 3313.76, y = 5178.0, z = 19.61, scale = 0.65}, -- Grandma
 -- {title="Eclipse Applestore", colour=13, id=184, x = -747.71, y = 257.16, z = 78.26, scale = 0.65},
 -- {title="San Andreas Applestore", colour=13, id=184, x = -778.81, y = -608.47, z = 31.21, scale = 0.65}, 
 -- {title="Machinery Theft", colour=40, id=303, x = 2707.05, y = 2777.29, z = 37.88, scale = 0.65}, -- p2rp-machines
  
   
   -- Weed
 --{title="A Weed Field", colour=40, id=303, x = 1058.49, y = 4268.13, z = 37.9, scale = 0.650},
 -- {title="A Weed Processor", colour=40, id=303, x = 1061.7, y = -2451.28, z = 23.29, scale = 0.650}, -- South in the shipping container

  -- Cocaine
  -- {title="A Coke Field", colour=40, id=303, x = 3370.37, y = 5461.83, z = 16.71, scale = 0.650},
  -- {title="A Coke Burner Phone (Ammonia)", colour=40, id=303, x = -626.08, y = -277.72, z = 35.58, scale = 0.650},
  -- {title="A Coke Mix and Process", colour=40, id=303, x = 1333.99, y = -1655.78, z = 52.25, scale = 0.650}, -- Patoche Store in gang area, next to tattoo shop.

   -- Meth
--{title="A Meth Sulfuric acid ", colour=40, id=303, x = 1983.2, y = 530.11, z = 161.87, scale = 0.650}, 
   --  {title="A Meth Hydrochloric acid", colour=40, id=303, x = -1773.01, y = 3006.97, z = 41.34, scale = 0.650},
   --  {title="A Meth Lab to Mix", colour=40, id=303, x = -49.7, y = 6370.29, z = 28.82, scale = 0.650},
   --  {title="A Meth Processor", colour=40, id=303,  x = 988.82, y = 3573.66, z = 34.58, scale = 0.650},


    -- LSD
 -- {title="A LSD Acid", colour=40, id=303, x = 1979.69, y = -2611.02, z = 6.2, scale = 0.650},-- BOAT
 --  {title="A LSD Paper", colour=40, id=303, x = 2436.89, y = 4966.79, z = 42.35, scale = 0.650},
 --  {title="A LSD Mix", colour=40, id=303, x = 2856.33, y = 4450.8, z = 48.48, scale = 0.650},
 --  {title="A LSD Bag", colour=40, id=303, x = 1438.43, y = -2218.94, z = 60.91, scale = 0.650},

  -- Extacsy
 -- {title="A Extacsy Sassafras Field", colour=40, id=303, x = 2452.14, y = 6344.3, z = 77.75, scale = 0.650}, -- Harvest Sassafras and turn it into Safrole
  --{title="A Sassafras Processor", colour=40, id=303, x = 1333.99, y = -1655.78, z = 52.25, scale = 0.650},
  --  {title="A Extacsy Ephedrine barrel", colour=40, id=303, x = 3594.27, y = 3760.06, z = 29.94, scale = 0.650}, -- Ephedrine from Human Labs
  --  {title="A Pill Press & Mix", colour=40, id=303, x = 1442.51, y = -2225.81, z = 61.66, scale = 0.650}, -- Need Safrole and Ephedrine

   -- Money Laundering
 -- {title="Money Launder", colour=40, id=303, x = 1136.38, y = -990.59, z = 46.11, scale = 0.650},
  --{title="", colour=40, id=303, x = 1333.99, y = -1655.78, z = 52.25, scale = 0.650},

   -- Body Harvest
 -- {title="A Body Delivery", colour=40, id=303, x = -450.41, y = 6334.64, z = 13.13, scale = 0.650},
  --{title="", colour=40, id=303, x = 1333.99, y = -1655.78, z = 52.25, scale = 0.650},

   -- Moonshine
  --{title="", colour=40, id=303, x = 1061.7, y = -2451.28, z = 23.29, scale = 0.650},
--    {title="A Moonshine Distillery", colour=40, id=303, x = -31.64, y = 3035.2, z = 41.11, scale = 0.650},
} 
   
 ]]--

}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, info.scale)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	    BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end) 