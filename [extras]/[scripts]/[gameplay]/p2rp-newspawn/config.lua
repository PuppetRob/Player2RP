CodeStudio = {}


CodeStudio.useTaxi = false          --Use AI Taxi or Not?
CodeStudio.SpawnPedLoc = vector3(-1044.91, -2750.2, 21.36)    --If not using AI Taxi then set player spawn location 

CodeStudio.Taxi = `taxi`                                     --Taxi Model
CodeStudio.TaxiPlate = 'P2RP'                              --Taxi Number Plate
CodeStudio.TaxiModded = false
CodeStudio.TaxiSpawn = vector4(-1058.48, -2713.28, 20.17, 240.05)       --Taxi First Spawn Location   
CodeStudio.TaxiDestination = vector4(-493.25, -284.4, 35.48, 296.43)    --Taxi Destination Lcoation 
CodeStudio.SkipToNearestLoc = vector4(-520.08, -418.37, 34.66, 359.78)      --Taxi Skip Nearest Location to destination


CodeStudio.WelcomeMessage = 'Welcome To Player 2 Roleplay'
CodeStudio.ReachedMessage = "You have reached your destination"




function Notify(msg)
    SetNotificationTextEntry('STRING') --- DELETE ME IF YOU ARE USING ANOTHER SYSTEM
    AddTextComponentString(msg)  --- DELETE ME IF YOU ARE USING ANOTHER SYSTEM
    DrawNotification(0,1)  --- DELETE ME IF YOU ARE USING ANOTHER SYSTEM
end