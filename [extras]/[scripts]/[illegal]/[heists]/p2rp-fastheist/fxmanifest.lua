fx_version 'adamant'
game 'gta5'

author 'PD Scripts'
description 'http://discord.pd-scripts.eu/'
version '1.0.0'

client_scripts {
    'locales/en.lua',
    '@es_extended/locale.lua',

    'client/cconfig.lua',
    'client/cfuncs.lua',
    'client/cmain.lua',
}

server_scripts {
    'locales/en.lua',
    '@mysql-async/lib/MySQL.lua',
   -- '@es_extended/locale.lua',

    'server/sconfig.lua',
    'server/sfuncs.lua',
    'server/smain.lua',
}



ui_page "nui/index.html"

files {
    'nui/index.html',
    'nui/js/script.js',
    'nui/css/styles.css',
    'nui/img/*.png'
}

lua54 'yes'