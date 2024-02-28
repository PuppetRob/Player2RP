PDFFRobberyCore = {}
PDFFRobberyCore['config'] = {
    ['minigame'] = { -- Minigame locations
        [1] = vector3(27.48, -626.81, 14.95)
    },
    ['heistStart'] = {
        [1] = vector3(173.56, 2778.94, 46.08)
    },
    ['heistEnd'] = {  
        [1] = vector3(3416.16, 5499.48, 25.81)
    },

    ['vehicle'] = { -- Vehicles spawn name
        'kamacho'
    },

    ['vehicleFinal'] = { -- Vehicles spawn name
        'dubsta2'
    },

    ['vehicles_spawn_final'] = { -- Vehicles spawn location
    [1] = vector4(3416.16, 5499.48, 25.81, 123.42),
    [2] = vector4(3417.02, 5506.19, 25.81, 32.44)
},

    ['vehicles_spawn'] = { -- Vehicles spawn location
        [1] = vector3(-87.30, 370.75, 112.45),
        [2] = vector3(-89.71, 365.51, 112.45)
    },

    ['container_spawn'] = { -- Container spawn location
        [1] = vector4(-6.29, -660.6, 32.48, 184.99)
    },

    ['container_coords'] = { -- Container spawn location
       vector3(-5.02, -666.27, 32.48)
    },

    ['Alert'] = { 
        pos = vector3(122.31, -761.85, 20.98), -- do not touch
    },

    ['bones'] = { -- DO NOT TOUCH !!!
        ['vehicle_bone'] = 'ROPE_ATTATCH',
        ['container_bone'] = 'ROPE_ATTATCH'
    },

    ['props'] = { -- Props used in the script
        "prop_container_ld_pu"
    },
    
    [Locales] = {
        ['start_heist'] = 'You successfuly started the heist, now go and take the cars!',
        ['comeback_later'] = 'Come back later to start the heist',
        ['wait_forrobbery'] = 'You have to wait',
        ['minute'] = 'minutes to rob again.',
        ['need_police'] = 'Not enough police in the city.',
        ['police_alert'] = 'Container is being stolen! Check your gps.',
        ['short_circuit'] = 'Now go to the under ground and make a short circuit.',
        ['find_cars'] = 'You found the cars!',
        ['failed'] = 'You have failed the minigame!',
    }
}
