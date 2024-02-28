# qb-jewelery
Jewelery Robbery For QB-Core with Thermite, VarHack and auto-lock/unlock doors!

# Credits
- [Holiday95](https://github.com/Holidayy95/qb-jewelery) For their fork of qb-jewelery which this is based on, and giving me the idea.
- [QBCore Framework](https://github.com/qbcore-framework) For the orginal qb-jewelery and for inspiring me to code.

# Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-doorlock](https://github.com/qbcore-framework/qb-doorlock)
- [ps-ui](https://github.com/Project-Sloth/ps-ui)

# New Features
- Doors now lock depending of the time of day, and store is "unthievable".
- 2 Hacks, thermite to get in and varhack to get out.
- A cooldown for locking the doors again after the hacks.

# Preview

- [Don Jewelery](https://youtu.be/t-MO9yvzlx4)

# Support

This is not a QBCore script nor is it maintained by them, please refer to my discord for any issues! 
- [discord](https://discord.gg/tVA58nbBuk)

# Config for ^These^
```
Config.VangelicoHours = { -- Store Hours
    range = {
        open = 6, -- When the doors unlock
        close = 17 -- When they lock for the night (for some reason this is actually 6pm)
    }
} 

Config.Cooldown = 5 * (60 * 2000) -- where x is minutes ie. x * (60 * 2000) \\ For door auto lock function

Config.DoorItem = 'thermite' -- item to remove\check for when placing a charge
Config.ThermiteSettings = {
    time = 60, -- time the hack displays for \\ half being showing the puzzle and the other solving
    gridsize = 5, -- (5, 6, 7, 8, 9, 10) size of grid by square units, ie. gridsize = 5 is a 5 * 5 (25) square grid
    incorrectBlocks = 10 -- incorrectBlocks = number of incorrect blocks after which the game will fail
}

Config.VarHackSettings = {
    blocks = 2, -- time the hack displays for \\ half being showing the puzzle and the other solving
    time = 20 -- time the hack displays for
}
```
# Add to qb-doorlock/configs
```
Config.DoorList['jewelery-citymain'] = {
    doorType = 'double',
    locked = true,
    cantUnlock = true,
    doorLabel = 'main',
    distance = 2,
    doors = {
        {objName = 9467943, objYaw = 306.00003051758, objCoords = vec3(-630.426514, -238.437546, 38.206532)},
        {objName = 1425919976, objYaw = 306.00003051758, objCoords = vec3(-631.955383, -236.333267, 38.206532)}
    },
    doorRate = 1.0,
}

Config.DoorList['jewelery-citysec'] = {
    objYaw = 36.000022888184,
    doorRate = 1.0,
    locked = true,
    fixText = false,
    pickable = true,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(-629.133850, -230.151703, 38.206585),
    distance = 1.5,
    doorType = 'door',
    objName = 1335309163,
}
```

# Server.cfg Convar Update
- Global DrawTextUi Option
```
setr UseTarget false
``` 

- Global Target Option
```
setr UseTarget true
```

# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>
