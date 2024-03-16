fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

name "PlasmaTron"
author "Sarish for Patamods"
version "1.0.2"

--[[
	V1.0.2
	Splitted all files for comprehension
	Added Timer for lobby deletion
	Added some missing message
	minor fixes
]]--

ui_page {
    'html/index.html', 
}

files {
    'html/index.html',
    'html/app.js', 
    'html/style.css',
	'html/img/*.*',
	'html/font/*.*'
} 

client_scripts {
	'utils/spectate.lua',
	'utils/camera.lua',
	'unencrypted/clientSpec.lua',
	'client.lua',
}

server_scripts {
	'unencrypted/serverSpec.lua',
	'server.lua'
}

shared_scripts {
	'cfg/configLANG.lua',
	'cfg/configDebug.lua',
	'cfg/config.lua'
}

escrow_ignore {
	'cfg/configLANG.lua',
	'cfg/configDebug.lua',
	'cfg/config.lua',
	'unencrypted/serverSpec.lua',
    'unencrypted/clientSpec.lua',
    'utils/spectate.lua',
    'utils/camera.lua',
 }
dependency '/assetpacks'