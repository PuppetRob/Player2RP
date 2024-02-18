fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Mads'
description 'A script that allows people to slash tires'
version '1.2.3'

server_script 'server/main.lua'

client_scripts {
	'config.lua',
	'client/main.lua'
}

escrow_ignore {
	'config.lua',
	'client/main.lua',
	'server/main.lua'
}

dependency '/assetpacks'