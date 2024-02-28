name "jixel-pearls"
author "Taylor"
version "1.8.2"
description "Pearls Job Script By Taylor"
fx_version "cerulean"
game "gta5"
lua54 'yes'

ui_page 'content/ui/index.html'

files {
    'content/ui/index.html',
}

shared_scripts { 'config.lua', 'core/shared/functions.lua', 'core/locales/*.lua*', 'locations/*.lua' }
server_scripts { 'core/server/*.lua', 'core/shared/VerCheck.lua' }
client_scripts { '@PolyZone/client.lua', '@PolyZone/BoxZone.lua', '@PolyZone/EntityZone.lua', '@PolyZone/CircleZone.lua', '@PolyZone/ComboZone.lua', 'content/ui/main.lua', 'core/client/*.lua', 'content/*.lua', }
escrow_ignore { 'content/ui/main.lua','*.lua', 'core/client/*.lua', 'core/server/*.lua','content/*.lua', 'core/locales/*.lua', 'locations/*.lua' }

dependency '/assetpacks'