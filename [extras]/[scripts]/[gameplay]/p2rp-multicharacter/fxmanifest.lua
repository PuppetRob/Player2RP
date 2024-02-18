fx_version 'cerulean'
game 'gta5'

shared_script 'config.lua'
client_scripts {
	'client/main.lua',
	'client/open_client.lua',
}
server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua',
	'server/open_server.lua',
}

ui_page 'html/ui.html'


files {
	'html/ui.html',
	'html/font/*.ttf',
	'html/font/*.otf',
	'html/css/*.css',
	'html/images/*.jpg',
	'html/images/*.png',
	'html/js/*.js',
	'html/js/app.js',
}


dependencies {
    'qb-core',
    'qb-spawn'
}

escrow_ignore {
	'config.lua',
	'client/open_client.lua',
	'server/open_server.lua',
	'server/main.lua',
	'client/main.lua',
}  


lua54 'on'

dependency '/assetpacks'