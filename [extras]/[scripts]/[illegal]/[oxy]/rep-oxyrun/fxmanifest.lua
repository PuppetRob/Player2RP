fx_version 'cerulean'
game 'gta5'

name "Rep Scripts - rep-oxyrun - Tablet Version"
author "Q4D"
version "1.1.1"

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/function.lua',
}

shared_script 'config.lua'

client_scripts {
	'client/*.lua'
}

escrow_ignore {
    'client/function.lua',  -- Only ignore one file
    'server/function.lua',
    'config.lua',
    'README.MD',
}

lua54 'yes'
dependency '/assetpacks'