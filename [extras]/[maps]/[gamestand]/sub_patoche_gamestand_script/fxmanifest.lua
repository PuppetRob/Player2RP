fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

description 'A lot of fun with Patoche and his gamestand.'
author 'Patoche & Tiwabs'
version '1.3.0'

shared_scripts {
    '@ox_lib/init.lua',
    'init.lua',
    'config.lua',
    'bridge/**/*.lua',
    'shared/**/*.lua',
    'shared/locale.lua'
}

client_scripts {
    'client/main.lua',
    'client/shooter.lua',
    'client/chinups.lua',
    'client/trampoline.lua',
}

server_scripts {
    'server/class/player.lua',
    'server/class/stand.lua',
    'server/class/standManager.lua',
    'server/main.lua'
}

files {
    'locales/*.json'
}

escrow_ignore {
    'config.lua',
    'init.lua',
    'bridge/**/*.lua',
}
dependency '/assetpacks'