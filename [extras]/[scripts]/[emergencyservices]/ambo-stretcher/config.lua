Config = {}

Config.Commands= {
    DisableStretcherCommand = false,
    StretcherCommandName = 'stretcher'
}

Config.KeyBinds = { --CAN BE SET FROM https://docs.fivem.net/docs/game-references/controls/
    OpenStretcherMenu = { Key = 38, Name = 'INPUT_PICKUP'},
    OpenAmboMenu = { Key = 212, Name = 'INPUT_FRONTEND_SOCIAL_CLUB'},
    StoreStretcher = { Key = 38, Name = 'INPUT_PICKUP'},
    TakeStretcher = { Key = 38, Name = 'INPUT_PICKUP'},
    DropStretcher_DOWN = { Key = 58, Name = 'INPUT_THROW_GRENADE'},
    DropStretcher_UP = { Key = 104, Name = 'INPUT_VEH_SHUFFLE'},
    OpenDoors = { Key = 11, Name = 'INPUT_SCRIPTED_FLY_ZDOWN'},
    OpenCompartments = { Key = 10, Name = 'INPUT_SCRIPTED_FLY_ZUP'},
}

Config.Stretcher = '23ambostretcher'

Config.Medics = {
    {
        model = '23fambo',
		detection = 4.8,
        stretcher_offset = {x = 0.0, y = -0.812, z = 0.35, rotation = 0.0},
        attach_bone = 'boot'
    },
    {
        model = '23rambo',
		detection = 4.8,
        stretcher_offset = {x = 0.0, y = -0.812, z = 0.35, rotation = 0.0},
        attach_bone = 'boot'
    },
    {
        model = '23r2ambo',
		detection = 4.8,
        stretcher_offset = {x = 0.0, y = -0.812, z = 0.35, rotation = 0.0},
        attach_bone = 'boot'
    },
        {
        model = '23rambo2',
		detection = 4.8,
        stretcher_offset = {x = 0.0, y = -0.812, z = 0.35, rotation = 0.0},
        attach_bone = 'boot'
    },
    {
        model = '23r2ambo2',
		detection = 4.8,
        stretcher_offset = {x = 0.0, y = -0.812, z = 0.35, rotation = 0.0},
        attach_bone = 'boot'
    }
}