-- Created by Scully | https://discord.gg/scully
fx_version 'cerulean'

game 'gta5'

author 'Scully#5775'
description 'very noice weapon holster'
version '2.0'

lua54 'yes'

shared_script 'config.lua'

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

escrow_ignore {
	'config.lua'
}
dependency '/assetpacks'