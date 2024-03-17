fx_version 'cerulean'
game 'gta5'

description 'Waypoint AI EMS'
author 'BackSH00TER - Waypoint RP'
version '1.0.5'

shared_script {
    -- '@ox_lib/init.lua', -- Uncomment this if you are planning to use any ox scripts (such as ox notify)
    'shared/config.lua',
    'shared/framework.lua',
}

client_scripts {
    'ai-config.lua',
	'client.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}

lua54 'yes'

escrow_ignore {
    'shared/config.lua',
    'shared/framework.lua',
    'server.lua',
}

dependency '/assetpacks'