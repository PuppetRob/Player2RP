fx_version 'bodacious'
game 'gta5'
this_is_a_map 'yes'

author 'Map4All Interiors'
description 'Blaine County Impound Lots'
version '1.0.1'
-- Fixed missing couch collision, Mismatched UV at the back of build01, added missing static flag to dynamic props

escrow_ignore {
    'stream/paleto/basemap/meta/*.ymap',
    'stream/paleto/basemap/meta/*.ymf',
    'stream/paleto/basemap/ybn/*.ybn',
    'stream/paleto/basemap/ydr/*.ydr',
    'stream/paleto/basemap/ydr/*.ydd',
    'stream/paleto/basemap/ymf/*.ymt',
    'stream/paleto/basemap/ynv/*.ynv',
    
    'stream/impound/ytd/*.ytd'
}
dependency '/assetpacks'