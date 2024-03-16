fx_version 'adamant'
games { 'rdr3', 'gta5' }
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'
author 'DirkScripts'
description 'DirkScripts BountyHuntersV2 - Available only at www.dirkscripts.com anywhere else and you have been scammed :( '
version '1.0.0'

client_script {
  'usersettings/config.lua',
  'usersettings/bountyoffices.lua',
  'usersettings/licenses.lua',
  'usersettings/labels.lua',
  'src/client/open_functions.lua',
  'src/client/functions.lua',
}


server_script {
  -- '@mysql-async/lib/MySQL.lua', -- Uncomment if not using oxmysql
  '@oxmysql/lib/MySQL.lua', -- Comment out if not using oxmysql

  'usersettings/config.lua',
  'usersettings/sv_config.lua',
  'usersettings/bountyoffices.lua',
  'usersettings/licenses.lua',
  'usersettings/labels.lua',
  'src/server/open_functions.lua',
  'src/server/functions.lua'
}


dependencies{
  'dirk-core',
} 

ui_page 'src/nui/index.html'

files{
  'src/nui/index.html',  
  'src/nui/**/*.css',  
  'src/nui/**/*.js',  
  -- 'src/nui/*.otf',  
  -- 'src/nui/*.ttf',  
  'src/nui/*.png',  
  'src/nui/*.js',  
  'src/nui/**/*.png', 
  'usersettings/*.json', 
}


escrow_ignore{
  'INSTALLATION/*.*',
  'INSTALLATION/install_items/*.*',
  'INSTALLATION/install_sql/*.*',
  'INSTALLATION/item_images/*.*',

  'usersettings/*.lua',
  'usersettings/*.json',
  'usersettings/*.sql',
  'src/client/open_functions.lua',
  'src/server/open_functions.lua',
}


dependency '/assetpacks'