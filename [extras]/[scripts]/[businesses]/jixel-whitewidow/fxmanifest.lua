name "Jixel-WhiteWidow"
author "Jimathy and Taylor"
version "1.2.1"
description "WhiteWidow Script By Jimathy and Taylor"
fx_version "cerulean"
game "gta5"
lua54 'yes'

shared_scripts { 'config.lua', 'shared/functions.lua', 'locales/*.lua*' }
server_scripts { 'server/*.lua', 'shared/vercheck.lua'}
client_scripts { '@PolyZone/client.lua', '@PolyZone/BoxZone.lua', '@PolyZone/EntityZone.lua', '@PolyZone/CircleZone.lua', '@PolyZone/ComboZone.lua', 'client/*.lua', }
escrow_ignore { '*.lua*', 'client/*.lua*', 'server/*.lua*', 'locales/*.lua*' }
dependency '/assetpacks'