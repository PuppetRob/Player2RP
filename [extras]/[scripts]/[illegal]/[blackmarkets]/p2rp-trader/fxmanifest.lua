fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Snazzy'
version '2.0.0'

shared_script 'config.lua'
server_script 'server/**.lua'
client_scripts {
  'client/client.lua',
  'client/**.lua'
}

escrow_ignore {
    'config.lua',
    'server/discord.lua'
  }

dependency '/assetpacks'