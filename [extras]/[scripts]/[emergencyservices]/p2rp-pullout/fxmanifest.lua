fx_version 'cerulean'
game 'gta5'

name 'cb-pullout'
version '1.0.0'
description 'Pull out people from vehicles'
author 'cb'
url 'https://cb-development.tebex.io/'


client_scripts {
    'config.lua',
    'client/main.lua'
}

server_scripts {
    'config.lua',
    'server/main.lua',
}

escrow_ignore {
    'config.lua',
}

lua54 'yes'

dependency '/assetpacks'
dependency '/assetpacks'