---------SYSTEM SURF JOB CODERC-SLO--------------


Config = {}



-------------------COORDS MARKER 1 RENT SURF-------------------1
--Config.Surf1X = -1510.26 
--Config.Surf1Y = -1406.21
--Config.Surf1Z = 0.6
--Config.textput = '~g~[E]~w~ Rent ~y~(SURF~w~ [ 300 $ ]~y~) ~w~'
------------------------------------------------------------

-------------------COORDS MARKER 2 RENT SURF-------------------1
Config.Surf2X = -1514.3  
Config.Surf2Y = -1393.96
Config.Surf2Z = 0.75
Config.textput = '~g~[E]~w~ Rent ~y~(SURF~w~ [ 300 $ ]~y~) ~w~'
------------------------------------------------------------
-------------------COORDS MARKER DELETE SURF-------------------1
--Config.Surf3X = -1509.75 
--Config.Surf3Y = -1398.800
--Config.Surf3Z = 1.01
--Config.textputa3 = '~g~[E]~w~ Delete ~y~(~w~SURF~y~) ~w~'
------------------------------------------------------------

-------------------WITHDRAW MONEY-------------------1
Config.PrelevaX = -1462.63  
Config.PrelevaY = -1389.91
Config.PrelevaZ = 4.14
Config.textput2 = '~g~[E]~w~ Withdraw ~r~(MONEY) ~w~'
Config.textput3 = '~g~[G]~w~ Check ~y~(MONEY) ~w~'
------------------------------------------------------------

Config.PriceRent = 300

Config.ModelSurf = 'surfboard'

------COORD SPAWN SURF---------------------------------------
CashoutSurfspaw = {}
CashoutSurfspaw.SpawnVehicle = {
    x = -1514.83, 
    y = -1400.66, 
    z = 0.45, 
    h = 121.2,
}
-------------------------------------------------------------

--[[ Config.BipSurf = {
    {coords = vector3(-1504.05, -1395.45, 1.63), heading = 230.85}
    
} ]]--

Strings = {

    ['surfarea'] = 'Surfboard Rentals'
}