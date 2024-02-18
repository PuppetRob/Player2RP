fx_version 'cerulean'
game 'gta5'

author 'Grudge & Snipe'
description 'Script for Planting Weed Plants anywhere in the soil'
version '1.1.0'

lua54 'yes'

ui_page "html/index.html"

shared_scripts{
	'config.lua',
}

server_scripts {
	'server/sv_main.lua',
	'server/sv_customise.lua'
}

client_scripts {
	'client/cl_main.lua',
	'client/cl_customise.lua',
}

files {
    'html/index.html',
    'html/assets/css/*.css',
    'html/assets/js/*.js',
}

escrow_ignore{
	'config.lua',
	'server/sv_main.lua',
	'client/cl_main.lua',
	'server/sv_customise.lua',
	'client/cl_customise.lua',
}

dependency '/assetpacks'