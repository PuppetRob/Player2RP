Config = {
    Framework = "qb",
    JobName = "realestate",
    CreateGrade = 2, -- minimum grade to create houses
    MenuAlign = "bottom-right", -- esx_menu_default alignment

    UseRPName = true, -- should the transfer & bill menu show the in-game name?

    MinPrice = 0, -- minimum price for a property
    CreatePercent = 80, -- set to 0 or false to disable. % of the price will be removed from the realtor society wallet when creating a house

    AllowRemoveOwned = true, -- allow realtors to remove a house someone owns?
    AllowSelf = true, -- allow realtors to sell & transfer houses to themselves?
    AllowWalkin = true, -- allow realtors to create walk in houses? (MLO)
    
    Rent = true, -- allow realtors to rent out properties?

    Command = "reamenu", -- the command to open the job menu (where you can add a house)
    Keybind = {
        Enabled = true, -- should the script register a keybind?
        Mapper = "KEYBOARD", -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/
        Parameter = "F6"
    },

    Teleport = {
        vec4(1540.17, 813.81, 82.13, 193.97),
        vec4(-1007.57, -749.42, 65.69, 261.54),
    },

    BossActions = vector3(-716.48, 260.19, 84.14),
}