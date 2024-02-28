fx_version 'cerulean'
game 'gta5'


shared_scripts {
    'config.lua',
    'translations/en.lua' --CHOOSE YOUR LANGUAGE, YOU CAN ADD OTHERS (README)
}

client_scripts {
    'client/cl_main.lua',
    'client/cl_menus.lua',
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'server/sv_main.lua',
}

escrow_ignore {
	'config.lua',
	'README.md',
	'pets.sql',
	'translations/*',
	'client/*',
	'server/*',
	'images/*',
  }

lua54 'yes'
dependency '/assetpacks'