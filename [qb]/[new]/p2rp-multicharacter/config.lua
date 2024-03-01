-- ak4y dev.

-- IF YOU HAVE ANY PROBLEM OR DO YOU NEED HELP PLS COME TO MY DISCORD SERVER AND CREATE A TICKET
-- IF YOU DONT HAVE ANY PROBLEM YET AGAIN COME TO MY DISCORD :)
-- https://discord.gg/kWwM3Bx

AK4Y = {}

AK4Y.Framework = "qb" -- qb / oldqb | qb = export system | oldqb = triggerevent system
AK4Y.Mysql = "oxmysql" -- Check fxmanifest.lua when you change it! | ghmattimysql / oxmysql / mysql-async

AK4Y.CustomFrameWork = false
AK4Y.CustomFrameWorkExport = "qb-core"

AK4Y.TebexLink = "https://ak4y.tebex.io/package/5378984/"
AK4Y.Translate = {
    title = "P2RP",
    character = "CHARACTER",
    selector = "SELECTOR",
    firstDesc = "Welcome to Player 2 Roleplay.",
    createCharacter = "CREATE CHARACTER",
    buySlot = "BUY SLOT",
    play = "PLAY",
    delete = "DELETE",
    male = "MALE",
    female = "FEMALE",
    dateOfBirth = "DATE OF BIRTH",
    nationality = "NATIONALITY",
    job = "JOB",
    cash = "CASH",
    bank = "BANK",
    phoneNumber = "PHONE NUMBER",
    accountNumber = "ACCOUNT NUMBER",
    rightTitle1 = "CHARACTER",
    rightTitle2 = "CREATOR",
    rightDescription = "Begin your Story!",
    name = "NAME",
    surname = "SURNAME",
    create = "CREATE",
    slot = "SLOT",
    redeemCode = "REDEEM CODE",
    buyCode = "BUY CODE",
    cancel = "CANCEL",
    accept = "ACCEPT",
    characterInfo = "CHARACTER INFORMATION",
    loading = "LOADING!",
    plsWait = "Please wait while your character information is loading!",  
    doYouAgreeDelete = "DO YOU AGREE TO DELETE THE CHARACTER NAMED",
}

AK4Y.MaxCharSlot = 4
AK4Y.DefaultOpenCharSlot = 4

AK4Y.UseQbApartments = false

AK4Y.Interior = vector3(-615.73, 39.15, 97.6) -- Interior to load where characters are previewed
AK4Y.DefaultSpawn = vector4(-597.69, 48.91, 97.03, 267.22) -- Default spawn coords if you have start apartments disabled
AK4Y.PedCoords = vector4(-615.85, 39.14, 97.6, 18.56) -- Create preview ped at these coordinates
AK4Y.HiddenCoords = vector4(-610.08, 41.75, 97.59, 272.03) -- Hides your actual ped while you are in selection
AK4Y.CamCoords = vector4(-616.85, 41.10, 97.9, 204.68) -- Camera coordinates for character preview screen
AK4Y.EnableDeleteButton = false -- doesnt work now, i will release an update

AK4Y.DefaultNumberOfCharacters = 4 -- Define maximum amount of default characters (maximum 5 characters defined by default)
AK4Y.PlayersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
    { license = "license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", numberOfChars = 2 },
}

AK4Y.StarterItems = {
    {item = "id_card", amount = 1},
    {item = "driver_license", amount = 1},
    {item = "water_bottle", amount = 5},
    {item = "twerks_candy", amount = 5},
    {item = "giftbox", amount = 1},


    -- {item = "water", amount = 3},
    -- {item = "burger", amount = 3},
    -- {item = "phone", amount = 1},
}

AK4Y.PlayerLoaded = function(citizenId)

end

