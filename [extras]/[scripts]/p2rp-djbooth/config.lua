Config = {}

Config.DefaultVolume = 0.1 -- Accepted values are 0.01 - 1

Config.Locations = {
    ['vanilla'] = {
        ['job'] = 'vanilla', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(120.52, -1281.5, 29.48), -- Where the booth is located
        ['playing'] = false
    },
    ['galaxy'] = {
        ['job'] = 'galaxy', -- Required job to use booth
        ['radius'] = 50, -- The radius of the sound from the booth
        ['coords'] = vector3(399.25, 269.15, 92.05), -- Where the booth is located
        ['playing'] = false
    },
    ['galaxydance'] = {
        ['job'] = 'galaxy', -- Required job to use booth
        ['radius'] = 50, -- The radius of the sound from the booth
        ['coords'] = vector3(375.32, 276.0, 92.4), -- Where the booth is located
        ['playing'] = false
    },
    ['henhouse'] = {
        ['job'] = 'henhouse', -- Required job to use booth
        ['radius'] = 40, -- The radius of the sound from the booth
        ['coords'] = vector3(-311.95, 6265.05, 32.06), -- Where the booth is located
        ['playing'] = false
    }
}
