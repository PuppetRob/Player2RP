fx_version 'cerulean'
game 'gta5'

description 'TK-Hunting'
version '1.6.5'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'config.lua',
    'locales/en.lua',
    'locales/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua',
}

client_scripts {
    'client/client.lua',
    'client/dialog.lua',
    'client/functions.lua'
}

escrow_ignore {
    'config.lua',
    'client/functions.lua',
    'locales/*.lua',
}

lua54 'yes'
dependency '/assetpacks'