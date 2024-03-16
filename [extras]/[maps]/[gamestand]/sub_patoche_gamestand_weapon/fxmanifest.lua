fx_version 'cerulean'
lua54 'yes'
games { 'gta5' }

author 'Tiwabs'
description 'Add-on weapon generated using vWeaponsToolkit'

files {
	'meta/clip_sets.xml',
	'meta/weaponarchetype_twball.meta',
	'meta/weaponarchetype_airrifle.meta',
	'meta/weaponanimation_twball.meta',
	'meta/weaponanimation_airrifle.meta',
	'meta/pedpersonality.meta',
	'meta/weapon_twball.meta',
	'meta/weapon_airrifle.meta',
}

data_file 'WEAPON_METADATA_FILE' 'meta/weaponarchetype_twball.meta'
data_file 'WEAPON_METADATA_FILE' 'meta/weaponarchetype_airrifle.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'meta/weaponanimation_twball.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'meta/weaponanimation_airrifle.meta'
data_file 'PED_PERSONALITY_FILE' 'meta/pedpersonality.meta'
data_file 'WEAPONINFO_FILE' 'meta/weapon_twball.meta'
data_file 'WEAPONINFO_FILE' 'meta/weapon_airrifle.meta'
data_file 'CLIP_SETS_FILE' 'meta/clip_sets.xml'

client_script 'cl_weaponNames.lua'

escrow_ignore {
	'cl_weaponNames.lua'
}
dependency '/assetpacks'