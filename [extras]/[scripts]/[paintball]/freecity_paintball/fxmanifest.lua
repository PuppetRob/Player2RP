fx_version 'bodacious'
game 'gta5'

author 'Free City'
version '1.1.1-release'

dependencies {
    "PolyZone"
}

client_script {
    'locale.lua',
	'locales/pt.lua',
    'locales/en.lua',
    'client/client.lua',
    'client/shared-client.lua',
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
}

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/css/*.css',
	'html/js/*.js',
    'html/img/*.png',
    'html/img/*.jpg'
}

server_script {
    'locale.lua',
	'locales/pt.lua',
    'locales/en.lua',
	'server/server.lua',
    'server/shared-server.lua'
}

shared_script 'shared.lua'

escrow_ignore {
    'locales/pt.lua',
    'locales/en.lua',
    'server/shared-server.lua',
    'client/shared-client.lua',
    'shared.lua'
}


lua54 'yes'
dependency '/assetpacks'