fx_version "cerulean"
games { "gta5" }

version '3.3.3'

lua54 'yes'

escrow_ignore {
    "config/config_ui.js",
    "config/locale_ui.js",
    "config/colors.js",
    'config/config.lua',
    'config/locale.lua',

    'config/config_client.lua',
    'config/config_server.lua',

    'client/cl_job.lua',
    'client/cl_util.lua',
}

files {
    "config/config_ui.js",
    "config/locale_ui.js",
    "config/colors.js",
    
    "html/slick/slick.js",
    "html/slick/slick.css",    
    "html/slick/slick-theme.css",

    "html/js/main.js",
    "html/js/dashboard.js",

    "html/js/components/jquery-ui.js",
    "html/js/components/picker.js",
    "html/js/components/pickr.es5.min.js",

    "html/css/jquery-ui.css",
    "html/css/nano.min.css",

    "html/css/main.css",
    "html/css/showroom.css",
    "html/css/dashboard.css",

    "html/fonts/*.otf",
    "html/fonts/*.ttf",
    "imgs/*.png",
    "imgs/brands/*.png",    
    
    "html/index.html",
}

ui_page "html/index.html"

shared_scripts {
    -- "@es_extended/imports.lua",
	-- '@es_extended/locale.lua',
   -- "shared/sh_*.lua",
	'@qb-core/shared/locale.lua',
}

server_scripts {    
	'@oxmysql/lib/MySQL.lua',

    'config/config.lua',
    'config/locale.lua',
    
    "config/config_server.lua",

    "server/sv_query.lua",
    "server/sv_mysql.lua",
    "server/sv_main.lua",
}

dependencies {
    'PolyZone'
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    
    'config/config.lua',
    'config/locale.lua',

    "client/cl_polyzone.lua",

    "client/cl_main.lua",
    "client/cl_util.lua",
    'config/config_client.lua',
    "client/cl_job.lua",
    "client/cl_showroom.lua",
    "client/cl_ui.lua",
    "client/cl_camera.lua",
    "client/orbitalcam/controllable_orbitalcam.lua",
    "client/orbitalcam/orbitalcam.lua",
}
dependency '/assetpacks'