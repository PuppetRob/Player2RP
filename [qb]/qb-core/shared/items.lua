QBShared = QBShared or {}
QBShared.Items = {
    -- WEAPONS
    -- Melee
    weapon_unarmed               = { name = 'weapon_unarmed', label = 'Fists', weight = 1000, type = 'weapon', ammotype = nil, image = 'placeholder.png', unique = true, useable = false, description = 'Fisticuffs' },
    weapon_dagger                = { name = 'weapon_dagger', label = 'Dagger', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_dagger.png', unique = true, useable = false, description = 'A short knife with a pointed and edged blade, used as a weapon' },
    weapon_bat                   = { name = 'weapon_bat', label = 'Bat', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_bat.png', unique = true, useable = false, description = 'Used for hitting a ball in sports (or other things)' },
    weapon_bottle                = { name = 'weapon_bottle', label = 'Broken Bottle', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_bottle.png', unique = true, useable = false, description = 'A broken bottle' },
    weapon_crowbar               = { name = 'weapon_crowbar', label = 'Crowbar', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_crowbar.png', unique = true, useable = false, description = 'An iron bar with a flattened end, used as a lever' },
    weapon_flashlight            = { name = 'weapon_flashlight', label = 'Flashlight', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_flashlight.png', unique = true, useable = false, description = 'A battery-operated portable light' },
    weapon_golfclub              = { name = 'weapon_golfclub', label = 'Golfclub', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_golfclub.png', unique = true, useable = false, description = 'A club used to hit the ball in golf' },
    weapon_hammer                = { name = 'weapon_hammer', label = 'Hammer', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_hammer.png', unique = true, useable = false, description = 'Used for jobs such as breaking things (legs) and driving in nails' },
    weapon_hatchet               = { name = 'weapon_hatchet', label = 'Hatchet', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_hatchet.png', unique = true, useable = false, description = 'A small axe with a short handle for use in one hand' },
    weapon_knuckle               = { name = 'weapon_knuckle', label = 'Knuckle', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_knuckle.png', unique = true, useable = false, description = 'A metal guard worn over the knuckles in fighting, especially to increase the effect of the blows' },
    weapon_knife                 = { name = 'weapon_knife', label = 'Knife', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_knife.png', unique = true, useable = false, description = 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon' },
    weapon_machete               = { name = 'weapon_machete', label = 'Machete', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_machete.png', unique = true, useable = false, description = 'A broad, heavy knife used as a weapon' },
    weapon_switchblade           = { name = 'weapon_switchblade', label = 'Switchblade', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_switchblade.png', unique = true, useable = false, description = 'A knife with a blade that springs out from the handle when a button is pressed' },
    weapon_nightstick            = { name = 'weapon_nightstick', label = 'Nightstick', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_nightstick.png', unique = true, useable = false, description = 'A police officer\'s club or billy' },
    weapon_wrench                = { name = 'weapon_wrench', label = 'Wrench', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_wrench.png', unique = true, useable = false, description = 'A tool used for gripping and turning nuts, bolts, pipes, etc' },
    weapon_battleaxe             = { name = 'weapon_battleaxe', label = 'Battle Axe', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_battleaxe.png', unique = true, useable = false, description = 'A large broad-bladed axe used in ancient warfare' },
    weapon_poolcue               = { name = 'weapon_poolcue', label = 'Poolcue', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_poolcue.png', unique = true, useable = false, description = 'A stick used to strike a ball, usually the cue ball (or other things)' },
    weapon_briefcase             = { name = 'weapon_briefcase', label = 'Briefcase', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_briefcase.png', unique = true, useable = false, description = 'A briefcase for storing important documents' },
    weapon_briefcase_02          = { name = 'weapon_briefcase_02', label = 'Suitcase', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_briefcase2.png', unique = true, useable = false, description = 'Wonderfull for nice vacation to Liberty City' },
    weapon_garbagebag            = { name = 'weapon_garbagebag', label = 'Garbage Bag', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_garbagebag.png', unique = true, useable = false, description = 'A garbage bag' },
    weapon_handcuffs             = { name = 'weapon_handcuffs', label = 'Handcuffs', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_handcuffs.png', unique = true, useable = false, description = 'A pair of lockable linked metal rings for securing a prisoner\'s wrists' },
    weapon_bread                 = { name = 'weapon_bread', label = 'Baquette', weight = 1000, type = 'weapon', ammotype = nil, image = 'baquette.png', unique = true, useable = false, description = 'Bread...?' },
    weapon_stone_hatchet         = { name = 'weapon_stone_hatchet', label = 'Stone Hatchet', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_stone_hatchet.png', unique = true, useable = true, description = 'Stone Hatchet' },
    weapon_candycane             = { name = 'weapon_candycane', label = 'Candy Cane', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_candycane', unique = true, useable = true, description = 'Candy Cane' },

    -- Handguns
    weapon_pistol                = { name = 'weapon_pistol', label = 'Walther P99', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_pistol.png', unique = true, useable = false, description = 'A small firearm designed to be held in one hand' },
    weapon_pistol_mk2            = { name = 'weapon_pistol_mk2', label = 'Pistol Mk II', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_pistol_mk2.png', unique = true, useable = false, description = 'An upgraded small firearm designed to be held in one hand' },
    weapon_combatpistol          = { name = 'weapon_combatpistol', label = 'Combat Pistol', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_combatpistol.png', unique = true, useable = false, description = 'A combat version small firearm designed to be held in one hand' },
    weapon_appistol              = { name = 'weapon_appistol', label = 'AP Pistol', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_appistol.png', unique = true, useable = false, description = 'A small firearm designed to be held in one hand that is automatic' },
    weapon_stungun               = { name = 'weapon_stungun', label = 'Taser', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_stungun.png', unique = true, useable = false, description = 'A weapon firing barbs attached by wires to batteries, causing temporary paralysis' },
    weapon_pistol50              = { name = 'weapon_pistol50', label = 'Pistol .50', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_pistol50.png', unique = true, useable = false, description = 'A .50 caliber firearm designed to be held with both hands' },
    weapon_snspistol             = { name = 'weapon_snspistol', label = 'SNS Pistol', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_snspistol.png', unique = true, useable = false, description = 'A very small firearm designed to be easily concealed' },
    weapon_heavypistol           = { name = 'weapon_heavypistol', label = 'Heavy Pistol', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_heavypistol.png', unique = true, useable = false, description = 'A hefty firearm designed to be held in one hand (or attempted)' },
    weapon_vintagepistol         = { name = 'weapon_vintagepistol', label = 'Vintage Pistol', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_vintagepistol.png', unique = true, useable = false, description = 'An antique firearm designed to be held in one hand' },
    weapon_flaregun              = { name = 'weapon_flaregun', label = 'Flare Gun', weight = 1000, type = 'weapon', ammotype = 'AMMO_FLARE', image = 'weapon_flaregun.png', unique = true, useable = false, description = 'A handgun for firing signal rockets' },
    weapon_marksmanpistol        = { name = 'weapon_marksmanpistol', label = 'Marksman Pistol', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_marksmanpistol.png', unique = true, useable = false, description = 'A very accurate small firearm designed to be held in one hand' },
    weapon_revolver              = { name = 'weapon_revolver', label = 'Revolver', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_revolver.png', unique = true, useable = false, description = 'A pistol with revolving chambers enabling several shots to be fired without reloading' },
    weapon_revolver_mk2          = { name = 'weapon_revolver_mk2', label = 'Violence', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_revolver_mk2.png', unique = true, useable = true, description = 'da Violence' },
    weapon_doubleaction          = { name = 'weapon_doubleaction', label = 'Double Action Revolver', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_doubleaction.png', unique = true, useable = true, description = 'Double Action Revolver' },
    weapon_snspistol_mk2         = { name = 'weapon_snspistol_mk2', label = 'SNS Pistol Mk II', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_snspistol_mk2.png', unique = true, useable = true, description = 'SNS Pistol MK2' },
    weapon_raypistol             = { name = 'weapon_raypistol', label = 'Up-n-Atomizer', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_raypistol.png', unique = true, useable = true, description = 'Weapon Raypistol' },
    weapon_ceramicpistol         = { name = 'weapon_ceramicpistol', label = 'Ceramic Pistol', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_ceramicpistol.png', unique = true, useable = true, description = 'Weapon Ceramicpistol' },
    weapon_navyrevolver          = { name = 'weapon_navyrevolver', label = 'Navy Revolver', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_navyrevolver.png', unique = true, useable = true, description = 'Weapon Navyrevolver' },
    weapon_gadgetpistol          = { name = 'weapon_gadgetpistol', label = 'Perico Pistol', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_gadgetpistol.png', unique = true, useable = true, description = 'Weapon Gadgetpistol' },
    weapon_pistolxm3             = { name = 'weapon_pistolxm3', label = 'Pistol XM3', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_pistolxm3.png', unique = true, useable = true, description = 'Pistol XM3' },

    -- Submachine Guns
    weapon_microsmg              = { name = 'weapon_microsmg', label = 'Micro SMG', weight = 1000, type = 'weapon', ammotype = 'AMMO_SMG', image = 'weapon_microsmg.png', unique = true, useable = false, description = 'A handheld light                                                                                                                                                                                                                                                                                                                                                            weight machine gun' },
    weapon_smg                   = { name = 'weapon_smg', label = 'SMG', weight = 1000, type = 'weapon', ammotype = 'AMMO_SMG', image = 'weapon_smg.png', unique = true, useable = false, description = 'A handheld light                                                                                                                                                                                                                                                                                                                                                                 weight machine gun' },
    weapon_smg_mk2               = { name = 'weapon_smg_mk2', label = 'SMG Mk II', weight = 1000, type = 'weapon', ammotype = 'AMMO_SMG', image = 'weapon_smg_mk2.png', unique = true, useable = true, description = 'SMG MK2' },
    weapon_assaultsmg            = { name = 'weapon_assaultsmg', label = 'Assault SMG', weight = 1000, type = 'weapon', ammotype = 'AMMO_SMG', image = 'weapon_assaultsmg.png', unique = true, useable = false, description = 'An assault version of a handheld light                                                                                                                                                                                                                                                                                                                                    weight machine gun' },
    weapon_combatpdw             = { name = 'weapon_combatpdw', label = 'Combat PDW', weight = 1000, type = 'weapon', ammotype = 'AMMO_SMG', image = 'weapon_combatpdw.png', unique = true, useable = false, description = 'A combat version of a handheld light                                                                                                                                                                                                                                                                                                                                       weight machine gun' },
    weapon_machinepistol         = { name = 'weapon_machinepistol', label = 'Tec-9', weight = 1000, type = 'weapon', ammotype = 'AMMO_PISTOL', image = 'weapon_machinepistol.png', unique = true, useable = false, description = 'A self-loading pistol capable of burst or fully automatic fire' },
    weapon_minismg               = { name = 'weapon_minismg', label = 'Mini SMG', weight = 1000, type = 'weapon', ammotype = 'AMMO_SMG', image = 'weapon_minismg.png', unique = true, useable = false, description = 'A mini handheld light                                                                                                                                                                                                                                                                                                                                                        weight machine gun' },
    weapon_raycarbine            = { name = 'weapon_raycarbine', label = 'Unholy Hellbringer', weight = 1000, type = 'weapon', ammotype = 'AMMO_SMG', image = 'weapon_raycarbine.png', unique = true, useable = true, description = 'Weapon Raycarbine' },

    -- Shotguns
    weapon_pumpshotgun           = { name = 'weapon_pumpshotgun', label = 'Pump Shotgun', weight = 1000, type = 'weapon', ammotype = 'AMMO_SHOTGUN', image = 'weapon_pumpshotgun.png', unique = true, useable = false, description = 'A pump-action smoothbore gun for firing small shot at short range' },
    weapon_sawnoffshotgun        = { name = 'weapon_sawnoffshotgun', label = 'Sawn-off Shotgun', weight = 1000, type = 'weapon', ammotype = 'AMMO_SHOTGUN', image = 'weapon_sawnoffshotgun.png', unique = true, useable = false, description = 'A sawn-off smoothbore gun for firing small shot at short range' },
    weapon_assaultshotgun        = { name = 'weapon_assaultshotgun', label = 'Assault Shotgun', weight = 1000, type = 'weapon', ammotype = 'AMMO_SHOTGUN', image = 'weapon_assaultshotgun.png', unique = true, useable = false, description = 'An assault version of asmoothbore gun for firing small shot at short range' },
    weapon_bullpupshotgun        = { name = 'weapon_bullpupshotgun', label = 'Bullpup Shotgun', weight = 1000, type = 'weapon', ammotype = 'AMMO_SHOTGUN', image = 'weapon_bullpupshotgun.png', unique = true, useable = false, description = 'A compact smoothbore gun for firing small shot at short range' },
    weapon_musket                = { name = 'weapon_musket', label = 'Musket', weight = 1000, type = 'weapon', ammotype = 'AMMO_SHOTGUN', image = 'weapon_musket.png', unique = true, useable = false, description = 'An infantryman\'s light gun with a long barrel, typically smooth-bored, muzzleloading, and fired from the shoulder' },
    weapon_heavyshotgun          = { name = 'weapon_heavyshotgun', label = 'Heavy Shotgun', weight = 1000, type = 'weapon', ammotype = 'AMMO_SHOTGUN', image = 'weapon_heavyshotgun.png', unique = true, useable = false, description = 'A large smoothbore gun for firing small shot at short range' },
    weapon_dbshotgun             = { name = 'weapon_dbshotgun', label = 'Double-barrel Shotgun', weight = 1000, type = 'weapon', ammotype = 'AMMO_SHOTGUN', image = 'weapon_dbshotgun.png', unique = true, useable = false, description = 'A shotgun with two parallel barrels, allowing two single shots to be fired in quick succession' },
    weapon_autoshotgun           = { name = 'weapon_autoshotgun', label = 'Auto Shotgun', weight = 1000, type = 'weapon', ammotype = 'AMMO_SHOTGUN', image = 'weapon_autoshotgun.png', unique = true, useable = false, description = 'A shotgun capable of rapid continous fire' },
    weapon_pumpshotgun_mk2       = { name = 'weapon_pumpshotgun_mk2', label = 'Pumpshotgun Mk II', weight = 1000, type = 'weapon', ammotype = 'AMMO_SHOTGUN', image = 'weapon_pumpshotgun_mk2.png', unique = true, useable = true, description = 'Pumpshotgun MK2' },
    weapon_combatshotgun         = { name = 'weapon_combatshotgun', label = 'Combat Shotgun', weight = 1000, type = 'weapon', ammotype = 'AMMO_SHOTGUN', image = 'weapon_combatshotgun.png', unique = true, useable = true, description = 'Weapon Combatshotgun' },

    -- Assault Rifles
    weapon_assaultrifle          = { name = 'weapon_assaultrifle', label = 'Assault Rifle', weight = 1000, type = 'weapon', ammotype = 'AMMO_RIFLE', image = 'weapon_assaultrifle.png', unique = true, useable = false, description = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use' },
    weapon_assaultrifle_mk2      = { name = 'weapon_assaultrifle_mk2', label = 'Assault Rifle Mk II', weight = 1000, type = 'weapon', ammotype = 'AMMO_RIFLE', image = 'weapon_assaultrifle_mk2.png', unique = true, useable = true, description = 'Assault Rifle MK2' },
    weapon_carbinerifle          = { name = 'weapon_carbinerifle', label = 'Carbine Rifle', weight = 1000, type = 'weapon', ammotype = 'AMMO_RIFLE', image = 'weapon_carbinerifle.png', unique = true, useable = false, description = 'A light                                                                                                                                                                                                                                                                                                                                                               weight automatic rifle' },
    weapon_carbinerifle_mk2      = { name = 'weapon_carbinerifle_mk2', label = 'Carbine Rifle Mk II', weight = 1000, type = 'weapon', ammotype = 'AMMO_RIFLE', image = 'weapon_carbinerifle_mk2.png', unique = true, useable = true, description = 'Carbine Rifle MK2' },
    weapon_advancedrifle         = { name = 'weapon_advancedrifle', label = 'Advanced Rifle', weight = 1000, type = 'weapon', ammotype = 'AMMO_RIFLE', image = 'weapon_advancedrifle.png', unique = true, useable = false, description = 'An assault version of a rapid-fire, magazine-fed automatic rifle designed for infantry use' },
    weapon_specialcarbine        = { name = 'weapon_specialcarbine', label = 'Special Carbine', weight = 1000, type = 'weapon', ammotype = 'AMMO_RIFLE', image = 'weapon_specialcarbine.png', unique = true, useable = false, description = 'An extremely versatile assault rifle for any combat situation' },
    weapon_bullpuprifle          = { name = 'weapon_bullpuprifle', label = 'Bullpup Rifle', weight = 1000, type = 'weapon', ammotype = 'AMMO_RIFLE', image = 'weapon_bullpuprifle.png', unique = true, useable = false, description = 'A compact automatic assault rifle' },
    weapon_compactrifle          = { name = 'weapon_compactrifle', label = 'Compact Rifle', weight = 1000, type = 'weapon', ammotype = 'AMMO_RIFLE', image = 'weapon_compactrifle.png', unique = true, useable = false, description = 'A compact version of an assault rifle' },
    weapon_specialcarbine_mk2    = { name = 'weapon_specialcarbine_mk2', label = 'Special Carbine Mk II', weight = 1000, type = 'weapon', ammotype = 'AMMO_RIFLE', image = 'weapon_specialcarbine_mk2.png', unique = true, useable = true, description = 'Weapon Wpecialcarbine MK2' },
    weapon_bullpuprifle_mk2      = { name = 'weapon_bullpuprifle_mk2', label = 'Bullpup Rifle Mk II', weight = 1000, type = 'weapon', ammotype = 'AMMO_RIFLE', image = 'weapon_bullpuprifle_mk2.png', unique = true, useable = true, description = 'Bull Puprifle MK2' },
    weapon_militaryrifle         = { name = 'weapon_militaryrifle', label = 'Military Rifle', weight = 1000, type = 'weapon', ammotype = 'AMMO_RIFLE', image = 'weapon_militaryrifle.png', unique = true, useable = true, description = 'Weapon Militaryrifle' },

    -- Light Machine Guns
    weapon_mg                    = { name = 'weapon_mg', label = 'Machinegun', weight = 1000, type = 'weapon', ammotype = 'AMMO_MG', image = 'weapon_mg.png', unique = true, useable = false, description = 'An automatic gun that fires bullets in rapid succession for as long as the trigger is pressed' },
    weapon_combatmg              = { name = 'weapon_combatmg', label = 'Combat MG', weight = 1000, type = 'weapon', ammotype = 'AMMO_MG', image = 'weapon_combatmg.png', unique = true, useable = false, description = 'A combat version of an automatic gun that fires bullets in rapid succession for as long as the trigger is pressed' },
    weapon_gusenberg             = { name = 'weapon_gusenberg', label = 'Thompson SMG', weight = 1000, type = 'weapon', ammotype = 'AMMO_MG', image = 'weapon_gusenberg.png', unique = true, useable = false, description = 'An automatic rifle commonly referred to as a tommy gun' },
    weapon_combatmg_mk2          = { name = 'weapon_combatmg_mk2', label = 'Combat MG Mk II', weight = 1000, type = 'weapon', ammotype = 'AMMO_MG', image = 'weapon_combatmg_mk2.png', unique = true, useable = true, description = 'Weapon Combatmg MK2' },

    -- Sniper Rifles
    weapon_sniperrifle           = { name = 'weapon_sniperrifle', label = 'Sniper Rifle', weight = 1000, type = 'weapon', ammotype = 'AMMO_SNIPER', image = 'weapon_sniperrifle.png', unique = true, useable = false, description = 'A high-precision, long-range rifle' },
    weapon_heavysniper           = { name = 'weapon_heavysniper', label = 'Heavy Sniper', weight = 1000, type = 'weapon', ammotype = 'AMMO_SNIPER', image = 'weapon_heavysniper.png', unique = true, useable = false, description = 'An upgraded high-precision, long-range rifle' },
    weapon_marksmanrifle         = { name = 'weapon_marksmanrifle', label = 'Marksman Rifle', weight = 1000, type = 'weapon', ammotype = 'AMMO_SNIPER', image = 'weapon_marksmanrifle.png', unique = true, useable = false, description = 'A very accurate single-fire rifle' },
    weapon_remotesniper          = { name = 'weapon_remotesniper', label = 'Remote Sniper', weight = 1000, type = 'weapon', ammotype = 'AMMO_SNIPER_REMOTE', image = 'weapon_remotesniper.png', unique = true, useable = false, description = 'A portable high-precision, long-range rifle' },
    weapon_heavysniper_mk2       = { name = 'weapon_heavysniper_mk2', label = 'Heavy Sniper Mk II', weight = 1000, type = 'weapon', ammotype = 'AMMO_SNIPER', image = 'weapon_heavysniper_mk2.png', unique = true, useable = true, description = 'Weapon Heavysniper MK2' },
    weapon_marksmanrifle_mk2     = { name = 'weapon_marksmanrifle_mk2', label = 'Marksman Rifle Mk II', weight = 1000, type = 'weapon', ammotype = 'AMMO_SNIPER', image = 'weapon_marksmanrifle_mk2.png', unique = true, useable = true, description = 'Weapon Marksmanrifle MK2' },

    -- Heavy Weapons
    weapon_rpg                   = { name = 'weapon_rpg', label = 'RPG', weight = 1000, type = 'weapon', ammotype = 'AMMO_RPG', image = 'weapon_rpg.png', unique = true, useable = false, description = 'A rocket-propelled grenade launcher' },
    weapon_grenadelauncher       = { name = 'weapon_grenadelauncher', label = 'Grenade Launcher', weight = 1000, type = 'weapon', ammotype = 'AMMO_GRENADELAUNCHER', image = 'weapon_grenadelauncher.png', unique = true, useable = false, description = 'A weapon that fires a specially-designed large-caliber projectile, often with an explosive, smoke or gas warhead' },
    weapon_grenadelauncher_smoke = { name = 'weapon_grenadelauncher_smoke', label = 'Smoke Grenade Launcher', weight = 1000, type = 'weapon', ammotype = 'AMMO_GRENADELAUNCHER', image = 'weapon_smokegrenade.png', unique = true, useable = false, description = 'A bomb that produces a lot of smoke when it explodes' },
    weapon_minigun               = { name = 'weapon_minigun', label = 'Minigun', weight = 1000, type = 'weapon', ammotype = 'AMMO_MINIGUN', image = 'weapon_minigun.png', unique = true, useable = false, description = 'A portable machine gun consisting of a rotating cluster of six barrels and capable of variable rates of fire of up to 6,000 rounds per minute' },
    weapon_firework              = { name = 'weapon_firework', label = 'Firework Launcher', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_firework.png', unique = true, useable = false, description = 'A device containing gunpowder and other combustible chemicals that causes a spectacular explosion when ignited' },
    weapon_railgun               = { name = 'weapon_railgun', label = 'Railgun', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_railgun.png', unique = true, useable = false, description = 'A weapon that uses electromagnetic force to launch high velocity projectiles' },
    weapon_railgunxm3            = { name = 'weapon_railgunxm3', label = 'Railgun XM3', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_railgunxm3.png', unique = true, useable = false, description = 'A weapon that uses electromagnetic force to launch high velocity projectiles' },
    weapon_hominglauncher        = { name = 'weapon_hominglauncher', label = 'Homing Launcher', weight = 1000, type = 'weapon', ammotype = 'AMMO_STINGER', image = 'weapon_hominglauncher.png', unique = true, useable = false, description = 'A weapon fitted with an electronic device that enables it to find and hit a target' },
    weapon_compactlauncher       = { name = 'weapon_compactlauncher', label = 'Compact Launcher', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_compactlauncher.png', unique = true, useable = false, description = 'A compact grenade launcher' },
    weapon_rayminigun            = { name = 'weapon_rayminigun', label = 'Widowmaker', weight = 1000, type = 'weapon', ammotype = 'AMMO_MINIGUN', image = 'weapon_rayminigun.png', unique = true, useable = true, description = 'Weapon Rayminigun' },

    -- Throwables
    weapon_grenade               = { name = 'weapon_grenade', label = 'Grenade', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_grenade.png', unique = true, useable = false, description = 'A handheld throwable bomb' },
    weapon_bzgas                 = { name = 'weapon_bzgas', label = 'BZ Gas', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_bzgas.png', unique = true, useable = false, description = 'A cannister of gas that causes extreme pain' },
    weapon_molotov               = { name = 'weapon_molotov', label = 'Molotov', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_molotov.png', unique = true, useable = false, description = 'A crude bomb made of a bottle filled with a flammable liquid and fitted with a wick for lighting' },
    weapon_stickybomb            = { name = 'weapon_stickybomb', label = 'C4', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_stickybomb.png', unique = true, useable = false, description = 'An explosive charge covered with an adhesive that when thrown against an object sticks until it explodes' },
    weapon_proxmine              = { name = 'weapon_proxmine', label = 'Proxmine Grenade', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_proximitymine.png', unique = true, useable = false, description = 'A bomb placed on the ground that detonates when going within its proximity' },
    weapon_snowball              = { name = 'weapon_snowball', label = 'Snowball', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_snowball.png', unique = true, useable = false, description = 'A ball of packed snow, especially one made for throwing at other people for fun' },
    weapon_pipebomb              = { name = 'weapon_pipebomb', label = 'Pipe Bomb', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_pipebomb.png', unique = true, useable = false, description = 'A homemade bomb, the components of which are contained in a pipe' },
    weapon_ball                  = { name = 'weapon_ball', label = 'Ball', weight = 1000, type = 'weapon', ammotype = 'AMMO_BALL', image = 'weapon_ball.png', unique = true, useable = false, description = 'A solid or hollow spherical or egg-shaped object that is kicked, thrown, or hit in a game' },
    weapon_smokegrenade          = { name = 'weapon_smokegrenade', label = 'Smoke Grenade', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_c4.png', unique = true, useable = false, description = 'An explosive charge that can be remotely detonated' },
    weapon_flare                 = { name = 'weapon_flare', label = 'Flare pistol', weight = 1000, type = 'weapon', ammotype = 'AMMO_FLARE', image = 'weapon_flare.png', unique = true, useable = false, description = 'A small pyrotechnic devices used for illumination and signalling' },

    -- Miscellaneous
    weapon_petrolcan             = { name = 'weapon_petrolcan', label = 'Petrol Can', weight = 1000, type = 'weapon', ammotype = 'AMMO_PETROLCAN', image = 'weapon_petrolcan.png', unique = true, useable = false, description = 'A robust liquid container made from pressed steel' },
    weapon_fireextinguisher      = { name = 'weapon_fireextinguisher', label = 'Fire Extinguisher', weight = 1000, type = 'weapon', ammotype = nil, image = 'weapon_fireextinguisher.png', unique = true, useable = false, description = 'A portable device that discharges a jet of water, foam, gas, or other material to extinguish a fire' },
    weapon_hazardcan             = { name = 'weapon_hazardcan', label = 'Hazardous Jerry Can', weight = 1000, type = 'weapon', ammotype = 'AMMO_PETROLCAN', image = 'weapon_hazardcan.png', unique = true, useable = true, description = 'Weapon Hazardcan' },

    -- Weapon Attachments
    clip_attachment              = { name = 'clip_attachment', label = 'Clip', weight = 1000, type = 'item', image = 'clip_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A clip for a weapon' },
    drum_attachment              = { name = 'drum_attachment', label = 'Drum', weight = 1000, type = 'item', image = 'drum_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A drum for a weapon' },
    flashlight_attachment        = { name = 'flashlight_attachment', label = 'Flashlight', weight = 1000, type = 'item', image = 'flashlight_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A flashlight for a weapon' },
    suppressor_attachment        = { name = 'suppressor_attachment', label = 'Suppressor', weight = 1000, type = 'item', image = 'suppressor_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A suppressor for a weapon' },
    smallscope_attachment        = { name = 'smallscope_attachment', label = 'Small Scope', weight = 1000, type = 'item', image = 'smallscope_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A small scope for a weapon' },
    medscope_attachment          = { name = 'medscope_attachment', label = 'Medium Scope', weight = 1000, type = 'item', image = 'medscope_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A medium scope for a weapon' },
    largescope_attachment        = { name = 'largescope_attachment', label = 'Large Scope', weight = 1000, type = 'item', image = 'largescope_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A large scope for a weapon' },
    holoscope_attachment         = { name = 'holoscope_attachment', label = 'Holo Scope', weight = 1000, type = 'item', image = 'holoscope_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A holo scope for a weapon' },
    advscope_attachment          = { name = 'advscope_attachment', label = 'Advanced Scope', weight = 1000, type = 'item', image = 'advscope_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'An advanced scope for a weapon' },
    nvscope_attachment           = { name = 'nvscope_attachment', label = 'Night Vision Scope', weight = 1000, type = 'item', image = 'nvscope_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A night vision scope for a weapon' },
    thermalscope_attachment      = { name = 'thermalscope_attachment', label = 'Thermal Scope', weight = 1000, type = 'item', image = 'thermalscope_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A thermal scope for a weapon' },
    flat_muzzle_brake            = { name = 'flat_muzzle_brake', label = 'Flat Muzzle Brake', weight = 1000, type = 'item', image = 'flat_muzzle_brake.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A muzzle brake for a weapon' },
    tactical_muzzle_brake        = { name = 'tactical_muzzle_brake', label = 'Tactical Muzzle Brake', weight = 1000, type = 'item', image = 'tactical_muzzle_brake.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A muzzle brakee for a weapon' },
    fat_end_muzzle_brake         = { name = 'fat_end_muzzle_brake', label = 'Fat End Muzzle Brake', weight = 1000, type = 'item', image = 'fat_end_muzzle_brake.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A muzzle brake for a weapon' },
    precision_muzzle_brake       = { name = 'precision_muzzle_brake', label = 'Precision Muzzle Brake', weight = 1000, type = 'item', image = 'precision_muzzle_brake.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A muzzle brake for a weapon' },
    heavy_duty_muzzle_brake      = { name = 'heavy_duty_muzzle_brake', label = 'HD Muzzle Brake', weight = 1000, type = 'item', image = 'heavy_duty_muzzle_brake.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A muzzle brake for a weapon' },
    slanted_muzzle_brake         = { name = 'slanted_muzzle_brake', label = 'Slanted Muzzle Brake', weight = 1000, type = 'item', image = 'slanted_muzzle_brake.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A muzzle brake for a weapon' },
    split_end_muzzle_brake       = { name = 'split_end_muzzle_brake', label = 'Split End Muzzle Brake', weight = 1000, type = 'item', image = 'split_end_muzzle_brake.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A muzzle brake for a weapon' },
    squared_muzzle_brake         = { name = 'squared_muzzle_brake', label = 'Squared Muzzle Brake', weight = 1000, type = 'item', image = 'squared_muzzle_brake.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A muzzle brake for a weapon' },
    bellend_muzzle_brake         = { name = 'bellend_muzzle_brake', label = 'Bellend Muzzle Brake', weight = 1000, type = 'item', image = 'bellend_muzzle_brake.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A muzzle brake for a weapon' },
    barrel_attachment            = { name = 'barrel_attachment', label = 'Barrel', weight = 1000, type = 'item', image = 'barrel_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A barrel for a weapon' },
    grip_attachment              = { name = 'grip_attachment', label = 'Grip', weight = 1000, type = 'item', image = 'grip_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A grip for a weapon' },
    comp_attachment              = { name = 'comp_attachment', label = 'Compensator', weight = 1000, type = 'item', image = 'comp_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A compensator for a weapon' },
    luxuryfinish_attachment      = { name = 'luxuryfinish_attachment', label = 'Luxury Finish', weight = 1000, type = 'item', image = 'luxuryfinish_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A luxury finish for a weapon' },
    digicamo_attachment          = { name = 'digicamo_attachment', label = 'Digital Camo', weight = 1000, type = 'item', image = 'digicamo_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A digital camo for a weapon' },
    brushcamo_attachment         = { name = 'brushcamo_attachment', label = 'Brushstroke Camo', weight = 1000, type = 'item', image = 'brushcamo_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A brushstroke camo for a weapon' },
    woodcamo_attachment          = { name = 'woodcamo_attachment', label = 'Woodland Camo', weight = 1000, type = 'item', image = 'woodcamo_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A woodland camo for a weapon' },
    skullcamo_attachment         = { name = 'skullcamo_attachment', label = 'Skull Camo', weight = 1000, type = 'item', image = 'skullcamo_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A skull camo for a weapon' },
    sessantacamo_attachment      = { name = 'sessantacamo_attachment', label = 'Sessanta Nove Camo', weight = 1000, type = 'item', image = 'sessantacamo_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A sessanta nove camo for a weapon' },
    perseuscamo_attachment       = { name = 'perseuscamo_attachment', label = 'Perseus Camo', weight = 1000, type = 'item', image = 'perseuscamo_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A perseus camo for a weapon' },
    leopardcamo_attachment       = { name = 'leopardcamo_attachment', label = 'Leopard Camo', weight = 1000, type = 'item', image = 'leopardcamo_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A leopard camo for a weapon' },
    zebracamo_attachment         = { name = 'zebracamo_attachment', label = 'Zebra Camo', weight = 1000, type = 'item', image = 'zebracamo_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A zebra camo for a weapon' },
    geocamo_attachment           = { name = 'geocamo_attachment', label = 'Geometric Camo', weight = 1000, type = 'item', image = 'geocamo_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A geometric camo for a weapon' },
    boomcamo_attachment          = { name = 'boomcamo_attachment', label = 'Boom Camo', weight = 1000, type = 'item', image = 'boomcamo_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A boom camo for a weapon' },
    patriotcamo_attachment       = { name = 'patriotcamo_attachment', label = 'Patriot Camo', weight = 1000, type = 'item', image = 'patriotcamo_attachment.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A patriot camo for a weapon' },

    -- Weapon Tints
    weapontint_0                 = { name = 'weapontint_0', label = 'Default Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Default/Black Weapon Tint' },
    weapontint_1                 = { name = 'weapontint_1', label = 'Green Tint', weight = 1000, type = 'item', image = 'weapontint_green.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Green Weapon Tint' },
    weapontint_2                 = { name = 'weapontint_2', label = 'Gold Tint', weight = 1000, type = 'item', image = 'weapontint_gold.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Gold Weapon Tint' },
    weapontint_3                 = { name = 'weapontint_3', label = 'Pink Tint', weight = 1000, type = 'item', image = 'weapontint_pink.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Pink Weapon Tint' },
    weapontint_4                 = { name = 'weapontint_4', label = 'Army Tint', weight = 1000, type = 'item', image = 'weapontint_army.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Army Weapon Tint' },
    weapontint_5                 = { name = 'weapontint_5', label = 'LSPD Tint', weight = 1000, type = 'item', image = 'weapontint_lspd.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'LSPD Weapon Tint' },
    weapontint_6                 = { name = 'weapontint_6', label = 'Orange Tint', weight = 1000, type = 'item', image = 'weapontint_orange.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Orange Weapon Tint' },
    weapontint_7                 = { name = 'weapontint_7', label = 'Platinum Tint', weight = 1000, type = 'item', image = 'weapontint_plat.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Platinum Weapon Tint' },
    weapontint_mk2_0             = { name = 'weapontint_mk2_0', label = 'Classic Black Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Classic Black Weapon Tint for MK2 Weapons' },
    weapontint_mk2_1             = { name = 'weapontint_mk2_1', label = 'Classic Gray Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Classic Gray Weapon Tint for MK2 Weapons' },
    weapontint_mk2_2             = { name = 'weapontint_mk2_2', label = 'Classic Two-Tone Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Classic Two-Tone Weapon Tint for MK2 Weapons' },
    weapontint_mk2_3             = { name = 'weapontint_mk2_3', label = 'Classic White Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Classic White Weapon Tint for MK2 Weapons' },
    weapontint_mk2_4             = { name = 'weapontint_mk2_4', label = 'Classic Beige Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Classic Beige Weapon Tint for MK2 Weapons' },
    weapontint_mk2_5             = { name = 'weapontint_mk2_5', label = 'Classic Green Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Classic Green Weapon Tint for MK2 Weapons' },
    weapontint_mk2_6             = { name = 'weapontint_mk2_6', label = 'Classic Blue Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Classic Blue Weapon Tint for MK2 Weapons' },
    weapontint_mk2_7             = { name = 'weapontint_mk2_7', label = 'Classic Earth Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Classic Earth Weapon Tint for MK2 Weapons' },
    weapontint_mk2_8             = { name = 'weapontint_mk2_8', label = 'Classic Brown & Black Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Classic Brown & Black Weapon Tint for MK2 Weapons' },
    weapontint_mk2_9             = { name = 'weapontint_mk2_9', label = 'Red Contrast Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Red Contrast Weapon Tint for MK2 Weapons' },
    weapontint_mk2_10            = { name = 'weapontint_mk2_10', label = 'Blue Contrast Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Blue Contrast Weapon Tint for MK2 Weapons' },
    weapontint_mk2_11            = { name = 'weapontint_mk2_11', label = 'Yellow Contrast Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Yellow Contrast Weapon Tint for MK2 Weapons' },
    weapontint_mk2_12            = { name = 'weapontint_mk2_12', label = 'Orange Contrast Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Orange Contrast Weapon Tint for MK2 Weapons' },
    weapontint_mk2_13            = { name = 'weapontint_mk2_13', label = 'Bold Pink Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Bold Pink Weapon Tint for MK2 Weapons' },
    weapontint_mk2_14            = { name = 'weapontint_mk2_14', label = 'Bold Purple & Yellow Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Bold Purple & Yellow Weapon Tint for MK2 Weapons' },
    weapontint_mk2_15            = { name = 'weapontint_mk2_15', label = 'Bold Orange Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Bold Orange Weapon Tint for MK2 Weapons' },
    weapontint_mk2_16            = { name = 'weapontint_mk2_16', label = 'Bold Green & Purple Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Bold Green & Purple Weapon Tint for MK2 Weapons' },
    weapontint_mk2_17            = { name = 'weapontint_mk2_17', label = 'Bold Red Features Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Bold Red Features Weapon Tint for MK2 Weapons' },
    weapontint_mk2_18            = { name = 'weapontint_mk2_18', label = 'Bold Green Features Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Bold Green Features Weapon Tint for MK2 Weapons' },
    weapontint_mk2_19            = { name = 'weapontint_mk2_19', label = 'Bold Cyan Features Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Bold Cyan Features Weapon Tint for MK2 Weapons' },
    weapontint_mk2_20            = { name = 'weapontint_mk2_20', label = 'Bold Yellow Features Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Bold Yellow Features Weapon Tint for MK2 Weapons' },
    weapontint_mk2_21            = { name = 'weapontint_mk2_21', label = 'Bold Red & White Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Bold Red & White Weapon Tint for MK2 Weapons' },
    weapontint_mk2_22            = { name = 'weapontint_mk2_22', label = 'Bold Blue & White Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Bold Blue & White Weapon Tint for MK2 Weapons' },
    weapontint_mk2_23            = { name = 'weapontint_mk2_23', label = 'Metallic Gold Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Metallic Gold Weapon Tint for MK2 Weapons' },
    weapontint_mk2_24            = { name = 'weapontint_mk2_24', label = 'Metallic Platinum Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Metallic Platinum Weapon Tint for MK2 Weapons' },
    weapontint_mk2_25            = { name = 'weapontint_mk2_25', label = 'Metallic Gray & Lilac Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Metallic Gray & Lilac Weapon Tint for MK2 Weapons' },
    weapontint_mk2_26            = { name = 'weapontint_mk2_26', label = 'Metallic Purple & Lime Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Metallic Purple & Lime Weapon Tint for MK2 Weapons' },
    weapontint_mk2_27            = { name = 'weapontint_mk2_27', label = 'Metallic Red Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Metallic Red Weapon Tint for MK2 Weapons' },
    weapontint_mk2_28            = { name = 'weapontint_mk2_28', label = 'Metallic Green Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Metallic Green Weapon Tint for MK2 Weapons' },
    weapontint_mk2_29            = { name = 'weapontint_mk2_29', label = 'Metallic Blue Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Metallic Blue Weapon Tint for MK2 Weapons' },
    weapontint_mk2_30            = { name = 'weapontint_mk2_30', label = 'Metallic White & Aqua Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Metallic White & Aqua Weapon Tint for MK2 Weapons' },
    weapontint_mk2_31            = { name = 'weapontint_mk2_31', label = 'Metallic Orange & Yellow Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Metallic Orange & Yellow Weapon Tint for MK2 Weapons' },
    weapontint_mk2_32            = { name = 'weapontint_mk2_32', label = 'Metallic Red and Yellow Tint', weight = 1000, type = 'item', image = 'weapontint_black.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Metallic Red and Yellow Weapon Tint for MK2 Weapons' },
    -- ITEMS

    -- Ammo ITEMS
    pistol_ammo                  = { name = 'pistol_ammo', label = 'Pistol ammo', weight = 200, type = 'item', image = 'pistol_ammo.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Ammo for Pistols' },
    rifle_ammo                   = { name = 'rifle_ammo', label = 'Rifle ammo', weight = 1000, type = 'item', image = 'rifle_ammo.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Ammo for Rifles' },
    smg_ammo                     = { name = 'smg_ammo', label = 'SMG ammo', weight = 500, type = 'item', image = 'smg_ammo.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Ammo for Sub Machine Guns' },
    shotgun_ammo                 = { name = 'shotgun_ammo', label = 'Shotgun ammo', weight = 500, type = 'item', image = 'shotgun_ammo.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Ammo for Shotguns' },
    mg_ammo                      = { name = 'mg_ammo', label = 'MG ammo', weight = 1000, type = 'item', image = 'mg_ammo.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Ammo for Machine Guns' },
    snp_ammo                     = { name = 'snp_ammo', label = 'Sniper ammo', weight = 1000, type = 'item', image = 'rifle_ammo.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Ammo for Sniper Rifles' },
    emp_ammo                     = { name = 'emp_ammo', label = 'EMP Ammo', weight = 200, type = 'item', image = 'emp_ammo.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Ammo for EMP Launcher' },

    -- Card ITEMS
    id_card                      = { name = 'id_card', label = 'ID Card', weight = 0, type = 'item', image = 'id_card.png', unique = true, useable = true, shouldClose = false, combinable = nil, description = 'A card containing all your information to identify yourself' },
    driver_license               = { name = 'driver_license', label = 'Drivers License', weight = 0, type = 'item', image = 'driver_license.png', unique = true, useable = true, shouldClose = false, combinable = nil, description = 'Permit to show you can drive a vehicle' },
    lawyerpass                   = { name = 'lawyerpass', label = 'Lawyer Pass', weight = 0, type = 'item', image = 'lawyerpass.png', unique = true, useable = true, shouldClose = false, combinable = nil, description = 'Pass exclusive to lawyers to show they can represent a suspect' },
    weaponlicense                = { name = 'weaponlicense', label = 'Weapon License', weight = 0, type = 'item', image = 'weapon_license.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Weapon License' },
    bank_card                    = { name = 'bank_card', label = 'Bank Card', weight = 0, type = 'item', image = 'bank_card.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Used to access ATM' },
    security_card_01             = { name = 'security_card_01', label = 'Security Card A', weight = 0, type = 'item', image = 'security_card_01.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A security card... I wonder what it goes to' },
    security_card_02             = { name = 'security_card_02', label = 'Security Card B', weight = 0, type = 'item', image = 'security_card_02.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A security card... I wonder what it goes to' },

    -- Eat ITEMS
    tosti                        = { name = 'tosti', label = 'Grilled Cheese Sandwich', weight = 200, type = 'item', image = 'tosti.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Nice to eat' },
    twerks_candy                 = { name = 'twerks_candy', label = 'Twerks', weight = 100, type = 'item', image = 'twerks_candy.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Some delicious candy :O' },
    snikkel_candy                = { name = 'snikkel_candy', label = 'Snikkel', weight = 100, type = 'item', image = 'snikkel_candy.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Some delicious candy :O' },
    sandwich                     = { name = 'sandwich', label = 'Sandwich', weight = 200, type = 'item', image = 'sandwich.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Nice bread for your stomach' },

    -- Drink ITEMS
    water_bottle                 = { name = 'water_bottle', label = 'Bottle of Water', weight = 500, type = 'item', image = 'water_bottle.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'For all the thirsty out there' },
    coffee                       = { name = 'coffee', label = 'Coffee', weight = 200, type = 'item', image = 'coffee.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Pump 4 Caffeine' },
    kurkakola                    = { name = 'kurkakola', label = 'Cola', weight = 500, type = 'item', image = 'cola.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'For all the thirsty out there' },

    -- Alcohol
    beer                         = { name = 'beer', label = 'Beer', weight = 500, type = 'item', image = 'beer.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Nothing like a good cold beer!' },
    whiskey                      = { name = 'whiskey', label = 'Whiskey', weight = 500, type = 'item', image = 'whiskey.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'For all the thirsty out there' },
    vodka                        = { name = 'vodka', label = 'Vodka', weight = 500, type = 'item', image = 'vodka.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'For all the thirsty out there' },
    grape                        = { name = 'grape', label = 'Grape', weight = 100, type = 'item', image = 'grape.png', unique = false, useable = true, shouldClose = false, combinable = nil, description = 'Mmmmh yummie, grapes' },
    wine                         = { name = 'wine', label = 'Wine', weight = 300, type = 'item', image = 'wine.png', unique = false, useable = true, shouldClose = false, combinable = nil, description = 'Some good wine to drink on a fine evening' },
    grapejuice                   = { name = 'grapejuice', label = 'Grape Juice', weight = 200, type = 'item', image = 'grapejuice.png', unique = false, useable = true, shouldClose = false, combinable = nil, description = 'Grape juice is said to be healthy' },

    -- Drugs
    joint                        = { name = 'joint', label = 'Joint', weight = 0, type = 'item', image = 'joint.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Sidney would be very proud at you' },
    cokebaggy                    = { name = 'cokebaggy', label = 'Bag of Coke', weight = 0, type = 'item', image = 'cocaine_baggy.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'To get happy real quick' },
    crack_baggy                  = { name = 'crack_baggy', label = 'Bag of Crack', weight = 0, type = 'item', image = 'crack_baggy.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'To get happy faster' },
    xtcbaggy                     = { name = 'xtcbaggy', label = 'Bag of XTC', weight = 0, type = 'item', image = 'xtc_baggy.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Pop those pills baby' },
    coke_brick                   = { name = 'coke_brick', label = 'Coke Brick', weight = 1000, type = 'item', image = 'coke_brick.png', unique = true, useable = false, shouldClose = true, combinable = nil, description = 'Heavy package of cocaine, mostly used for deals and takes a lot of space' },
    weed_brick                   = { name = 'weed_brick', label = 'Weed Brick', weight = 1000, type = 'item', image = 'weed_brick.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = '1KG Weed Brick to sell to large customers.' },
    coke_small_brick             = { name = 'coke_small_brick', label = 'Coke Package', weight = 350, type = 'item', image = 'coke_small_brick.png', unique = true, useable = false, shouldClose = true, combinable = nil, description = 'Small package of cocaine, mostly used for deals and takes a lot of space' },
    oxy                          = { name = 'oxy', label = 'Prescription Oxy', weight = 0, type = 'item', image = 'oxy.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'The Label Has Been Ripped Off' },
    meth                         = { name = 'meth', label = 'Meth', weight = 100, type = 'item', image = 'meth_baggy.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A baggie of Meth' },
    rolling_paper                = { name = 'rolling_paper', label = 'Rolling Paper', weight = 0, type = 'item', image = 'rolling_paper.png', unique = false, useable = false, shouldClose = true, combinable = { accept = { 'weed_whitewidow', 'weed_skunk', 'weed_purplehaze', 'weed_ogkush', 'weed_amnesia', 'weed_ak47' }, reward = 'joint', anim = { dict = 'anim@amb@business@weed@weed_inspecting_high_dry@', lib = 'weed_inspecting_high_base_inspector', text = 'Rolling joint', timeOut = 5000, } }, description = 'Paper made specifically for encasing and smoking tobacco or cannabis.' },

    -- Seed And Weed
    weed_whitewidow              = { name = 'weed_whitewidow', label = 'White Widow 2g', weight = 200, type = 'item', image = 'weed_baggy.png', unique = false, useable = true, shouldClose = false, combinable = nil, description = 'A weed bag with 2g White Widow' },
    weed_skunk                   = { name = 'weed_skunk', label = 'Skunk 2g', weight = 200, type = 'item', image = 'weed_baggy.png', unique = false, useable = true, shouldClose = false, combinable = nil, description = 'A weed bag with 2g Skunk' },
    weed_purplehaze              = { name = 'weed_purplehaze', label = 'Purple Haze 2g', weight = 200, type = 'item', image = 'weed_baggy.png', unique = false, useable = true, shouldClose = false, combinable = nil, description = 'A weed bag with 2g Purple Haze' },
    weed_ogkush                  = { name = 'weed_ogkush', label = 'OGKush 2g', weight = 200, type = 'item', image = 'weed_baggy.png', unique = false, useable = true, shouldClose = false, combinable = nil, description = 'A weed bag with 2g OG Kush' },
    weed_amnesia                 = { name = 'weed_amnesia', label = 'Amnesia 2g', weight = 200, type = 'item', image = 'weed_baggy.png', unique = false, useable = true, shouldClose = false, combinable = nil, description = 'A weed bag with 2g Amnesia' },
    weed_ak47                    = { name = 'weed_ak47', label = 'AK47 2g', weight = 200, type = 'item', image = 'weed_baggy.png', unique = false, useable = true, shouldClose = false, combinable = nil, description = 'A weed bag with 2g AK47' },
    weed_whitewidow_seed         = { name = 'weed_whitewidow_seed', label = 'White Widow Seed', weight = 0, type = 'item', image = 'weed_seed.png', unique = false, useable = true, shouldClose = false, combinable = nil, description = 'A weed seed of White Widow' },
    weed_skunk_seed              = { name = 'weed_skunk_seed', label = 'Skunk Seed', weight = 0, type = 'item', image = 'weed_seed.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A weed seed of Skunk' },
    weed_purplehaze_seed         = { name = 'weed_purplehaze_seed', label = 'Purple Haze Seed', weight = 0, type = 'item', image = 'weed_seed.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A weed seed of Purple Haze' },
    weed_ogkush_seed             = { name = 'weed_ogkush_seed', label = 'OGKush Seed', weight = 0, type = 'item', image = 'weed_seed.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A weed seed of OG Kush' },
    weed_amnesia_seed            = { name = 'weed_amnesia_seed', label = 'Amnesia Seed', weight = 0, type = 'item', image = 'weed_seed.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A weed seed of Amnesia' },
    weed_ak47_seed               = { name = 'weed_ak47_seed', label = 'AK47 Seed', weight = 0, type = 'item', image = 'weed_seed.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A weed seed of AK47' },
    empty_weed_bag               = { name = 'empty_weed_bag', label = 'Empty Weed Bag', weight = 0, type = 'item', image = 'weed_baggy_empty.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A small empty bag' },
    weed_nutrition               = { name = 'weed_nutrition', label = 'Plant Fertilizer', weight = 2000, type = 'item', image = 'weed_nutrition.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Plant nutrition' },

    -- Material
    plastic                      = { name = 'plastic', label = 'Plastic', weight = 100, type = 'item', image = 'plastic.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'RECYCLE! - Greta Thunberg 2019' },
    metalscrap                   = { name = 'metalscrap', label = 'Metal Scrap', weight = 100, type = 'item', image = 'metalscrap.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'You can probably make something nice out of this' },
    copper                       = { name = 'copper', label = 'Copper', weight = 100, type = 'item', image = 'copper.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'Nice piece of metal that you can probably use for something' },
    aluminum                     = { name = 'aluminum', label = 'Aluminium', weight = 100, type = 'item', image = 'aluminum.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'Nice piece of metal that you can probably use for something' },
    aluminumoxide                = { name = 'aluminumoxide', label = 'Aluminium Powder', weight = 100, type = 'item', image = 'aluminumoxide.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'Some powder to mix with' },
    iron                         = { name = 'iron', label = 'Iron', weight = 100, type = 'item', image = 'iron.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'Handy piece of metal that you can probably use for something' },
    ironoxide                    = { name = 'ironoxide', label = 'Iron Powder', weight = 100, type = 'item', image = 'ironoxide.png', unique = false, useable = false, shouldClose = false, combinable = { accept = { 'aluminumoxide' }, reward = 'thermite', anim = { dict = 'anim@amb@business@weed@weed_inspecting_high_dry@', lib = 'weed_inspecting_high_base_inspector', text = 'Mixing powder..', timeOut = 10000 } }, description = 'Some powder to mix with.' },
    steel                        = { name = 'steel', label = 'Steel', weight = 100, type = 'item', image = 'steel.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'Nice piece of metal that you can probably use for something' },
    rubber                       = { name = 'rubber', label = 'Rubber', weight = 100, type = 'item', image = 'rubber.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'Rubber, I believe you can make your own rubber ducky with it :D' },
    glass                        = { name = 'glass', label = 'Glass', weight = 100, type = 'item', image = 'glass.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'It is very fragile, watch out' },

    -- Tools
    lockpick                     = { name = 'lockpick', label = 'Lockpick', weight = 300, type = 'item', image = 'lockpick.png', unique = false, useable = true, shouldClose = true, combinable = { accept = { 'screwdriverset' }, reward = 'advancedlockpick', anim = { dict = 'anim@amb@business@weed@weed_inspecting_high_dry@', lib = 'weed_inspecting_high_base_inspector', text = 'Crafting lockpick', timeOut = 7500, } }, description = 'Very useful if you lose your keys a lot.. or if you want to use it for something else...' },
    advancedlockpick             = { name = 'advancedlockpick', label = 'Advanced Lockpick', weight = 500, type = 'item', image = 'advancedlockpick.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'If you lose your keys a lot this is very useful... Also useful to open your beers' },
    electronickit                = { name = 'electronickit', label = 'Electronic Kit', weight = 100, type = 'item', image = 'electronickit.png', unique = false, useable = true, shouldClose = true, combinable = { accept = { 'gatecrack' }, reward = 'trojan_usb', anim = nil }, description = 'If you\'ve always wanted to build a robot you can maybe start here. Maybe you\'ll be the new Elon Musk?' },
    gatecrack                    = { name = 'gatecrack', label = 'Gatecrack', weight = 0, type = 'item', image = 'usb_device.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Handy software to tear down some fences' },
    thermite                     = { name = 'thermite', label = 'Thermite', weight = 1000, type = 'item', image = 'thermite.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Sometimes you\'d wish for everything to burn' },
    trojan_usb                   = { name = 'trojan_usb', label = 'Trojan USB', weight = 0, type = 'item', image = 'usb_device.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Handy software to shut down some systems' },
    screwdriverset               = { name = 'screwdriverset', label = 'Toolkit', weight = 1000, type = 'item', image = 'screwdriverset.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'Very useful to screw... screws...' },
    drill                        = { name = 'drill', label = 'Drill', weight = 20000, type = 'item', image = 'drill.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'The real deal...' },

    -- Vehicle Tools
    nitrous                      = { name = 'nitrous', label = 'Nitrous', weight = 1000, type = 'item', image = 'nitrous.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Speed up, gas pedal! :D' },
    repairkit                    = { name = 'repairkit', label = 'Repairkit', weight = 2500, type = 'item', image = 'repairkit.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A nice toolbox with stuff to repair your vehicle' },
    advancedrepairkit            = { name = 'advancedrepairkit', label = 'Advanced Repairkit', weight = 4000, type = 'item', image = 'advancedkit.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A nice toolbox with stuff to repair your vehicle' },
    cleaningkit                  = { name = 'cleaningkit', label = 'Cleaning Kit', weight = 250, type = 'item', image = 'cleaningkit.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A microfiber cloth with some soap will let your car sparkle again!' },
    tunerlaptop                  = { name = 'tunerlaptop', label = 'Tunerchip', weight = 2000, type = 'item', image = 'tunerchip.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'With this tunerchip you can get your car on steroids... If you know what you\'re doing' },
    harness                      = { name = 'harness', label = 'Race Harness', weight = 1000, type = 'item', image = 'harness.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Racing Harness so no matter what you stay in the car' },
    jerry_can                    = { name = 'jerry_can', label = 'Jerrycan 20L', weight = 20000, type = 'item', image = 'jerry_can.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A can full of Fuel' },
    tirerepairkit                = { name = 'tirerepairkit', label = 'Tire Repair Kit', weight = 1000, type = 'item', image = 'tirerepairkit.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A kit to repair your tires' },

    -- Mechanic Parts
    veh_toolbox                  = { name = 'veh_toolbox', label = 'Toolbox', weight = 1000, type = 'item', image = 'veh_toolbox.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Check vehicle status' },
    veh_armor                    = { name = 'veh_armor', label = 'Armor', weight = 1000, type = 'item', image = 'veh_armor.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Upgrade vehicle armor' },
    veh_brakes                   = { name = 'veh_brakes', label = 'Brakes', weight = 1000, type = 'item', image = 'veh_brakes.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Upgrade vehicle brakes' },
    veh_engine                   = { name = 'veh_engine', label = 'Engine', weight = 1000, type = 'item', image = 'veh_engine.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Upgrade vehicle engine' },
    veh_suspension               = { name = 'veh_suspension', label = 'Suspension', weight = 1000, type = 'item', image = 'veh_suspension.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Upgrade vehicle suspension' },
    veh_transmission             = { name = 'veh_transmission', label = 'Transmission', weight = 1000, type = 'item', image = 'veh_transmission.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Upgrade vehicle transmission' },
    veh_turbo                    = { name = 'veh_turbo', label = 'Turbo', weight = 1000, type = 'item', image = 'veh_turbo.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Install vehicle turbo' },
    veh_interior                 = { name = 'veh_interior', label = 'Interior', weight = 1000, type = 'item', image = 'veh_interior.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Upgrade vehicle interior' },
    veh_exterior                 = { name = 'veh_exterior', label = 'Exterior', weight = 1000, type = 'item', image = 'veh_exterior.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Upgrade vehicle exterior' },
    veh_wheels                   = { name = 'veh_wheels', label = 'Wheels', weight = 1000, type = 'item', image = 'veh_wheels.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Upgrade vehicle wheels' },
    veh_neons                    = { name = 'veh_neons', label = 'Neons', weight = 1000, type = 'item', image = 'veh_neons.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Upgrade vehicle neons' },
    veh_xenons                   = { name = 'veh_xenons', label = 'Xenons', weight = 1000, type = 'item', image = 'veh_xenons.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Upgrade vehicle xenons' },
    veh_tint                     = { name = 'veh_tint', label = 'Tints', weight = 1000, type = 'item', image = 'veh_tint.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Install vehicle tint' },
    veh_plates                   = { name = 'veh_plates', label = 'Plates', weight = 1000, type = 'item', image = 'veh_plates.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Install vehicle plates' },

    -- Medication
    firstaid                     = { name = 'firstaid', label = 'Defibrillator', weight = 2500, type = 'item', image = 'firstaid.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'You can use this defibrillator to get people back on their feet' },
    bandage                      = { name = 'bandage', label = 'Bandage', weight = 0, type = 'item', image = 'bandage.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A bandage works every time' },
    ifaks                        = { name = 'ifaks', label = 'ifaks', weight = 200, type = 'item', image = 'ifaks.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'ifaks for healing and a complete stress remover.' },
    painkillers                  = { name = 'painkillers', label = 'Painkillers', weight = 0, type = 'item', image = 'painkillers.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'For pain you can\'t stand anymore, take this pill that\'d make you feel great again' },
    walkstick                    = { name = 'walkstick', label = 'Walking Stick', weight = 1000, type = 'item', image = 'walkstick.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Walking stick for ya\'ll grannies out there.. HAHA' },

    -- Communication
    phone                        = { name = 'phone', label = 'Phone', weight = 700, type = 'item', image = 'phone.png', unique = true, useable = false, shouldClose = false, combinable = nil, description = 'Neat phone ya got there' },
    radio                        = { name = 'radio', label = 'Radio', weight = 2000, type = 'item', image = 'radio.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'You can communicate with this through a signal' },
    iphone                       = { name = 'iphone', label = 'iPhone', weight = 1000, type = 'item', image = 'iphone.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Very expensive phone' },
    samsungphone                 = { name = 'samsungphone', label = 'Samsung S10', weight = 1000, type = 'item', image = 'samsungphone.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Very expensive phone' },
    laptop                       = { name = 'laptop', label = 'Laptop', weight = 4000, type = 'item', image = 'laptop.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Expensive laptop' },
    tablet                       = { name = 'tablet', label = 'Tablet', weight = 2000, type = 'item', image = 'tablet.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Expensive tablet' },
    fitbit                       = { name = 'fitbit', label = 'Fitbit', weight = 500, type = 'item', image = 'fitbit.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'I like fitbit' },
    radioscanner                 = { name = 'radioscanner', label = 'Radio Scanner', weight = 1000, type = 'item', image = 'radioscanner.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'With this you can get some police alerts. Not 100% effective however' },
    pinger                       = { name = 'pinger', label = 'Pinger', weight = 1000, type = 'item', image = 'pinger.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'With a pinger and your phone you can send out your location' },
    cryptostick                  = { name = 'cryptostick', label = 'Crypto Stick', weight = 200, type = 'item', image = 'cryptostick.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Why would someone ever buy money that doesn\'t exist.. How many would it contain..?' },

    -- Theft and Jewelry
    rolex                        = { name = 'rolex', label = 'Golden Watch', weight = 1500, type = 'item', image = 'rolex.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'A golden watch seems like the jackpot to me!' },
    diamond_ring                 = { name = 'diamond_ring', label = 'Diamond Ring', weight = 1500, type = 'item', image = 'diamond_ring.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'A diamond ring seems like the jackpot to me!' },
    diamond                      = { name = 'diamond', label = 'Diamond', weight = 1000, type = 'item', image = 'diamond.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'A diamond seems like the jackpot to me!' },
    goldchain                    = { name = 'goldchain', label = 'Golden Chain', weight = 1500, type = 'item', image = 'goldchain.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'A golden chain seems like the jackpot to me!' },
    tenkgoldchain                = { name = 'tenkgoldchain', label = '10k Gold Chain', weight = 2000, type = 'item', image = '10kgoldchain.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = '10 carat golden chain' },
    goldbar                      = { name = 'goldbar', label = 'Gold Bar', weight = 7000, type = 'item', image = 'goldbar.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Looks pretty expensive to me' },

    -- Cops Tools
    armor                        = { name = 'armor', label = 'Armor', weight = 5000, type = 'item', image = 'armor.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Some protection won\'t hurt... right?' },
    heavyarmor                   = { name = 'heavyarmor', label = 'Heavy Armor', weight = 5000, type = 'item', image = 'armor.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Some protection won\'t hurt... right?' },
    handcuffs                    = { name = 'handcuffs', label = 'Handcuffs', weight = 100, type = 'item', image = 'handcuffs.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Comes in handy when people misbehave. Maybe it can be used for something else?' },
    police_stormram              = { name = 'police_stormram', label = 'Stormram', weight = 18000, type = 'item', image = 'police_stormram.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A nice tool to break into doors' },
    empty_evidence_bag           = { name = 'empty_evidence_bag', label = 'Empty Evidence Bag', weight = 0, type = 'item', image = 'evidence.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'Used a lot to keep DNA from blood, bullet shells and more' },
    filled_evidence_bag          = { name = 'filled_evidence_bag', label = 'Evidence Bag', weight = 200, type = 'item', image = 'evidence.png', unique = true, useable = true, shouldClose = false, combinable = nil, description = 'A filled evidence bag to see who committed the crime >:(' },

    -- Firework Tools
    firework1                    = { name = 'firework1', label = '2Brothers', weight = 1000, type = 'item', image = 'firework1.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Fireworks' },
    firework2                    = { name = 'firework2', label = 'Poppelers', weight = 1000, type = 'item', image = 'firework2.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Fireworks' },
    firework3                    = { name = 'firework3', label = 'WipeOut', weight = 1000, type = 'item', image = 'firework3.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Fireworks' },
    firework4                    = { name = 'firework4', label = 'Weeping Willow', weight = 1000, type = 'item', image = 'firework4.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Fireworks' },

    -- Sea Tools
    dendrogyra_coral             = { name = 'dendrogyra_coral', label = 'Dendrogyra', weight = 1000, type = 'item', image = 'dendrogyra_coral.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Its also known as pillar coral' },
    antipatharia_coral           = { name = 'antipatharia_coral', label = 'Antipatharia', weight = 1000, type = 'item', image = 'antipatharia_coral.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Its also known as black corals or thorn corals' },
    diving_gear                  = { name = 'diving_gear', label = 'Diving Gear', weight = 30000, type = 'item', image = 'diving_gear.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'An oxygen tank and a rebreather' },
    diving_fill                  = { name = 'diving_fill', label = 'Diving Tube', weight = 3000, type = 'item', image = 'diving_tube.png', unique = true, useable = true, shouldClose = true, combinable = nil, discription = 'An oxygen tube and a rebreather' },

    -- Other Tools
    casinochips                  = { name = 'casinochips', label = 'Casino Chips', weight = 0, type = 'item', image = 'casinochips.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = 'Chips For Casino Gambling' },
    stickynote                   = { name = 'stickynote', label = 'Sticky note', weight = 0, type = 'item', image = 'stickynote.png', unique = true, useable = false, shouldClose = false, combinable = nil, description = 'Sometimes handy to remember something :)' },
    moneybag                     = { name = 'moneybag', label = 'Money Bag', weight = 0, type = 'item', image = 'moneybag.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'A bag with cash' },
    parachute                    = { name = 'parachute', label = 'Parachute', weight = 30000, type = 'item', image = 'parachute.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'The sky is the limit! Woohoo!' },
    binoculars                   = { name = 'binoculars', label = 'Binoculars', weight = 600, type = 'item', image = 'binoculars.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Sneaky Breaky...' },
    lighter                      = { name = 'lighter', label = 'Lighter', weight = 0, type = 'item', image = 'lighter.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'On new years eve a nice fire to stand next to' },
    certificate                  = { name = 'certificate', label = 'Certificate', weight = 0, type = 'item', image = 'certificate.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Certificate that proves you own certain stuff' },
    markedbills                  = { name = 'markedbills', label = 'Marked Money', weight = 1000, type = 'item', image = 'markedbills.png', unique = true, useable = false, shouldClose = true, combinable = nil, description = 'Money?' },
    labkey                       = { name = 'labkey', label = 'Key', weight = 500, type = 'item', image = 'labkey.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Key for a lock...?' },
    printerdocument              = { name = 'printerdocument', label = 'Document', weight = 500, type = 'item', image = 'printerdocument.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'A nice document' },
    newscam                      = { name = 'newscam', label = 'News Camera', weight = 100, type = 'item', image = 'newscam.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'A camera for the news' },
    newsmic                      = { name = 'newsmic', label = 'News Microphone', weight = 100, type = 'item', image = 'newsmic.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'A microphone for the news' },
    newsbmic                     = { name = 'newsbmic', label = 'Boom Microphone', weight = 100, type = 'item', image = 'newsbmic.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'A Useable BoomMic' },

    -- CDN Fuel
    ["syphoningkit"]				 = {["name"] = "syphoningkit", 					["label"] = "Syphoning Kit", 			["weight"] = 5000, 		["type"] = "item", 		["image"] = "syphoningkit.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A kit made to siphon gasoline from vehicles."},
	["jerrycan"]				 	 = {["name"] = "jerrycan", 						["label"] = "Jerry Can", 				["weight"] = 15000, 	["type"] = "item", 		["image"] = "jerrycan.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A Jerry Can made to hold gasoline."},

    -- Pickle Prisons
    ["wood"] 					= {["name"] = "wood",  	     		        ["label"] = "Wood",	 		    ["weight"] = 1, 		["type"] = "item", 		["image"] = "wood.png", 				["unique"] = false, 	    ["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = ""},
    ["metal"] 					= {["name"] = "metal",  	     		    ["label"] = "Metal",	 		    ["weight"] = 1, 		["type"] = "item", 		["image"] = "metal.png", 				["unique"] = false, 	    ["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = ""},
    ["rope"] 					= {["name"] = "rope",  	     		        ["label"] = "Rope",	 		    ["weight"] = 1, 		["type"] = "item", 		["image"] = "rope.png", 				["unique"] = false, 	    ["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = ""},
    ["shovel"] 					= {["name"] = "shovel",  	     		    ["label"] = "Shovel",	 		    ["weight"] = 1, 		["type"] = "item", 		["image"] = "shovel.png", 				["unique"] = false, 	    ["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = ""},

     -- // Crafting Items --
["ironoxide"] 				 	 = {["name"] = "ironoxide", 			  		["label"] = "Ironoxide", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "ironoxide.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = {accept = {"aluminiumoxide"}, reward = "thermite", RemoveToItem = true, anim = {["dict"] = "anim@amb@business@weed@weed_inspecting_high_dry@", ["lib"] = "weed_inspecting_high_base_inspector", ["text"] = "Mixing Powders", ["timeOut"] = 10000}},   ["description"] = "Some powder to mix with."},
["aluminiumoxide"] 				 = {["name"] = "aluminiumoxide", 			  	["label"] = "aluminiumoxide", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "aluminiumoxide.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = {accept = {"ironoxide"}, reward = "thermite", RemoveToItem = true, anim = {["dict"] = "anim@amb@business@weed@weed_inspecting_high_dry@", ["lib"] = "weed_inspecting_high_base_inspector", ["text"] = "Mixing Powders", ["timeOut"] = 10000}},   ["description"] = "Some powder to mix with."},
["thermite"] 			 	 	 = {["name"] = "thermite", 			  			["label"] = "Thermite", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "thermite.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "This is very explosive"},
["metal-bolt"] 			 	 	 = {["name"] = "metal-bolt", 			  		["label"] = "Metal Bolt", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "metal-bolt.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Its a bolt, i'm sure you can figure it out"},
["metal-screw"] 			 	 = {["name"] = "metal-screw", 			  		["label"] = "Metal Screw", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "metal-screw.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Its a screw, i'm sure you can figure it out"},
["aluminium-spring"] 			 = {["name"] = "aluminium-spring", 			  	["label"] = "Aluminium Spring", 		["weight"] = 100, 		["type"] = "item", 		["image"] = "aluminium-spring.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Boing"},
["steel_plate"] 			 	 = {["name"] = "steel_plate", 			  		["label"] = "Steel Plate", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "steel-plate.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Steel Plating that can be used in crafting."},
["bullet_casing"] 			 	 = {["name"] = "bullet_casing", 			  	["label"] = "Bullet Casing", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "bullet_casing.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Used in the creation of ammunition"},
["gunpowder"] 			 	 	 = {["name"] = "gunpowder", 			  		["label"] = "Gun Powder", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "gunpowder.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Wow this is very flammable.."},
["goldplate"] 			 	 	 = {["name"] = "goldplate", 			  		["label"] = "Gold Plate", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "goldplate.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Gold Plating that can be used in crafting."},
["silverplate"] 			 	 = {["name"] = "silverplate", 			  		["label"] = "Silver Plate", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "silverplate.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Silver Plating that can be used in crafting."},

["gastube"] 				 	 = {["name"] = "gastube", 			    		["label"] = "Gas Tube", 				["weight"] = 1000, 				["type"] = "item", 				["image"] = "gastube.png", 				 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Welders might be interested in this'},
["welding-tool"] 			 	 = {["name"] = "welding-tool", 			 		["label"] = "Welding Tool", 			["weight"] = 1000, 				["type"] = "item", 				["image"] = "weldingtool.png", 					["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Useful for opening strong locks."},
["rentalpapers"]				 = {["name"] = "rentalpapers", 					["label"] = "Rental Papers", 			["weight"] = 50, 		["type"] = "item", 		["image"] = "rentalpapers.png", 		["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false, 	["combinable"] = nil, 	["description"] = "This car was taken out through car rental."},

-- Skateboard --
["skateboard"] 			  = {["name"] = "skateboard",					["label"] = "Skateboard",				["weight"] = 0,			["type"] = "item",		["image"] = "skateboard.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = false,   ["combinable"] = nil,	["description"] = "skateboard"},
["surfboard"] 			  = {["name"] = "surfboard",					["label"] = "Surfboard",				["weight"] = 0,			["type"] = "item",		["image"] = "surfboard.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = false,   ["combinable"] = nil,	["description"] = "surfboard"},

-- // POKEMON \\ --

["boosterbox"] 					 = {["name"] = "boosterbox",		  	  		["label"] = "Boosterbox", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "boosterBox.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Box Of Card Packs"},
["boosterpack"] 				 = {["name"] = "boosterpack", 			  	  	["label"] = "Boosterpack", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "boosterPack.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Pack of Cards"},
["abra"] 						 = {["name"] = "abra", 			  			  	["label"] = "Abra", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "abra.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "3/6 for Marsh Badge"},
["aerodactyl"] 					 = {["name"] = "aerodactyl", 			  	  	["label"] = "Aerodactyl", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "aerodactyl.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
["alakazam"] 					 = {["name"] = "alakazam", 					 	["label"] = "Alakazam", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "alakazam.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "1/6 for Marsh Badge"},
["arbok"] 						 = {["name"] = "arbok", 			  	  		["label"] = "Arbok", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "arbok.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
["arcanine"] 					 = {["name"] = "arcanine", 				  	  	["label"] = "Arcanine", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "arcanine.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "1/6 for Volcano Badge"},
["articuno"] 					 = {["name"] = "articuno", 			  		 	["label"] = "Articuno", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "articuno.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Ultra Rare"},
["beedrill"] 					 = {["name"] = "beedrill", 			  	  		["label"] = "Beedrill", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "beedrill.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
["bellsprout"] 					 = {["name"] = "bellsprout", 			  	  	["label"] = "Bellsprout", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "bellsprout.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "5/6 for Rainbow Badge"},
["blastoise"] 					 = {["name"] = "blastoise", 			  	  	["label"] = "Blastoise", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "blastoise.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "1/6 for Cascade Badge - Ultra Rare"},
["boulderbadge"] 				 = {["name"] = "boulderbadge", 			 		["label"] = "boulderbadge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "boulderBadge.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "1/8 for Trophy Badge"},
["butterfree"] 					 = {["name"] = "butterfree", 			  		["label"] = "Butterfree", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "butterfree.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["cascadebadge"] 				 = {["name"] = "cascadeBadge", 			  		["label"] = "CascadeBadge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "cascadeBadge.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "2/8 for Trophy Badge"},
["caterpie"] 				     = {["name"] = "caterpie", 			  			["label"] = "Caterpie", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "caterpie.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["chansey"] 				 	 = {["name"] = "chansey", 			  			["label"] = "Chansey", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "chansey.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["charizard"] 				 	 = {["name"] = "charizard", 			  		["label"] = "Charizard", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "charizard.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "5/6 for Volcano Badge - Ultra Rare"},
["charmander"] 				 	 = {["name"] = "charmander", 			  		["label"] = "Charmander", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "charmander.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["charmeleon"] 				 	 = {["name"] = "charmeleon", 			  		["label"] = "Charmeleon", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "charmeleon.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["clefable"] 					 = {["name"] = "clefable", 			  		 	["label"] = "Clefable", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "clefable.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["clefairy"] 				 	 = {["name"] = "clefairy", 			  	  		["label"] = "Clefairy", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "clefairy.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["cloyster"] 				 	 = {["name"] = "cloyster", 			  	  		["label"] = "Cloyster", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "cloyster.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["cubone"] 						 = {["name"] = "cubone", 			  	  		["label"] = "Cubone", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "cubone.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["dewgong"] 				 	 = {["name"] = "dewgong", 			  	  		["label"] = "Dewgong", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "dewgong.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["diglett"] 					 = {["name"] = "diglett", 			 	  	  	["label"] = "Diglett", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "diglett.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["ditto"] 						 = {["name"] = "ditto", 			 			["label"] = "Ditto", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "ditto.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Rare"},
["dodrio"] 						 = {["name"] = "dodrio", 			 			["label"] = "Dodrio", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "dodrio.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["doduo"] 						 = {["name"] = "doduo", 						["label"] = "Doduo", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "doduo.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["dragonair"] 					 = {["name"] = "dragonair", 			 	  	["label"] = "Dragonair", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "dragonair.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
["dragonite"] 					 = {["name"] = "dragonite", 				    ["label"] = "Dragonite", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "dragonite.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
["dratini"] 					 = {["name"] = "dratini", 			    		["label"] = "Dratini", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "dratini.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
["drowzee"] 					 = {["name"] = "drowzee", 			 			["label"] = "Drowzee", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "drowzee.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["dugtrio"] 				  	 = {["name"] = "dugtrio", 			 			["label"] = "Dugtrio", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "dugtrio.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "5/6 for Earth Badge"},
["earthbadge"] 					 = {["name"] = "earthbadge", 					["label"] = "Earth Badge", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "earthBadge.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "8/8 for Trophy Badge"},
["eevee"] 						 = {["name"] = "eevee", 			 			["label"] = "Eevee", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "eevee.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rare"},
["ekans"] 						 = {["name"] = "ekans", 			 			["label"] = "Ekans", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "ekans.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["electabuzz"] 				     = {["name"] = "electabuzz", 			 		["label"] = "Electabuzz", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "electabuzz.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "4/6 for Thunder Badge"},
["electrode"] 					 = {["name"] = "electrode", 					["label"] = "Electrode", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "electrode.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "5/6 for Thunder Badge"},
["exeggcute"] 					 = {["name"] = "exeggcute", 				    ["label"] = "Exeggcute", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "exeggcute.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["exeggutor"] 					 = {["name"] = "exeggutor", 					["label"] = "Exeggutor", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "exeggutor.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["farfetchd"] 					 = {["name"] = "farfetchd", 					["label"] = "Farfetchd", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "farfetchd.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["fearow"] 						 = {["name"] = "fearow", 						["label"] = "Fearow", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "fearow.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["flareon"] 					 = {["name"] = "flareon", 					    ["label"] = "Flareon", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "flareon.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Rare"},
["gastly"] 						 = {["name"] = "gastly", 					    ["label"] = "Gastly", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "gastly.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["gengar"] 						 = {["name"] = "gengar", 					    ["label"] = "Gengar", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "gengar.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["geodude"] 				 	 = {["name"] = "geodude", 				    	["label"] = "Geodude", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "geodude.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "6/6 for Boulder Badge"},
["gloom"] 						 = {["name"] = "gloom", 						["label"] = "Gloom", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "gloom.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["golbat"] 						 = {["name"] = "golbat", 						["label"] = "Golbat", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "golbat.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "6/6 for Soul Badge"},
["goldeen"] 					 = {["name"] = "goldeen", 						["label"] = "Goldeen", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "goldeen.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["golduck"] 		 			 = {["name"] = "golduck", 						["label"] = "Golduck", 					["weight"] = 0, 	    ["type"] = "item", 		["image"] = "golduck.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "5/6 for Cascade Badge"},
["golem"] 		 				 = {["name"] = "golem", 						["label"] = "Golem", 					["weight"] = 0, 	    ["type"] = "item", 		["image"] = "golem.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["graveler"] 		 			 = {["name"] = "graveler", 						["label"] = "Graveler", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "graveler.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "1/6 for Boulder Badge"},
["grimer"] 		 				 = {["name"] = "grimer", 						["label"] = "Grimer", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "grimer.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["growlithe"] 		 			 = {["name"] = "growlithe", 					["label"] = "Growlithe", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "growlithe.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["gyarados"] 				 	 = {["name"] = "gyarados", 			  	  		["label"] = "Gyarados", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "gyarados.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Rare"},
["haunter"] 					 = {["name"] = "haunter", 						["label"] = "Haunter", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "haunter.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["hitmonchan"] 				 	 = {["name"] = "hitmonchan", 			  	  	["label"] = "Hitmonchan", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "hitmonchan.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Rare"},
["hitmonlee"] 				 	 = {["name"] = "hitmonlee", 			   		["label"] = "Hitmonlee", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "hitmonlee.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Rare"},
["horsea"] 						 = {["name"] = "horsea", 			  		 	["label"] = "Horsea", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "horsea.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["hypno"] 				 		 = {["name"] = "hypno", 			  	  		["label"] = "Hypno", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "hypno.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "5/6 for Marsh Badge"},
["ivysaur"] 					 = {["name"] = "ivysaur", 			  			["label"] = "Ivysaur", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "ivysaur.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["jigglypuff"] 					 = {["name"] = "jigglypuff", 			  	  	["label"] = "Jigglypuff", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "jigglypuff.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Rare"},
["jolteon"] 					 = {["name"] = "jolteon", 					  	["label"] = "Jolteon", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "jolteon.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "3/6 for Thunder Badge - Rare"},
["jynx"] 						 = {["name"] = "jynx", 						  	["label"] = "Jynx", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "jynx.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "6/6 for Marsh Badge - Rare"},
["kabuto"] 						 = {["name"] = "kabuto", 					  	["label"] = "Kabuto", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "kabuto.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
["kabutops"] 			 		 = {["name"] = "kabutops", 				 		["label"] = "Kabutops", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "kabutops.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "4/6 for Boulder Badge - Ultra Rare"},
["kadabra"] 			 	 	 = {["name"] = "kadabra", 			  			["label"] = "Kadabra", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "kadabra.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "4/6 for Marsh Badge - Rare"},
["kakuna"] 			 	 		 = {["name"] = "kakuna", 			  			["label"] = "Kakuna", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "kakuna.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
["kangaskhan"] 			 	 	 = {["name"] = "kangaskhan", 			  		["label"] = "Kangaskhan", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "kangaskhan.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rare"},
["kingler"] 			 	 	 = {["name"] = "kingler", 			  			["label"] = "Kingler", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "kingler.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
["koffing"] 			 	 	 = {["name"] = "koffing", 			  			["label"] = "Koffing", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "koffing.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "1/6 for Soul Badge"},
["krabby"] 				 	 	 = {["name"] = "krabby", 			  			["label"] = "Krabby", 					["weight"] = 0, 	    ["type"] = "item", 		["image"] = "krabby.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
["lapras"] 			 			 = {["name"] = "lapras", 			  			["label"] = "Lapras", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "lapras.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "4/6 for Cascade Badge - Rare"},
["lickitung"] 			 		 = {["name"] = "lickitung", 			  		["label"] = "Lickitung", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "lickitung.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
["machamp"] 					 = {["name"] = "machamp", 					  	["label"] = "Machamp", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "machamp.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Rare"},
["machoke"] 					 = {["name"] = "machoke", 						["label"] = "Machoke", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "machoke.png",				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
["machop"] 			 			 = {["name"] = "machop", 						["label"] = "Machop", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "machop.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
["magikarp"] 			 		 = {["name"] = "magikarp", 						["label"] = "Magikarp", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "magikarp.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
["magmar"] 					     = {["name"] = "magmar", 						["label"] = "Magmar", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "magmar.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "4/6 for Volcano Badge"},
["magnemite"] 			   		 = {["name"] = "magnemite", 					["label"] = "Magnemite", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "magnemite.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
["magneton"] 					 = {["name"] = "magneton", 			  	  		["label"] = "Magneton", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "magneton.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "6/6 for Thunder Badge"},
["mankey"] 						 = {["name"] = "mankey", 					 	["label"] = "Mankey", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "mankey.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["marowak"] 					 = {["name"] = "marowak", 			  	  		["label"] = "Marowak", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "marowak.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["marshbadge"] 					 = {["name"] = "marshbadge", 				  	["label"] = "MarshBadge", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "marshBadge.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "6/8 for Trophy Badge"},
["meowth"] 						 = {["name"] = "meowth", 			  		 	["label"] = "Meowth", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "meowth.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["metapod"] 					 = {["name"] = "metapod", 			  	  		["label"] = "Metapod", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "metapod.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["mew"] 						 = {["name"] = "mew", 			  				["label"] = "Mew", 						["weight"] = 0, 		["type"] = "item", 		["image"] = "mew.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Ultra Rare"},
["mewtwo"] 						 = {["name"] = "mewtwo", 			  			["label"] = "Mewtwo", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "mewtwo.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "4/6 for Earth Badge - Ultra Rare"},
["moltres"] 					 = {["name"] = "moltres", 			 			["label"] = "Moltres", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "moltres.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "6/6 for Volcano Badge - Ultra Rare"},
["mrmime"] 						 = {["name"] = "mrmime", 			  			["label"] = "Mr_mime", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "mr_mime.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "2/6 for Marsh Badge"},
["muk"] 						 = {["name"] = "muk", 			  				["label"] = "Muk", 						["weight"] = 0, 		["type"] = "item", 		["image"] = "muk.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["nidoking"] 				     = {["name"] = "nidoking", 			  			["label"] = "Nidoking", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "nidoking.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "2/6 for Earth Badge - Rare"},
["nidoqueen"] 				 	 = {["name"] = "nidoqueen", 			  		["label"] = "Nidoqueen", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "nidoqueen.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "3/6 for Earth Badge"},
["nidoran"] 				 	 = {["name"] = "nidoran", 			  			["label"] = "Nidoran", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "nidoran.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["nidorina"] 				 	 = {["name"] = "nidorina", 			  			["label"] = "Nidorina", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "nidorina.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["nidorino"] 				 	 = {["name"] = "nidorino", 			  			["label"] = "Nidorino", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "nidorino.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["ninetails"] 					 = {["name"] = "ninetails", 			  		["label"] = "Ninetails", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "ninetails.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "3/6 for Volcano badge"},
["oddish"] 				 		 = {["name"] = "oddish", 			  	  		["label"] = "Oddish", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "oddish.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["omanyte"] 				 	 = {["name"] = "omanyte", 			  	  		["label"] = "Omanyte", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "omanyte.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Ultra Rare"},
["omastar"] 					 = {["name"] = "omastar", 			  	  		["label"] = "Omastar", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "omastar.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "3/6 for Boulder Badge - Ultra Rare"},
["onix"] 				 		 = {["name"] = "onix", 			  	  			["label"] = "Onix", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "onix.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "5/6 for Boulder Badge - Rare"},
["paras"] 						 = {["name"] = "paras", 			 	  	  	["label"] = "Paras", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "paras.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["parasect"] 					 = {["name"] = "parasect", 			 			["label"] = "Parasect", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "parasect.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["persian"] 					 = {["name"] = "persian", 			 			["label"] = "Persian", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "persian.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "6/6 for Earth Badge"},
["pidgeotto"] 					 = {["name"] = "pidgeotto", 					["label"] = "Pidgeotto", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "pidgeotto.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["pidgey"] 						 = {["name"] = "pidgey", 			 			["label"] = "Pidgey", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "pidgey.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["pikachu"] 					 = {["name"] = "pikachu", 						["label"] = "Pikachu", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "pikachu.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "2/6 for Thunder Badge"},
["pinsir"] 						 = {["name"] = "pinsir", 			    		["label"] = "Pinsir", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "pinsir.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["poliwag"] 					 = {["name"] = "poliwag", 			 			["label"] = "Poliwag", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "poliwag.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["polywhirl"] 				  	 = {["name"] = "polywhirl", 			 		["label"] = "Polywhirl", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "polywhirl.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["poliwrath"] 					 = {["name"] = "poliwrath", 					["label"] = "Poliwrath", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "poliwrath.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["ponyta"] 						 = {["name"] = "ponyta", 			 			["label"] = "Ponyta", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "ponyta.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["porygon"] 					 = {["name"] = "porygon", 			 			["label"] = "Porygon", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "porygon.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
["primeape"] 				     = {["name"] = "primeape", 			 			["label"] = "Primeape", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "primeape.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["psyduck"] 					 = {["name"] = "psyduck", 						["label"] = "Psyduck", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "psyduck.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "3/6 for Cascade Badge"},
["raichu"] 						 = {["name"] = "raichu", 						["label"] = "Raichu", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "raichu.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Rare"},
["rainbowbadge"] 				 = {["name"] = "rainbowbadge", 					["label"] = "RainbowBadge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "rainbowBadge.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "4/6 for Rainbow Badge"},
["rapidash"] 					 = {["name"] = "rapidash", 						["label"] = "Rapidash", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "rapidash.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "2/6 for Volcano Badge"},
["raticate"] 					 = {["name"] = "raticate", 						["label"] = "Raticate", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "raticate.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["rattata"] 					 = {["name"] = "rattata", 					    ["label"] = "Rattata", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "rattata.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["rhydon"] 						 = {["name"] = "rhydon", 					    ["label"] = "Rhydon", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "rhydon.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "1/6 for Earth Badge"},
["rhyhorn"] 					 = {["name"] = "rhyhorn", 					    ["label"] = "Rhyhorn", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "rhyhorn.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "2/6 for Boulder Badge"},
["sandshrew"] 				 	 = {["name"] = "sandshrew", 				    ["label"] = "Sandshrew", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "sandshrew.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["sandslash"] 					 = {["name"] = "sandslash", 					["label"] = "Sandslash", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "sandslash.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["scyther"] 					 = {["name"] = "scyther", 						["label"] = "Scyther", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "scyther.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "4/6 for Rainbow Badge - Rare"},
["seadra"] 						 = {["name"] = "seadra", 						["label"] = "Seadra", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "seadra.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["seaking"] 		 			 = {["name"] = "seaking", 						["label"] = "Seaking", 					["weight"] = 0, 	    ["type"] = "item", 		["image"] = "seaking.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["seel"] 		 				 = {["name"] = "seel", 							["label"] = "Seel", 					["weight"] = 0, 	    ["type"] = "item", 		["image"] = "seel.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["shellder"] 		 			 = {["name"] = "shellder", 						["label"] = "Shellder", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "shellder.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["slowbro"] 		 			 = {["name"] = "slowbro", 						["label"] = "Slowbro", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "slowbro.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["slowpoke"] 		 			 = {["name"] = "slowpoke", 						["label"] = "Slowpoke", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "slowpoke.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["snorlax"] 				 	 = {["name"] = "snorlax", 			  	  		["label"] = "Snorlax", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "snorlax.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "3/6 for Soul Badge - Ultra Rare"},
["soulbadge"] 					 = {["name"] = "soulbadge", 					["label"] = "SoulBadge", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "soulBadge.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "5/8 for Trophy Badge"},
["spearow"] 				 	 = {["name"] = "spearow", 			  	  		["label"] = "Spearow", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "spearow.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["squirtle"] 				 	 = {["name"] = "squirtle", 			   			["label"] = "Squirtle", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "squirtle.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["starmie"] 					 = {["name"] = "starmie", 			  		 	["label"] = "Starmie", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "starmie.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "2/6 for Cascade Badge - Rare"},
["staryu"] 				 		 = {["name"] = "staryu", 			  	  		["label"] = "Staryu", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "staryu.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["tangela"] 					 = {["name"] = "tangela", 			  			["label"] = "Tangela", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "tangela.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "2/6 for Rainbow Badge"},
["tauros"] 						 = {["name"] = "tauros", 			  	  		["label"] = "Tauros", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "tauros.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["tentacool"] 					 = {["name"] = "tentacool", 					["label"] = "Tentacool", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "tentacool.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["tentacruel"] 					 = {["name"] = "tentacruel", 					["label"] = "Tentacruel", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "tentacruel.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
["thunderbadge"] 				 = {["name"] = "thunderbadge", 					["label"] = "ThunderBadge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "thunderBadge.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "3/8 for Trophy Badge"},
["togepi"] 			 			 = {["name"] = "togepi", 				 		["label"] = "Togepi", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "togepi.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "6/6 for Cascade Badge - Rare"},
["trophybadge"] 			 	 = {["name"] = "trophybadge", 			  		["label"] = "Trophy Badge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "trophyBadge.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "OwO You have a Trophy"},
["vaporeon"] 			 	 	 = {["name"] = "vaporeon", 			  			["label"] = "Vaporeon", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "vaporeon.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Rare"},
["venomoth"] 			 	 	 = {["name"] = "venomoth", 			  			["label"] = "Venomoth", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "venomoth.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "4/6 for Soul Badge"},
["venonat"] 			 	 	 = {["name"] = "venonat", 			  			["label"] = "Venonat", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "venonat.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "5/6 for Soul Badge"},
["venusaur"] 			 	 	 = {["name"] = "venusaur", 			  			["label"] = "Venusaur", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "venusaur.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "6/6 for Rainbow Badge - Rare"},
["victreebel"] 				 	 = {["name"] = "victreebel", 			  		["label"] = "Victreebel", 				["weight"] = 0, 	    ["type"] = "item", 		["image"] = "victreebel.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "1/6 for Rainbow Badge"},
["vileplume"] 		 			 = {["name"] = "vileplume", 			  		["label"] = "Vileplume", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "vileplume.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "3/6 for Rainbow Badge"},
["volcanobadge"] 		 		 = {["name"] = "volcanobadge", 			  		["label"] = "Volcano Badge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "volcanoBadge.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "7/8 for Trophy Badge"},
["voltorb"] 					 = {["name"] = "voltorb", 					  	["label"] = "Voltorb", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "voltorb.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["vulpix"] 						 = {["name"] = "vulpix", 						["label"] = "Vulpix", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "vulpix.png",				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["wartortle"] 		 			 = {["name"] = "wartortle", 					["label"] = "Wartortle", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "wartortle.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["weedle"] 				 		 = {["name"] = "weedle", 						["label"] = "Weedle", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "weedle.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["weepinbell"] 				     = {["name"] = "weepinbell", 					["label"] = "Weepinbell", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "weepinbell.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["weezing"] 			   		 = {["name"] = "weezing", 						["label"] = "Weezing", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "weezing.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "2/6 for Soul Badge"},
["wigglytuff"] 			 		 = {["name"] = "wigglytuff", 					["label"] = "Wigglytuff", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "wigglytuff.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Rare"},
["zapdos"] 					     = {["name"] = "zapdos", 						["label"] = "Zapdos", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "zapdos.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "1/6 for Thunder Badge - Ultra Rare"},
["zubat"] 				   		 = {["name"] = "zubat", 						["label"] = "Zubat", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "zubat.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["bulbasaur"] 			   		 = {["name"] = "bulbasaur", 					["label"] = "Bulbasaur", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "bulbasaur.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
["pidgeot"]                      = {["name"] = "pidgeot", 						["label"] = "Pidgeot", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "pidgeot.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, 	   ["combinable"] = nil,   ["description"] = "6/6 for Earth Badge"},
["blastoisev"] 			 	 	 = {["name"] = "blastoisev", 			  		["label"] = "Blastoise V", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "blastoisev.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "V Card"},
["charizardv"] 				 	 = {["name"] = "charizardv", 			  		["label"] = "Charizard V", 				["weight"] = 0, 	    ["type"] = "item", 		["image"] = "charizardv.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "V Card"},
["mewv"] 		 				 = {["name"] = "mewv", 			  				["label"] = "Mew V", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "mewv.png", 			    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "V Card"},
["pikachuv"] 		 		 	 = {["name"] = "pikachuv", 			  		    ["label"] = "Pikachu V", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "pikachuv.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "V Card"},
["snorlaxv"] 					 = {["name"] = "snorlaxv", 					  	["label"] = "Snorlax V", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "snorlaxv.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "V Card"},
["venusaurv"] 					 = {["name"] = "venusaurv", 				    ["label"] = "Venusaur V", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "venusaurv.png",			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "V Card"},
["blastoisevmax"] 		 	     = {["name"] = "blastoisevmax", 			    ["label"] = "Blastoise Vmax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "blastoisevmax.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
["mewtwogx"] 				 	 = {["name"] = "mewtwogx", 						["label"] = "Mewtwo Vmax", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "mewtwogx.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
["snorlaxvmax"] 				 = {["name"] = "snorlaxvmax", 					["label"] = "Snorlax Vmax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "snorlaxvmax.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
["venusaurvmax"] 			   	 = {["name"] = "venusaurvmax", 					["label"] = "Venusaur Vmax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "venusaurvmax.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
["vmaxcharizard"] 			 	 = {["name"] = "vmaxcharizard", 				["label"] = "Charizard Vmax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "vmaxcharizard.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
["vmaxpikachu"] 			     = {["name"] = "vmaxpikachu", 					["label"] = "Pikachu Vmax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "vmaxpikachu.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
["rainbowmewtwogx"] 			 = {["name"] = "rainbowmewtwogx", 				["label"] = "Rainbow Mewtwo", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "rainbowmewtwogx.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Rainbow Card"},
["rainbowvmaxcharizard"] 		 = {["name"] = "rainbowvmaxcharizard", 			["label"] = "Rainbow Charizard", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "rainbowvmaxcharizard.png", ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Rainbow Card"},
["rainbowvmaxpikachu"] 			 = {["name"] = "rainbowvmaxpikachu", 			["label"] = "Rainbow Pikachu", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "rainbowvmaxpikachu.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Rainbow Card"},
["snorlaxvmaxrainbow"] 			 = {["name"] = "snorlaxvmaxrainbow", 			["label"] = "Rainbox Snorlax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "snorlaxvmaxrainbow.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Rainbow Card"},
["pokebox"] 					 = {["name"] = "pokebox", 						["label"] = "Pokemon TCG Box", 			["weight"] = 50, 		["type"] = "item", 		["image"] = "pokebox.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true, 	   ["combinable"] = nil,  ["description"] = "Pokemon TCG Storage Box"},


	["bodycam"] 		 			 = {["name"] = "bodycam",       	    	["label"] = "PD Body Camera",	 				["weight"] = 20, 		["type"] = "item", 		["image"] = "bodycam.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Body Camera"},

    	-- // BLUEPRINTS \\ --
--Items
["blueprint_handcuffs"]  				={["name"] = "blueprint_handcuffs",				["label"] = "Handcuff Blueprint",				["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_electronickit"]  			={["name"] = "blueprint_electronickit",			["label"] = "Electronickit Blueprint",			["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_atmkit"]  					={["name"] = "blueprint_atmkit",				["label"] = "ATM Kit Blueprint",				["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_armor"]  					={["name"] = "blueprint_armor",					["label"] = "Armor Blueprint",					["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_syphoningkit"]  			={["name"] = "blueprint_syphoningkit",			["label"] = "Syphoning Kit Blueprint",			["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_harness"]  					={["name"] = "blueprint_harness",				["label"] = "Harness Blueprint",				["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_thermite"]  				={["name"] = "blueprint_thermite",				["label"] = "Thermite Blueprint",				["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_thermitecharge"]  			={["name"] = "blueprint_thermitecharge",		["label"] = "Thermite Charge Blueprint",		["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_molotov"]  			={["name"] = "blueprint_weapon_molotov",		["label"] = "Molotov Blueprint",				["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_stickybomb"]  		={["name"] = "blueprint_weapon_stickybomb",		["label"] = "Sticky Bomb Blueprint",			["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_c4_bomb"]  					={["name"] = "blueprint_c4_bomb",				["label"] = "C4 Blueprint",						["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_tunerlaptop"]  				={["name"] = "blueprint_tunerlaptop",			["label"] = "Tunerlaptop Blueprint",			["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_boostingtablet"]  			={["name"] = "blueprint_boostingtablet",		["label"] = "Boosting Tablet Blueprint",		["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_hackingdevice"]  			={["name"] = "blueprint_hackingdevice",			["label"] = "Hackinig Device Blueprint",		["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_gpshackingdevice"]  		={["name"] = "blueprint_gpshackingdevice",		["label"] = "GPS Hackinig Device Blueprint",	["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},

--Ammo

["blueprint_rifle_ammo"]  				={["name"] = "blueprint_rifle_ammo",			["label"] = "Rifle Ammo Blueprint",				["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_mg_ammo"]  					={["name"] = "blueprint_mg_ammo",				["label"] = "MG Ammo Blueprint",				["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_snp_ammo"]  				={["name"] = "blueprint_snp_ammo",				["label"] = "Sniper Rifle Ammo Blueprint",		["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},

-- Weapon Parts
["blueprint_pistol-receiver"]  			={["name"] = "blueprint_pistol-receiver",		["label"] = "Pistol Receiver Blueprint",		["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_shotgun-receiver"]  		={["name"] = "blueprint_shotgun-receiver",		["label"] = "Shotgun Receiver Blueprint",		["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_smg-receiver"]  			={["name"] = "blueprint_smg-receiver",			["label"] = "SMG Receiver Blueprint",			["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_rifle-receiver"]  			={["name"] = "blueprint_rifle-receiver",		["label"] = "Rifle Receiver Blueprint",			["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},

-- Weapons
["blueprint_weapon_appistol"]  			={["name"] = "blueprint_weapon_appistol",		["label"] = "AP Pistol Blueprint",				["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_machinepistol"]  	={["name"] = "blueprint_weapon_machinepistol",	["label"] = "Machine Pistol Blueprint",			["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_fnx45"]  			={["name"] = "blueprint_weapon_fnx45",			["label"] = "FN 45 Blueprint",					["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_assaultsmg"]  		={["name"] = "blueprint_weapon_assaultsmg",		["label"] = "Assault SMG Blueprint",			["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_mac10"]  			={["name"] = "blueprint_weapon_mac10",			["label"] = "MAC10 Blueprint",					["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_remington"]  		={["name"] = "blueprint_weapon_remington",		["label"] = "Remington Blueprint",				["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_dbshotgun"]  		={["name"] = "blueprint_weapon_dbshotgun",		["label"] = "Double Barrel Shotgun Blueprint",	["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_bullpuprifle"]  		={["name"] = "blueprint_weapon_bullpuprifle",	["label"] = "Bullpup Rifle Blueprint",			["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_ak47"]  				={["name"] = "blueprint_weapon_ak47",			["label"] = "AK47 Blueprint",					["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_mg"]  				={["name"] = "blueprint_weapon_mg",				["label"] = "Machinie Gun Blueprint",			["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},
["blueprint_weapon_sniperrifle"]  		={["name"] = "blueprint_weapon_sniperrifle",	["label"] = "Sniper Rifle Blueprint",			["weight"] = 300,		["type"] = "item",		["image"] = "blueprint.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,		["description"]	="A blueprint to craft something. This might be valuable to someone"},

	-- // RECYCLING \\ --
	["recyclablematerial"] 			 = {["name"] = "recyclablematerial", 			["label"] = "Recycle Box", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "recyclablematerial.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A box of Recyclable Materials"},
	["bottle"] 						 = {["name"] = "bottle", 			  	  		["label"] = "Empty Bottle", 			["weight"] = 10, 		["type"] = "item", 		["image"] = "bottle.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A glass bottle"},
	["can"] 						 = {["name"] = "can", 			  	  			["label"] = "Empty Can", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "can.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "An empty can, good for recycling"},
	["hotlaptop"]                    = {["name"] = "hotlaptop",                  	 ["label"] = "Hot Laptop",              ["weight"] = 500,       ["type"] = "item",      ["image"] = "blacklaptop.png",          ["unique"] = true,     	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A laptop to do some crazy stuff"},

    
    -- Carboosting
    ['boostingtablet'] = { ['name'] = 'boostingtablet', ['label'] = 'Boosting tablet', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'boostingtablet.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = "Seems like something's installed on this."},
    ['hackingdevice'] = { ['name'] = 'hackingdevice', ['label'] = 'Hacking device', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'hackingdevice.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Will allow you to bypass vehicle security systems.' },
    ['gpshackingdevice'] = { ['name'] = 'gpshackingdevice', ['label'] = 'GPS hacking device', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'gpshackingdevice.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'If you wish to disable vehicle GPS systems.' },
    ["racingtablet"] 		 	 		= {["name"] = "racingtablet",           		["label"] = "Racing Tablet",	 		["weight"] = 1000, 		["type"] = "item", 		["image"] = "racingtablet.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A tablet used by street racers."},
	
	-- Car Radio
	['radiocar_dismounter'] = { ['name'] = 'radiocar_dismounter', ['label'] = 'radiocar_dismounter', ['weight'] = 100, ['type'] = 'item', ['image'] = 'radiocar.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'radiocar_dismounter' },
	['radiocar'] = { ['name'] = 'radiocar', ['label'] = 'radiocar', ['weight'] = 100, ['type'] = 'item', ['image'] = 'radiocar.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'radiocar' },

	-- Burner Phone
	['burnerphone'] = {    ['name'] = 'burnerphone',    ['label'] = 'Burner Phone',    ['weight'] = 150,    ['type'] = 'item',    ['image'] = 'burnerphone.png',    ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = false,    ['combinable'] = nil,    ['description'] = 'Somekind of lost Phone?'},
	['burnerphonevpn'] = {    ['name'] = 'burnerphonevpn',    ['label'] = 'Soleware VPN',    ['weight'] = 250,    ['type'] = 'item',    ['image'] = 'burnerphonevpn.png',    ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = false,    ['combinable'] = nil,    ['description'] = 'Somekind of lost VPN from Soleware?'},

	['bricks'] = {    ['name'] = 'bricks',    ['label'] = 'Bricks',    ['weight'] = 250,    ['type'] = 'item',    ['image'] = 'bricks.png',    ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = false,    ['combinable'] = nil,    ['description'] = 'You got scammed'},
	['baggedflour'] = {    ['name'] = 'baggedflour',    ['label'] = 'Bags of Flour',    ['weight'] = 250,    ['type'] = 'item',    ['image'] = 'bagsofflour.png',    ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = false,    ['combinable'] = nil,    ['description'] = 'This is flour, not drugs. You got scammed'},

    ["licenseplate"] 		 	 	 		 = {["name"] = "licenseplate",         		["label"] = "Fake Plate Kit",			["weight"] = 0, 		["type"] = "item", 		["image"] = "image1.png", 				["unique"] = true,     ["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A License Plate"},

['nikon']                        = {['name'] = 'nikon',                         ['label'] = 'Nikoff G900',              ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'nikon.png',                ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Caught in 4K'},
["gsrtestkit"]                   = {["name"] = "gsrtestkit",                    ["label"] = "GSR Field Test Kit",       ["weight"] = 200,       ["type"] = "item",      ["image"] = "gsrtestkit.png",           ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = 'A field GSR test kit containing several test strips'},
["dnatestkit"]                   = {["name"] = "dnatestkit",                    ["label"] = "DNA Field Swab Kit",       ["weight"] = 200,       ["type"] = "item",      ["image"] = "dnatestkit.png",           ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = 'A field DNA swab kit containing several vials and swabs'},
["drugtestkit"]                  = {["name"] = "drugtestkit",                   ["label"] = "Drug Test Kit",            ["weight"] = 200,       ["type"] = "item",      ["image"] = "drugtestkit.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = 'A multipanel field test kit used to test for popular drugs in a suspects saliva, it\'s probably accurate.'},
["breathalyzer"]                 = {["name"] = "breathalyzer",                  ["label"] = "Breathalyzer",             ["weight"] = 200,       ["type"] = "item",      ["image"] = "breathalyzer.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = 'A vintage 2000\'s WiWang breathalyzer engraved Property of LSPD'},
['accesstool']                   = {['name'] = 'accesstool',                    ['label'] = 'Access Tool',              ['weight'] = 500,       ['type'] = 'item',      ['image'] = 'accesstool.png',           ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Snap into an access tool.'},
["fingerprintreader"]            = {["name"] = "fingerprintreader",             ["label"] = "Pro Tech XFR8001",         ["weight"] = 200,       ["type"] = "item",      ["image"] = "fingerprintreader.png",    ["unique"] = true,      ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = 'A Pro Tech mobile fingerprint reader that looks like it\'s seen better days, currently stuck in french.'},
['sdcard']                       = {['name'] = 'sdcard',                        ['label'] = 'SD Card',                  ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'sdcard.png',               ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'People still use these??'},
['microfibercloth']              = {['name'] = 'microfibercloth',               ['label'] = 'Microfiber Cloth',         ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'microfibercloth.png',      ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Polyester, but fluffy'},
['blox']                         = {['name'] = 'blox',                          ['label'] = 'Blox Multisurface',        ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'blox.png',                 ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Kills everything!'},
['fingerprintkit']               = {['name'] = 'fingerprintkit',                ['label'] = 'Fingerprint Kit',          ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'fingerprintkit.png',       ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A small kit that includes fingerprint dust, chemicals, and a brush for developing fingerprints'},
['mikrosil']                     = {['name'] = 'mikrosil',                      ['label'] = 'Mikrosil',                 ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'mikrosil.png',             ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Two tubes of silicon casting material used to lift fingerprints from irregular surfaces'},
['fingerprinttape']              = {['name'] = 'fingerprinttape',               ['label'] = 'Fingerprint Tape',         ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'fingerprinttape.png',      ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Extra clear tape used to lift fingerprints from smooth, nonporous surfaces'},


["kq_outfitbag"] 			 	 = {["name"] = "kq_outfitbag", 				    ["label"] = "Outfit bag",	 		    ["weight"] = 4000, 		["type"] = "item", 		["image"] = "kq_outfitbag.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Holds different outfits"},

['weapon_marksmanpistol'] 		 = {['name'] = 'weapon_marksmanpistol', 	 	['label'] = 'Radar Gun', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'radargun.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Radargun for police to use'},

['bolt_cutter'] = {['name'] = 'bolt_cutter', ['label'] = 'Bolt Cutters', ['weight'] = 500, ['type'] = 'item', ['image'] = 'bolt_cutter.png', ['unique'] = false , ['useable'] = false, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A pair of bolt cutters for breaking locks/'},    

['deliverylist'] 			 	 	 = {['name'] = 'deliverylist', 				['label'] = 'Delivery List', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'deliverylist.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A long list of customers and deliveries..'},

["package"] 					 = {["name"] = "package", 			 	["label"] = "Suspicious Package", 		        ["weight"] = 500, 		["type"] = "item", 		["image"] = "package.png", 				["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Package covered in tape and milk stickers. Marked for Police Seizure."},

['vpn'] 				 		 = {['name'] = 'vpn',  			    			["created"] = nil,    ["decay"] = 5.0,  ['label'] = 'VPN', 					['weight'] = 20000, 	['type'] = 'item', 		['image'] = 'vpn.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = ''},

["rolls"] 					 = {["name"] = "rolls", 			 	["label"] = "Roll of Small Notes", 		        ["weight"] = 100, 		["type"] = "item", 		["image"] = "cashroll.png", 				["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Lots of low denominators - Indicates drug sales."},

['bands'] 				 = {['name'] = 'bands', 			  	  	['label'] = 'Band of Notes', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bands.png', 			['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,	   ['combinable'] = nil,   ['description'] = 'Lots of low denominators - Indicates drug sales.'},


["scratch_ticket"] 		 = {["name"] = "scratch_ticket", 				["label"] = "Scratch Card", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "scratchcard.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "Goodluck!"},


-- // SMOKING ITEMS \\ --

["redw"] 						 = {["name"] = "redw", 			 	  	  		["label"] = "SBM Smoke Pack", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "redw.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Take out your cigarettes"},
["marlboro"] 				     = {["name"] = "marlboro", 			 	  	  	["label"] = "Angels Smoke Pack", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "marlboro.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Take out your cigarettes"},
["cubancigar"] 			         = {["name"] = "cubancigar", 			 	  	["label"] = "Cuban Cigar", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "cubancigar.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "The Best of the Best"},
["tobacco"] 	             	 = {["name"] = "tobacco", 			 			["label"] = "Tobacco", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "tobacco.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Tobacco Leaf"},
["davidoffcigar"] 	             = {["name"] = "davidoffcigar", 			 	["label"] = "Davidoff Cigar", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "davidoffcigar.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Real cigar"},
["redwcig"] 				     = {["name"] = "redwcig", 			 	  	  	["label"] = "Wave Cigarette", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "redwcig.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Smoking cigarette"},	
["marlborocig"] 		         = {["name"] = "marlborocig", 			 	  	["label"] = "Angels Cigarette", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "marlborocig.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Smoking cigarette"},
["vape"] 						 = {["name"] = "vape", 			 	  	  		["label"] = "Vape", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "vape.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Electronic cigarette"},
["liquid"] 					     = {["name"] = "liquid", 			 	  	  	["label"] = "Liquid", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "liquid.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Vape liquid"},
["lighter"] 					 = {["name"] = "lighter", 			 	  	  	["label"] = "Lighter", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "lighter.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cigarette lighter"},
["bong"] 						 = {["name"] = "bong", 			 	  	  		["label"] = "Bong", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "bong.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Bong"},
["ocb_paper"] 					 = {["name"] = "ocb_paper", 			 	  	["label"] = "Ocb Paper", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "ocb_paper.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ocb paper for rolling joints"},
["og_kush_joint"] 				 = {["name"] = "og_kush_joint", 			 	["label"] = "Og Kush Joint", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "og_kush_joint.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Good joint"},
["blue_dream_joint"] 			 = {["name"] = "blue_dream_joint", 			 	["label"] = "Blue Dream Joint", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "blue_dream_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Good joint"},
["purple_haze_joint"] 			 = {["name"] = "purple_haze_joint", 			["label"] = "Purple Haze Joint", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "purple_haze_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Good joint"},
["banana_kush_joint"] 			 = {["name"] = "banana_kush_joint", 			["label"] = "Banana Lush Joint", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "banana_kush_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Good joint"},
["og_kush_bag"] 				 = {["name"] = "og_kush_bag", 			 		["label"] = "Og Kush Bag", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "og_kush_bag.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
["blue_dream_bag"] 			 	 = {["name"] = "blue_dream_bag", 			 	["label"] = "Blue Dream Bag", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "blue_dream_bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
["purple_haze_bag"] 			 = {["name"] = "purple_haze_bag", 				["label"] = "Purple Haze Bag", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "purple_haze_bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
["banana_kush_bag"] 			 = {["name"] = "banana_kush_bag", 				["label"] = "Banana Kush Bag", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "banana_kush_bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
["og_kush_weed"] 				 = {["name"] = "og_kush_weed", 			 	  	["label"] = "Og Kush Weed 1G", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "og_kush_weed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
["blue_dream_weed"] 			 = {["name"] = "blue_dream_weed", 			 	["label"] = "Blue Dream Weed 1G", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "blue_dream_weed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
["banana_kush_weed"] 			 = {["name"] = "banana_kush_weed", 			 	["label"] = "Banana Kush Weed 1G", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "banana_kush_weed.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
["purple_haze_weed"] 			 = {["name"] = "purple_haze_weed", 			 	["label"] = "Purple Haze Weed 1G", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "purple_haze_weed.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},

-- // GUN DROPS \\ --
['redchip'] 				 = {['name'] = 'redchip', 			  	['label'] = 'Red Decryption Key', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'redchip.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Red Key'},
['greenchip'] 				 = {['name'] = 'greenchip', 			['label'] = 'Green Decryption Key', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'greenchip.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, ['description'] = 'Green Key'},
['bluechip'] 				 = {['name'] = 'bluechip', 			  	['label'] = 'Blue Decryption Key', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'bluechip.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	  ['combinable'] = nil,  ['description'] = 'Blue Key'},

-- // OTHER ITEMS \\ --
['ps5'] 			 		     = {['name'] = 'ps5', 									['label'] = 'PS5 Console', 		   				['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'ps5.png', 							['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'PS5? You filthy casual!'},
['ps2'] 			     		 = {['name'] = 'ps2', 									['label'] = 'PS2 Console', 		    			['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'ps2.png', 							['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'PS2? You filthy casual!'},
['xboxx'] 			 			 = {['name'] = 'xboxx', 								['label'] = 'Xbox X Console', 		    		['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'xboxx.png', 							['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Xbox X? You filthy casual!'},
['gamecube'] 			         = {['name'] = 'gamecube', 					    		['label'] = 'Gamecube Console', 		    	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'gamecube.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Super smash bros brawl anyone?'},
['actionfigure'] 	 	         = {['name'] = 'actionfigure', 					    	['label'] = 'Action Figure', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'figure.png', 						['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A Minted looking action figure, still has the packaging..'},
['bobross'] 	 	        	 = {['name'] = 'bobross', 					    		['label'] = 'Bob Ross Photo', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'bobross.png', 						['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'We dont make mistakes, just happy little accidents'},
['chalecobomba'] 	 	         = {['name'] = 'chalecobomba', 					    	['label'] = 'Bomb Vest', 						['weight'] = 500, 		['type'] = 'item', 		['image'] = 'chalecobomba.png', 						['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'You really dont want to wear this'},


	-- // CHOP SHOP \\ --
	['carpart_wheel'] 			     = {['name'] = 'carpart_wheel', 				['label'] = 'Car Wheel', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'carpart_wheel.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A wheel from a vehicle'},
	['carpart_door'] 			     = {['name'] = 'carpart_door', 					['label'] = 'Car Door', 				['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'carpart_door.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A door from a vehicle'},
	['carpart_hood'] 			     = {['name'] = 'carpart_hood', 					['label'] = 'Car Hood', 				['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'carpart_hood.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A hood from a vehicle'},
	['carpart_trunk'] 			     = {['name'] = 'carpart_trunk', 				['label'] = 'Car Trunk', 				['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'carpart_trunk.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A trunk from a vehicle'},


	-- // HUNTING \\ --
	["huntingknife"] 					 = {["name"] = "huntingknife", 			 	["label"] = "Hunting Knife", 		        ["weight"] = 0, 		["type"] = "item", 		["image"] = "huntingknife.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Hunting Knife."},
	["huntingbait"] 				     = {["name"] = "huntingbait", 			  	["label"] = "Hunting Bait", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "huntingbait.png", 		        ["unique"] = false, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Bait for hunting."},
	["boarmeat"] 					     = {["name"] = "boarmeat", 			 	    ["label"] = "Boar Meat", 		            ["weight"] = 0, 		["type"] = "item", 		["image"] = "boarmeat.png", 				["unique"] = false, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Meat of Boar."},
	["boartusk"] 				         = {["name"] = "boartusk", 			  	    ["label"] = "Boar Tusk", 				    ["weight"] = 0, 		["type"] = "item", 		["image"] = "", 		        			["unique"] = false, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Tusk of a Boar."},
	["deerskin"] 					     = {["name"] = "deerskin", 			 	    ["label"] = "Deer Skin", 		            ["weight"] = 0, 		["type"] = "item", 		["image"] = "deer-hide.png", 				["unique"] = false, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Skin of a deer."},
	["deermeat"] 				         = {["name"] = "deermeat", 			    	["label"] = "Deer Meat", 				    ["weight"] = 0, 		["type"] = "item", 		["image"] = "deermeat.png", 		        ["unique"] = false, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Meat of a deer."},
	["coyotefur"] 					     = {["name"] = "coyotefur", 			 	["label"] = "Coyote Fur", 		            ["weight"] = 0, 		["type"] = "item", 		["image"] = "coyotefur.png", 				["unique"] = false, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Fur of a coyote."},
	["coyotemeat"] 				         = {["name"] = "coyotemeat", 			  	["label"] = "Coyote Meat", 				    ["weight"] = 0, 		["type"] = "item", 		["image"] = "coyotemeat.png", 		        ["unique"] = false, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Meat of a coyote."},

	-- // GOLD PANNING \\ --
	["pickaxe"] 			 	     = {["name"] = "pickaxe", 						["label"] = "Pick Axe", 				["weight"] = 400, 		["type"] = "item", 		["image"] = "pickaxe.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Used for mining"},
	["washing_pan"] 			 	 = {["name"] = "washing_pan", 					["label"] = "Washing Pan", 				["weight"] = 400, 		["type"] = "item", 		["image"] = "washing_pan.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Used for Washing Stuff..."},
	["stone"] 						 = {["name"] = "stone", 			  	  	  	["label"] = "Stone", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "stone.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Just a Stone"},
	["washed_stone"] 				 = {["name"] = "washed_stone", 			  	  	["label"] = "Washed Stone", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "washed_stone.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A wet stone..."},
	["diamond"] 					 = {["name"] = "diamond", 			  	  	  	["label"] = "Diamond", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "diamond.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Shiny Diamond"},
	["emerald"] 					 = {["name"] = "emerald", 			  	  	  	["label"] = "Emerald", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "emerald.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Emerald"},
	["goldnugget"] 					 = {["name"] = "goldnugget", 			  	  	["label"] = "Gold Nugget", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "diamond.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Shiny Diamond"},
	
	-- // RECYCLING \\ --
	["recyclablematerial"] 			 = {["name"] = "recyclablematerial", 			["label"] = "Recycle Box", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "recyclablematerial.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A box of Recyclable Materials"},
	["bottle"] 						 = {["name"] = "bottle", 			  	  		["label"] = "Empty Bottle", 			["weight"] = 10, 		["type"] = "item", 		["image"] = "bottle.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A glass bottle"},
	["can"] 						 = {["name"] = "can", 			  	  			["label"] = "Empty Can", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "can.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "An empty can, good for recycling"},
	["hotlaptop"]                    = {["name"] = "hotlaptop",                  	 ["label"] = "Hot Laptop",              ["weight"] = 500,       ["type"] = "item",      ["image"] = "blacklaptop.png",          ["unique"] = true,     	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A laptop to do some crazy stuff"},

		["metaldetector"] = {["name"] = "metaldetector",["label"] = "Metal Detector",["weight"] = 200,["type"] = "item",["image"] = "metaldetector.png",["unique"] = false,["useable"] = true,["shouldClose"] = true,["combinable"] = nil,["description"] = "Detect Metal beep"},

        ['hack_usb']                      = {['name'] = 'hack_usb',                        ['label'] = 'Hacking USB',                ['weight'] = 0,            ['type'] = 'item',         ['image'] = 'hack_device.png',              ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A USB STick. I wonder what it is for?'},

        ["money-roll"] 			 	 	 = {["name"] = "money-roll", 			 		["label"] = "Money Roll", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "money-roll.png", 			["unique"] = false, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Dirty Money, this could use a clean."},


        -- // DRUGS  \\ --
        -- Buy from Weed Shop
        ['plastic-bag'] 			 = {['name'] = 'plastic-bag', 		['label'] = 'Plastic Bag', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'plastic-bag.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A baggy for crafting items'},
        
        -- // Drugs Weed
        --Field - vector4(2925.66, 4678.04, 49.69, 7.84)
        ['cannabis'] 			 = {['name'] = 'cannabis', 			 	['label'] = 'Cannabis', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'cannabis.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Cannabis'},
        -- Final Product - Processor vector4(1061.7, -2451.28, 23.29, 0.0)
        ['weed_bag'] 			 = {['name'] = 'weed_bag', 			 	['label'] = 'Weed Bag', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A bag of weed'},
        
        -- // Drugs Cocaine
        --Field - vector4(-2165.35, 2678.72, 2.86, 7.84)
        ['coke_leaf'] 			 = {['name'] = 'coke_leaf', 			['label'] = 'Cocaine Leaf', 		['weight'] = 200, 		['type'] = 'item', 		['image'] = 'coke_leaf.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A Coke Leaf'},
        -- Burner Phone | vector4(590.32, -3281.32, 6.07, 357.13)
        ["levamisole"] 	     	 = {["name"] = "levamisole", 			["label"] = "Levamisole", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "levamisole.png", 		 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "levamisole"},
        
        ['bakingsoda'] 			 = {['name'] = 'bakingsoda', 			['label'] = 'Baking Soda', 		['weight'] = 200, 		['type'] = 'item', 		['image'] = 'bakingsoda.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Baking Soda'},
        -- Crafted with Coke Leaf and Levamisole  vector4(1328.2, -1650.8, 44.25, 216.68)
        ["cokepowder"] 	     	 = {["name"] = "cokepowder", 			["label"] = "Cocaine Powder", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "cokepowder.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Coke Powder"},
        -- Final Product | Processing vector4(1328.2, -1650.8, 44.25, 216.68)
        ['coke-bag'] 			 = {['name'] = 'coke-bag', 			 	['label'] = 'Coke Bag', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'cocaine_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A Bag of Cocaine'},
        
        -- // Drugs Meth
        -- Field Barrels | vector4(1975.99, -2647.12, -0.32, 203.03)
        ["acetone"] 				 	 = {["name"] = "acetone", 			 ["label"] = "Acetone", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "acetone.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Acetone Chemical Bottle"},
        -- Collect from Shed | vector4(988.2, 3578.48, 34.59, 317.81)
        ["lithium"] 				 	 = {["name"] = "lithium", 			 ["label"] = "Lithium Batteries", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "lithium.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Lithium Batteries"},
        -- Crafted
        ["methlab"] 				 	 = {["name"] = "methlab", 			 ["label"] = "Lab Kit", 		["weight"] = 15000, 	["type"] = "item", 		["image"] = "lab.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A Chemistry Set"},
        -- Final Product | Craft in Journey Van
        ["meth"] 				 	 	 = {["name"] = "meth", 			     ["label"] = "Meth", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "meth_baggy.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Meth"},
        
        -- // Drugs LSD
        -- Field Barrels | vector4(1981.19, 524.27, 161.96, 6.3)
        ["hydrochloricacid"] 	     = {["name"] = "hydrochloricacid", 		["label"] = "Hydrochloric Acid", 	["weight"] = 500, 		["type"] = "item", 		["image"] = "hydrochloricacid.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A colorless, nonflammable aqueous solution or gas"},
        -- Field Barrels | vector4(-1775.09, 3007.74, 41.34, 228.84)
        ["sulphuricacid"] 	     	 = {["name"] = "sulphuricacid", 		["label"] = "Sulphuric Acid", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "sulphuricacid.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Hydrogen Sulfate"},
        -- Process from hydrochloricacid/sulphuricacid | vector4(2856.1, 4449.85, 48.95, 201.76)
        ["thionylchloride"] 	     = {["name"] = "thionylchloride", 		["label"] = "Thionyl Chloride", 	["weight"] = 500, 		["type"] = "item", 		["image"] = "thionylchloride.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A volatile colourless liquid with an unpleasant acrid odour."},
        -- Collect from Shed | vector4(988.2, 3578.48, 34.59, 317.81)
        ["lsd_paper"] 	     		 = {["name"] = "lsd_paper", 			["label"] = "LSD Paper", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "lsd_paper.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A strange Paper"},
        -- Final Product - | vector4(2856.41, 4455.63, 48.48, 9.42)
        ["acid_hit"] 	     		 = {["name"] = "acid_hit", 				["label"] = "Acid Hit", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "acid_hit.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A Hit of Acid"},
        
        
        
        
        -- // Drugs Extacsy
        --Field - vector4(3263.46, -137.41, 16.44, 69.05)
        ["sassafras"] 	     = {["name"] = "sassafras", 		["label"] = "Sassafras", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "sassafras.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Sassafras"},
        -- Process from Sassafras | vector4(1144.33, -1658.97, 36.61, 296.29)
        ["safarole"] 	     = {["name"] = "safarole", 			["label"] = "Safarole", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "safarole.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Safarole"},
        -- Fields - Barrels vector4(-172.48, 6169.23, 31.21, 352.11)
        ["ephedrine"] 		 = {["name"] = "ephedrine", 		["label"] = "Ephedrine", 			["weight"] = 250, 		["type"] = "item", 		["image"] = "ephedrine.png", 		["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Chemical used in the production of MDMA."},
        -- Heist HumanLabs
        ["amphetamine"] 	 = {["name"] = "amphetamine", 		["label"] = "Amphetamine", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "amphetamine.png", 		["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Amphetamine."},
        -- Process from Safarole/Ephedrine/Amphetamine | vector4(1978.71, -2607.87, 3.55, 318.17)
        ["adderall"] 	 = {["name"] = "adderall", 		["label"] = "Adderall", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "adderall.png", 		["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Medication used to treat ADHD."},
        -- Process from Safarole/Ephedrine/Amphetamine | vector4(1978.71, -2607.87, 3.55, 318.17)
        ["mdma"] 			 = {["name"] = "mdma", 			   ["label"] = "MDMA", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "mdma.png", 			["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "MDMA."},
        -- Final Product | Pill Press vector4(1443.02, -2229.52, 61.66, 177.59)
        ["ecstasy_pill"] 	 = {["name"] = "ecstasy_pill", 	   ["label"] = "Ecstasy", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "ecstasy_pill.png", 	["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Extacsy Pill."},
        
        -- // Drugs HEROIN
        ["syringe"] 	     = {["name"] = "syringe", 		["label"] = "Empty Syringe", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "syringe.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "An Empty Syringe"},
        ["opium"] 	     	 = {["name"] = "opium", 		["label"] = "Opium", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "opium.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Opium"},
        ["poppy"] 	     	 = {["name"] = "poppy", 		["label"] = "Poppy", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "poppy.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Poppy"},
        ["petroleum"] 	     = {["name"] = "petroleum", 	["label"] = "Petroleum Ether", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "petroleum.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Petroleum Ether"},
        ["ammonium"] 	     = {["name"] = "ammonium", 		["label"] = "Ammonium Chloride", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "ammonium.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Ammonium Chloride"},
        ["morphine"] 	     = {["name"] = "morphine", 		["label"] = "Morphine", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "morphine.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Morphine"},
        ["heroin-powder"] 	 = {["name"] = "heroin-powder", ["label"] = "Heroin Powder", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "heroin-powder.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Heroin Powder"},
        ["heroin"] 	     	 = {["name"] = "heroin", 		["label"] = "Heroin", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "heroin.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Dont inject this"},
        
        -- // Moonshine
        ["corn"] 	     	 = {["name"] = "corn", 				["label"] = "Corn", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "corn.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Its Corn"},
        ["cornmeal"] 	     = {["name"] = "cornmeal", 			["label"] = "Cornmeal", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "cornmeal.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Cornmeal, Yum!"},
        ["yeast"] 	     	 = {["name"] = "yeast", 			["label"] = "Yeast", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "yeast.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Yeast, a cooking ingredient"},
        ["moonshine"] 	     = {["name"] = "moonshine", 		["label"] = "Moonshine", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "moonshine.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Unbottled Moonshine"},
        ["bottlemoonshine"]  = {["name"] = "bottlemoonshine", 	["label"] = "Bottle of Moonshine", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "bottlemoonshine.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A bottle of Moonshine"},
        
        
        ["scale"] 	 = {["name"] = "scale", 	   ["label"] = "Scale", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "scale.png", 	["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Scale. Pretty self explanatory"},
        
        
        -- // Weed Planting \\ --
        
        ["weed_insecticide"] 			 	   = {["name"] = "weed_insecticide", 					["label"] = "Insecticide", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "insecticides.png", 	  	  ["unique"] = false, 	  ["useable"] = true, 	   ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "Insecticides for marijuana"},
        ["acid_bottle"] 			 	   	   = {["name"] = "acid_bottle", 						["label"] = "Acid", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "acid.png", 	  	  		  ["unique"] = false, 	  ["useable"] = false, 	   ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "Bottle of acid solution"},
        ["alkaline_bottle"] 			 	   = {["name"] = "alkaline_bottle", 					["label"] = "Alkaline", 				["weight"] = 500, 		["type"] = "item", 		["image"] = "alkaline.png", 	  	  	  ["unique"] = false, 	  ["useable"] = false, 	   ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "Bottle of alkaline solution"},
        
        
        ["thermitecharge"] 			 	 	 = {["name"] = "thermitecharge", 			  	["label"] = "Thermite Charge", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "thermitecharge.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Burning... Hahaahaha.."},
        
        ["robbery_green_laptop"] 			 = {["name"] = "robbery_green_laptop", 			["label"] = "Green Laptop", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "robbery_green_laptop.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ugly Green Laptop."},
        ["robbery_grinder"] 			 	 = {["name"] = "robbery_grinder", 			  	["label"] = "Grinder", 						["weight"] = 1000, 		["type"] = "item", 		["image"] = "anglegrinder.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "This is a tool for men, not gamers."},
        ["robbery_red_pen"] 			 	 = {["name"] = "robbery_red_pen", 			  	["label"] = "Red Pen", 						["weight"] = 1000, 		["type"] = "item", 		["image"] = "robbery_red_pen.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Red Pen"},
        ["robbery_red_laptop"] 			 	 = {["name"] = "robbery_red_laptop", 			["label"] = "Red Laptop", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "robbery_red_laptop.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Beautiful Red Laptop, So pretty, like a fish."},
        
        ['agraphicnovel']  			 	 = {['name'] = 'agraphicnovel', 				['label'] = 'Ancient Graphic Novel', 	['weight'] = 1000, 		['type'] = 'item',  	['image'] = 'agraphicnovel.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'an ancient book with a odd leathery skin binding.'},
        ['shovel']  			 		 = {['name'] = 'shovel', 						['label'] = 'Shovel', 					['weight'] = 5000, 		['type'] = 'item',  	['image'] = 'shovel.png', 					['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'I can dig things with this..'},
        
        -- Camp --
        ["camp"] 					= {["name"] = "camp", 			 	  	  	["label"] = "Camping Gear", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "camp.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Camping"},
        
        --Jim-Lumberjack
        ["powersaw"] 		= {["name"] = "powersaw",       	["label"] = "Power Saw", 		["weight"] = 1000,  ["type"] = "item",  ["image"] = "powersaw.png",	["unique"] = true,	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        
        ["log"] 	    	= {["name"] = "log",				["label"] = "Log",	 			["weight"] = 2000,  ["type"] = "item",  ["image"] = "log.png",			["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        ["bark"] 			= {["name"] = "bark",       		["label"] = "Tree Bark", 		["weight"] = 100,   ["type"] = "item",  ["image"] = "bark.png",			["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        ["debarkedlog"]		= {["name"] = "debarkedlog",		["label"] = "Debarked Log", 	["weight"] = 100,   ["type"] = "item",  ["image"] = "debarkedlog.png",	["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        ["wood"]        	= {["name"] = "wood", 				["label"] = "Wood Planks", 		["weight"] = 100,   ["type"] = "item",  ["image"] = "woodplank.png",	["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        
        ["paper"]       	= {["name"] = "paper",      		["label"] = "Roll of Paper",	["weight"] = 100,   ["type"] = "item",  ["image"] = "paperroll.png",	["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        ["cardhat"]    	 	= {["name"] = "cardhat",    		["label"] = "Cardboard Box",	["weight"] = 100,   ["type"] = "item",  ["image"] = "cardhat.png",		["unique"] = true,	["useable"] = true,     ["shouldClose"] = false,        ["description"] = ""},
        
        ["fakecash"]    	= {["name"] = "fakecash",   		["label"] = "Fake Cash",		["weight"] = 100,   ["type"] = "item",  ["image"] = "fakecash.png",		["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        ["fakecert"]    	= {["name"] = "fakecert",   		["label"] = "Fake Certificate",	["weight"] = 100,	["type"] = "item",  ["image"] = "fakecert.png",		["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        ["fakeweaplicence"]	= {["name"] = "fakeweaplicence",   	["label"] = "Fake Weapon Licence",["weight"] = 100, ["type"] = "item",  ["image"] = "fakeweap.png",		["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        ["fakedrivelicence"]= {["name"] = "fakedrivelicence",   ["label"] = "Fake Drivers Licence",["weight"] = 100,["type"] = "item",  ["image"] = "fakedriver.png",	["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        ["fakelawyer"]		= {["name"] = "fakelawyer",   		["label"] = "Fake Laywer Pass",	["weight"] = 100,	["type"] = "item",  ["image"] = "fakelawyer.png",	["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        
        ["charcoal"] 	    = {["name"] = "charcoal",			["label"] = "Charcoal",	 		["weight"] = 100,  ["type"] = "item",  ["image"] = "charcoal.png",		["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        ["hammerhandle"] 	= {["name"] = "hammerhandle",		["label"] = "Hammer Handle",	["weight"] = 100,  ["type"] = "item",  ["image"] = "hammerhandle.png",	["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        ["axehandle"] 		= {["name"] = "axehandle",			["label"] = "Axe Handle",		["weight"] = 100,  ["type"] = "item",  ["image"] = "axehandle.png",		["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        ["batbase"] 		= {["name"] = "batbase",			["label"] = "Bat Base",			["weight"] = 100,  ["type"] = "item",  ["image"] = "batbase.png",		["unique"] = false, 	["useable"] = false,     ["shouldClose"] = false, ["description"] = ""},
        
        ["origami1"]    	= {["name"] = "origami1",    		["label"] = "Origami Scorpion",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami1.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami2"]    	= {["name"] = "origami2",    		["label"] = "Origami Spider",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami2.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami3"]    	= {["name"] = "origami3",    		["label"] = "Origami Poop",		["weight"] = 100,  ["type"] = "item",  ["image"] = "origami3.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami4"]    	= {["name"] = "origami4",    		["label"] = "Origami Dragon",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami4.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami5"]    	= {["name"] = "origami5",    		["label"] = "Origami Unicorn",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami5.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami6"]    	= {["name"] = "origami6",    		["label"] = "Origami Pig",		["weight"] = 100,  ["type"] = "item",  ["image"] = "origami6.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami7"]    	= {["name"] = "origami7",    		["label"] = "Origami Phoenix",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami7.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami8"]    	= {["name"] = "origami8",    		["label"] = "Origami Plane",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami8.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami9"]    	= {["name"] = "origami9",    		["label"] = "Origami Whale",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami9.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami10"]    	= {["name"] = "origami10",    		["label"] = "Origami Dolphin",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami10.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami11"]    	= {["name"] = "origami11",    		["label"] = "Origami Bunny",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami11.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami12"]    	= {["name"] = "origami12",    		["label"] = "Origami Lion",		["weight"] = 100,  ["type"] = "item",  ["image"] = "origami12.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami13"]    	= {["name"] = "origami13",    		["label"] = "Origami Turkey",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami13.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami14"]    	= {["name"] = "origami14",    		["label"] = "Origami Eagle",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami14.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami15"]    	= {["name"] = "origami15",    		["label"] = "Origami Dinosaur",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami15.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami16"]    	= {["name"] = "origami16",    		["label"] = "Origami Butterfly",["weight"] = 100,  ["type"] = "item",  ["image"] = "origami16.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami17"]    	= {["name"] = "origami17",    		["label"] = "Origami Monkey",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami17.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami18"]    	= {["name"] = "origami18",    		["label"] = "Origami Mouse",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami18.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami19"]    	= {["name"] = "origami19",    		["label"] = "Origami Cockatiel",["weight"] = 100,  ["type"] = "item",  ["image"] = "origami19.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami20"]    	= {["name"] = "origami20",    		["label"] = "Origami Squirrel",	["weight"] = 100,  ["type"] = "item",  ["image"] = "origami20.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        ["origami21"]    	= {["name"] = "origami21",    		["label"] = "Origami Wolf",		["weight"] = 100,  ["type"] = "item",  ["image"] = "origami21.png",		["unique"] = true, 	["useable"] = true,     ["shouldClose"] = true,       ["description"] = ""},
        
        ["emsbag"]   	= {["name"] = "emsbag", 		["label"] = "emsbag", 	["weight"] = 150, 		["type"] = "item", 		["image"] = "emsbag.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
        ["firebag"]   	= {["name"] = "emsbag", 		["label"] = "Fire Bag", 	["weight"] = 150, 		["type"] = "item", 		["image"] = "emsbag.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
        
        
        ["crutch"]      = {["name"] = "crutch", ["label"] = "Crutches", ["weight"] = 1000, ["type"] = "item", ["image"] = "crutch.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A crutch, if you have a hard time walking!"}, 
        ["wheelchair"] 				     = {["name"] = "wheelchair", 			 	 ["label"] = "wheelchair", 		    ["weight"] = 500, 		["type"] = "item", 		["image"] = "wheelchair.png", 				    ["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Wheelchair"},
        ['walking_stick']  				= {['name'] = 'walking_stick', 		['label'] = 'Walkingstick',  	  			['weight'] = 1,  		['type'] = 'item',  	['image'] = 'walking_stick.png',  		['unique'] = false,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'A nice wooden walking stick'},
        
        ['robbery_boltcutter_01'] = {['name'] = 'robbery_boltcutter_01',['label'] = 'Boltcutter',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_boltcutter_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_card_01'] = {['name'] = 'robbery_card_01',['label'] = 'Cracked Keycard',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_card_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_drill_01'] = {['name'] = 'robbery_drill_01',['label'] = 'Small Drill',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_drill_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_explosive_01'] = {['name'] = 'robbery_explosive_01',['label'] = 'Explosive',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_explosive_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_explosive_02'] = {['name'] = 'robbery_explosive_02',['label'] = 'Big Explosive',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_explosive_02.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_fuse_01'] = {['name'] = 'robbery_fuse_01',['label'] = 'Fuse',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_fuse_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_gascutter_01'] = {['name'] = 'robbery_gascutter_01',['label'] = 'Gas Cutter',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_gascutter_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_glasscutter_01'] = {['name'] = 'robbery_glasscutter_01',['label'] = 'Glass Cutter',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_glasscutter_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_grinder_01'] = {['name'] = 'robbery_grinder_01',['label'] = 'Grinder',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_grinder_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_hdd_01'] = {['name'] = 'robbery_hdd_01',['label'] = 'Government Hardware',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_hdd_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_keycard_01'] = {['name'] = 'robbery_keycard_01',['label'] = 'Keycard Access 1',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_keycard_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_keycard_02'] = {['name'] = 'robbery_keycard_02',['label'] = 'Keycard Access 2',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_keycard_02.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_keycard_03'] = {['name'] = 'robbery_keycard_03',['label'] = 'Keycard Access 3',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_keycard_03.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_keycard_04'] = {['name'] = 'robbery_keycard_04',['label'] = 'Keycard Access 4',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_keycard_04.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_keycard_fib_01'] = {['name'] = 'robbery_keycard_fib_01',['label'] = 'FIB Keycard',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_keycard_fib_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_keycard_humanelabs_01'] = {['name'] = 'robbery_keycard_humanelabs_01',['label'] = 'Humane Keycard',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_keycard_humanelabs_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_keycard_humanelabs_02'] = {['name'] = 'robbery_keycard_humanelabs_02',['label'] = 'Humane Employe Keycard',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_keycard_humanelabs_02.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_keycard_iaa_01'] = {['name'] = 'robbery_keycard_iaa_01',['label'] = 'IAA Keycard',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_keycard_iaa_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_keycard_lifeinvader_01'] = {['name'] = 'robbery_keycard_lifeinvader_01',['label'] = 'Cleaning Service Keycard',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_keycard_lifeinvader_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_keycard_union_01'] = {['name'] = 'robbery_keycard_union_01',['label'] = 'Union Keycard',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_keycard_union_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_laptop_01'] = {['name'] = 'robbery_laptop_01',['label'] = 'Cracked Laptop',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_laptop_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_phone_01'] = {['name'] = 'robbery_phone_01',['label'] = 'Cracked Phone',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_phone_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_reward_bracelet_01'] = {['name'] = 'robbery_reward_bracelet_01',['label'] = 'Gold Bracelet',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_reward_bracelet_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_reward_necklace_01'] = {['name'] = 'robbery_reward_necklace_01',['label'] = 'Gold Necklace',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_reward_necklace_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_reward_ring_01'] = {['name'] = 'robbery_reward_ring_01',['label'] = 'Gold Ring',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_reward_ring_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_reward_watch_01'] = {['name'] = 'robbery_reward_watch_01',['label'] = 'Gold Watch',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_reward_watch_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_chemical_01'] = {['name'] = 'robbery_rewards_chemical_01',['label'] = 'Chemical Vial',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_chemical_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_coke_01'] = {['name'] = 'robbery_rewards_coke_01',['label'] = 'Coke Brick',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_coke_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_diamond_01'] = {['name'] = 'robbery_rewards_diamond_01',['label'] = 'Red Diamond',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_diamond_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_diamondbox_01'] = {['name'] = 'robbery_rewards_diamondbox_01',['label'] = 'Diamond Box',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_diamondbox_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_diamondnecklace_01'] = {['name'] = 'robbery_rewards_diamondnecklace_01',['label'] = 'Diamond Necklace',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_diamondnecklace_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_goldbar_01'] = {['name'] = 'robbery_rewards_goldbar_01',['label'] = 'Gold Bar',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_goldbar_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_painting_01'] = {['name'] = 'robbery_rewards_painting_01',['label'] = 'Painting Roll',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_painting_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_panther_01'] = {['name'] = 'robbery_rewards_panther_01',['label'] = 'Panther Statue',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_panther_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_silverbar_01'] = {['name'] = 'robbery_rewards_silverbar_01',['label'] = 'Silver Bar',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_silverbar_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_tequila_01'] = {['name'] = 'robbery_rewards_tequila_01',['label'] = 'Gold Tequila Bottle',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_tequila_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_tequila_02'] = {['name'] = 'robbery_rewards_tequila_02',['label'] = 'Tequila Bottle',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_tequila_02.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_rewards_weed_01'] = {['name'] = 'robbery_rewards_weed_01',['label'] = 'Weed Brick',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_rewards_weed_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_thermite_01'] = {['name'] = 'robbery_thermite_01',['label'] = 'Thermite',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_thermite_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_torch_01'] = {['name'] = 'robbery_torch_01',['label'] = 'Torch',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_torch_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        ['robbery_usb_01'] = {['name'] = 'robbery_usb_01',['label'] = 'Cracked USB',['weight'] = 0,['type'] = 'item',['image'] = 'robbery_usb_01.png',['unique'] = true,['useable'] = false,['shouldClose'] = false,['combinable'] = nil,['description'] = ''},
        
        -- Whitewidow items	
        
        ["weed_skunk_cbd_crop"] 	     = {["name"] = "weed_skunk_cbd_crop", 		["label"] = "CBD Skunk Crop", 			["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_skunk_crop.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD Skunk!"},
        ["weed_og-kush_cbd_crop"] 		 = {["name"] = "weed_og-kush_cbd_crop", 	["label"] = "CBD OG Kush Crop", 		["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_og-kush_crop.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD OG Kush"},
        ["weed_white-widow_cbd_crop"]    = {["name"] = "weed_white-widow_cbd_crop", ["label"] = "CBD White Widow Crop", 	["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_white-widow_crop.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD White Widow"},
        ["weed_ak47_cbd_crop"] 			 = {["name"] = "weed_ak47_cbd_crop", 	    ["label"] = "CBD AK 47 Crop", 			["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_ak47_crop.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD AK47!"},
        ["weed_skunk_cbd"] 				 = {["name"] = "weed_skunk_cbd", 			["label"] = "CBD Skunk 2g", 			["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_skunk_cbd.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD Skunk!"},
        ["weed_og-kush_cbd"] 		     = {["name"] = "weed_og-kush_cbd", 			["label"] = "CBD OGKush 2g", 			["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_og-kush_cbd.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD OG Kush!"},
        ["weed_white-widow_cbd"] 		 = {["name"] = "weed_white-widow_cbd", 	    ["label"] = "CBD White Widow 2g", 		["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_white-widow_cbd.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD White Widow!"},
        ["weed_ak47_cbd"] 				 = {["name"] = "weed_ak47_cbd", 			["label"] = "CBD AK47 2g", 				["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_ak47_cbd.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD 2g AK47!"},
        ["weed_skunk_cbd_joint"] 	     = {["name"] = "weed_skunk_cbd_joint", 		["label"] = "CBD Skunk Joint", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_skunk_cbd_joint.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that skunk son!"},
        ["weed_og-kush_cbd_joint"] 		 = {["name"] = "weed_og-kush_cbd_joint", 	["label"] = "CBD OG Kush Joint", 		["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_og-kush_cbd_joint.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that og kush son!"},
        ["weed_white-widow_cbd_joint"] 	 = {["name"] = "weed_white-widow_cbd_joint",["label"] = "CBD White Widow Joint", 	["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_white-widow_cbd_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that white widow son!"},
        ["weed_ak47_cbd_joint"] 		 = {["name"] = "weed_ak47_cbd_joint", 		["label"] = "CBD AK 47 Joint", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_ak47_cbd_joint.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that ak47 son!"},
        ["drug_scales"] 		 	     = {["name"] = "drug_scales", 				["label"] = "Scale", 					["weight"] = 1500, 	    ["type"] = "item", 		["image"] = "drug_scales.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "This is not what it looks like"},
        ["empty_weed_bag"] 				 = {["name"] = "empty_weed_bag", 			["label"] = "Drug Baggy", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "weed-empty-bag.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "A small empty bag"},
        ["weed_nutrition"] 				 = {["name"] = "weed_nutrition", 			["label"] = "Plant Fertilizer", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "weed_nutrition.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	  	    ["combinable"] = nil,   ["description"] = "Get that big bug energy!"},
        ["weed_water"] 				     = {["name"] = "weed_water", 			    ["label"] = "Distilled Water", 		    ["weight"] = 500, 		["type"] = "item", 		["image"] = "weed_water.png", 		            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "Distilled water for your plants"},
        ["weed_pot"] 				     = {["name"] = "weed_pot", 			        ["label"] = "Plant Pot", 		        ["weight"] = 100, 		["type"] = "item", 		["image"] = "weed_pot.png", 		            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "A simple plant pot for all your planting needs!"},
        ["rolling_paper"] 			 	 = {["name"] = "rolling_paper", 			["label"] = "Rolling Papers", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "rolling_paper.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Paper made specifically for encasing and smoking tobacco or cannabis."},
        ['drug_shears'] 			     = {['name'] = 'drug_shears', 		        ['label'] = 'Trimming Shears', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'drug_shears.png', 					['unique'] = false,    	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A set of high quality trimming shears.'},	
        ["lighter"] 				 	 = {["name"] = "lighter", 			  	  		["label"] = "Lighter", 					["weight"] = 5, 		["type"] = "item", 		["image"] = "lighter.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "On new years eve a nice fire to stand next to"},
        
        ["duffle2"] = {
            ["name"] = "duffle2",
            ["label"] = "Duffle bag",
            ["weight"] = 15000,
            ["type"] = "item",
            ["image"] = "bag.png",
            ["unique"] = true,
            ["useable"] = true,
            ["shouldClose"] = true,
            ["combinable"] = nil,
            ["description"] = "A stylish duffle bag"
        },
        ["briefcase"] = {
            ["name"] = "briefcase",
            ["label"] = "Briefcase",
            ["weight"] = 10000,
            ["type"] = "item",
            ["image"] = "briefcase.png",
            ["unique"] = true,
            ["useable"] = true,
            ["shouldClose"] = true,
            ["combinable"] = nil,
            ["description"] = "A portable rectangular case used for carrying important documents, files, or other personal belongings."
        },
        
        ["briefcaselockpicker"] = {
            ["name"] = "briefcaselockpicker",
            ["label"] = "Briefcase Lockpicker",
            ["weight"] = 500,
            ["type"] = "item",
            ["image"] = "lockpick.png",
            ["unique"] = false,
            ["useable"] = true,
            ["shouldClose"] = true,
            ["combinable"] = nil,
            ["description"] = "Briefcase Lockpicker"
        },
        
        --Hunting Items
        ['1starrabbitpelt']             = {['name'] = '1starrabbitpelt', 	            ['label'] = 'One Star Rabbit Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starrabbitpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Rabbit Pelt'},
        ['2starrabbitpelt']             = {['name'] = '2starrabbitpelt', 	            ['label'] = 'Two Star Rabbit Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starrabbitpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Rabbit Pelt'},
        ['3starrabbitpelt']             = {['name'] = '3starrabbitpelt', 	            ['label'] = 'Three Star Rabbit Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starrabbitpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Rabbit Pelt'},
        ['4starrabbitpelt']             = {['name'] = '4starrabbitpelt', 	            ['label'] = 'Four Star Rabbit Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starrabbitpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Rabbit Pelt'},
        ['perfectrabbitpelt']             = {['name'] = 'perfectrabbitpelt', 	            ['label'] = 'Perfect Rabbit Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectrabbitpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Rabbit Pelt'},
        
        ['1stardeerpelt']             = {['name'] = '1stardeerpelt', 	            ['label'] = 'One Star Deer Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1stardeerpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Deer Pelt'},
        ['2stardeerpelt']             = {['name'] = '2stardeerpelt', 	            ['label'] = 'Two Star Deer Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2stardeerpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Deer Pelt'},
        ['3stardeerpelt']             = {['name'] = '3stardeerpelt', 	            ['label'] = 'Three Star Deer Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3stardeerpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Deer Pelt'},
        ['4stardeerpelt']             = {['name'] = '4stardeerpelt', 	            ['label'] = 'Four Star Deer Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4stardeerpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Deer Pelt'},
        ['perfectdeerpelt']             = {['name'] = 'perfectdeerpelt', 	            ['label'] = 'Perfect Deer Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectdeerpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Deer Pelt'},
        
        ['1starcoyotepelt']             = {['name'] = '1starcoyotepelt', 	            ['label'] = 'One Star Coyote Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starcoyotepelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Coyote Pelt'},
        ['2starcoyotepelt']             = {['name'] = '2starcoyotepelt', 	            ['label'] = 'Two Star Coyote Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starcoyotepelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Coyote Pelt'},
        ['3starcoyotepelt']             = {['name'] = '3starcoyotepelt', 	            ['label'] = 'Three Star Coyote Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starcoyotepelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Coyote Pelt'},
        ['4starcoyotepelt']             = {['name'] = '4starcoyotepelt', 	            ['label'] = 'Four Star Coyote Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starcoyotepelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Coyote Pelt'},
        ['perfectcoyotepelt']             = {['name'] = 'perfectcoyotepelt', 	            ['label'] = 'Perfect Coyote Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectcoyotepelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Coyote Pelt'},
        
        ['1starmountainlionpelt']             = {['name'] = '1starmountainlionpelt', 	            ['label'] = 'One Star Mountain Lion Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starmountainlionpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Mountain Lion Pelt'},
        ['2starmountainlionpelt']             = {['name'] = '2starmountainlionpelt', 	            ['label'] = 'Two Star Mountain Lion Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starmountainlionpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Mountain Lion Pelt'},
        ['3starmountainlionpelt']             = {['name'] = '3starmountainlionpelt', 	            ['label'] = 'Three Star Mountain Lion Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starmountainlionpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Mountain Lion Pelt'},
        ['4starmountainlionpelt']             = {['name'] = '4starmountainlionpelt', 	            ['label'] = 'Four Star Mountain Lion Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starmountainlionpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Mountain Lion Pelt'},
        ['perfectmountainlionpelt']             = {['name'] = 'perfectmountainlionpelt', 	            ['label'] = 'Perfect Mountain Lion Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectmountainlionpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Mountain Lion Pelt'},
        
        ['1starrabbitmeat']             = {['name'] = '1starrabbitmeat', 	            ['label'] = 'One Star Rabbit Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starrabbitmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Rabbit Meat'},
        ['2starrabbitmeat']             = {['name'] = '2starrabbitmeat', 	            ['label'] = 'Two Star Rabbit Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starrabbitmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Rabbit Meat'},
        ['3starrabbitmeat']             = {['name'] = '3starrabbitmeat', 	            ['label'] = 'Three Star Rabbit Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starrabbitmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Rabbit Meat'},
        ['4starrabbitmeat']             = {['name'] = '4starrabbitmeat', 	            ['label'] = 'Four Star Rabbit Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starrabbitmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Rabbit Meat'},
        ['perfectrabbitmeat']             = {['name'] = 'perfectrabbitmeat', 	            ['label'] = 'Perfect Rabbit Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectrabbitmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Rabbit Meat'},
        
        ['1starvenison']             = {['name'] = '1starvenison', 	            ['label'] = 'One Star Deer Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starvenison.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Deer Meat'},
        ['2starvenison']             = {['name'] = '2starvenison', 	            ['label'] = 'Two Star Deer Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starvenison.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Deer Meat'},
        ['3starvenison']             = {['name'] = '3starvenison', 	            ['label'] = 'Three Star Deer Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starvenison.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Deer Meat'},
        ['4starvenison']             = {['name'] = '4starvenison', 	            ['label'] = 'Four Star Deer Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starvenison.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Deer Meat'},
        ['perfectvenison']             = {['name'] = 'perfectvenison', 	            ['label'] = 'Perfect Deer Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectvenison.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Deer Meat'},
        
        ['1starcoyotemeat']             = {['name'] = '1starcoyotemeat', 	            ['label'] = 'One Star Coyote Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starcoyotemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Coyote Meat'},
        ['2starcoyotemeat']             = {['name'] = '2starcoyotemeat', 	            ['label'] = 'Two Star Coyote Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starcoyotemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Coyote Meat'},
        ['3starcoyotemeat']             = {['name'] = '3starcoyotemeat', 	            ['label'] = 'Three Star Coyote Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starcoyotemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Coyote Meat'},
        ['4starcoyotemeat']             = {['name'] = '4starcoyotemeat', 	            ['label'] = 'Four Star Coyote Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starcoyotemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Coyote Meat'},
        ['perfectcoyotemeat']             = {['name'] = 'perfectcoyotemeat', 	            ['label'] = 'Perfect Coyote Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectcoyotemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Coyote Meat'},
        
        ['1starpork']             = {['name'] = '1starpork', 	            ['label'] = 'One Star Pork', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starpork.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Pork'},
        ['2starpork']             = {['name'] = '2starpork', 	            ['label'] = 'Two Star Pork', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starpork.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Pork'},
        ['3starpork']             = {['name'] = '3starpork', 	            ['label'] = 'Three Star Pork', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starpork.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Pork'},
        ['4starpork']             = {['name'] = '4starpork', 	            ['label'] = 'Four Star Pork', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starpork.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Pork'},
        ['perfectpork']             = {['name'] = 'perfectpork', 	            ['label'] = 'Perfect Pork', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectpork.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Pork'},
        
        ['1starmountainlionmeat']             = {['name'] = '1starmountainlionmeat', 	            ['label'] = 'One Star Mountain Lion Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '1starmountainlionmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Terrible Quality Mountain Lion Meat'},
        ['2starmountainlionmeat']             = {['name'] = '2starmountainlionmeat', 	            ['label'] = 'Two Star Mountain Lion Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '2starmountainlionmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Low Quality Mountain Lion Meat'},
        ['3starmountainlionmeat']             = {['name'] = '3starmountainlionmeat', 	            ['label'] = 'Three Star Mountain Lion Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '3starmountainlionmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Quality Mountain Lion Meat'},
        ['4starmountainlionmeat']             = {['name'] = '4starmountainlionmeat', 	            ['label'] = 'Four Star Mountain Lion Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = '4starmountainlionmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Higher Quality Mountain Lion Meat'},
        ['perfectmountainlionmeat']             = {['name'] = 'perfectmountainlionmeat', 	            ['label'] = 'Perfect Mountain Lion Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'perfectmountainlionmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Perfect Mountain Lion Meat'},
        
        ['legendarycrocodileskin']             = {['name'] = 'legendarycrocodileskin', 	            ['label'] = 'Legendary Crocodile Skin', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendarycrocodileskin.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Crocodile Skin'},
        ['legendarycrocodilemeat']             = {['name'] = 'legendarycrocodilemeat', 	            ['label'] = 'Legendary Crocodile Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendarycrocodilemeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Crocodile Meat'},
        
        ['legendaryhipposkin']             = {['name'] = 'legendaryhipposkin', 	            ['label'] = 'Legendary Hippo Skin', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendaryhipposkin.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Hippo Skin'},
        ['legendaryhippomeat']             = {['name'] = 'legendaryhippomeat', 	            ['label'] = 'Legendary Hippo Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendaryhippomeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Hippo Meat'},
        
        ['legendarybearpelt']             = {['name'] = 'legendarybearpelt', 	            ['label'] = 'Legendary Bear Pelt', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendarybearpelt.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Bear Pelt'},
        ['legendarybearmeat']             = {['name'] = 'legendarybearmeat', 	            ['label'] = 'Legendary Bear Meat', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'legendarybearmeat.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Legendary Bear Meat'},	
        
        ["wood"] 					= {["name"] = "wood",  	     		        ["label"] = "Wood",	 		    ["weight"] = 1, 		["type"] = "item", 		["image"] = "wood.png", 				["unique"] = false, 	    ["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = ""},
        ["metal"] 					= {["name"] = "metal",  	     		    ["label"] = "Metal",	 		    ["weight"] = 1, 		["type"] = "item", 		["image"] = "metal.png", 				["unique"] = false, 	    ["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = ""},
        ["rope"] 					= {["name"] = "rope",  	     		        ["label"] = "Rope",	 		    ["weight"] = 1, 		["type"] = "item", 		["image"] = "rope.png", 				["unique"] = false, 	    ["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = ""},
        ["shovel"] 					= {["name"] = "shovel",  	     		    ["label"] = "Shovel",	 		    ["weight"] = 1, 		["type"] = "item", 		["image"] = "shovel.png", 				["unique"] = false, 	    ["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = ""},
        
        
        ['yogamat_pro'] 				 	 = {['name'] = 'yogamat_pro', 			  	  	['label'] = 'ProLaps Yoga Mat', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'yogamat_pro.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did somebody say Yoga?'},
        ['yogamat_red'] 				 	 = {['name'] = 'yogamat_red', 			  	  	['label'] = 'Red Yoga Mat', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'yogamat_red.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did somebody say Yoga?'},
        ['yogamat_blue'] 				 	 = {['name'] = 'yogamat_blue', 			  	  	['label'] = 'Blue Yoga Mat', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'yogamat_blue.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did somebody say Yoga?'},
        ['yogamat_black'] 				 	 = {['name'] = 'yogamat_black', 			  	  	['label'] = 'Black Yoga Mat', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'yogamat_black.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did somebody say Yoga?'},
        
        
        ["tlmgiftbox"] = {["name"] = "tlmgiftbox", ["label"] = "Gift Box", ["weight"] = 7000, ["type"] = "item", ["image"] = "startergift.png", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Welcome to [yourservername]! Here's a little gift for being new to the city :)"},
        
        ["stopsign"] = {["name"] = "stopsign", ["label"] = "Stop Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "stopsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Stop Sign"},
        ["walkingmansign"] = {["name"] = "walkingmansign", ["label"] = "Pedestrian Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "walkingmansign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Pedestrian Sign"},
        ["dontblockintersectionsign"] = {["name"] = "dontblockintersectionsign", ["label"] = "Intersection Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "dontblockintersectionsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Intersection Sign"},
        ["uturnsign"] = {["name"] = "uturnsign", ["label"] = "U Turn Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "uturnsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "U Turn Sign"},
        ["noparkingsign"] = {["name"] = "noparkingsign", ["label"] = "No Parking Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "noparkingsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "No Parking Sign"},
        ["leftturnsign"] = {["name"] = "leftturnsign", ["label"] = "Left Turn Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "leftturnsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Left Turn Sign"},
        ["rightturnsign"] = {["name"] = "rightturnsign", ["label"] = "Right Turn Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "rightturnsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Right Turn Sign"},
        ["notrespassingsign"] = {["name"] = "notrespassingsign", ["label"] = "No Trespassing Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "notrespassingsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "No Trespassing Sign"},
        ["yieldsign"] = {["name"] = "yieldsign", ["label"] = "Yield Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "yieldsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Yield Sign"},
        
        ["wet_weed"] 		 	 	 	 = {["name"] = "wet_weed",           			["label"] = "Moist Weed",	 			["weight"] = 3000, 		["type"] = "item", 		["image"] = "wet_weed.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Wet weed that needs to be treated!"},
        ["coke"] 		 	 	 	     = {["name"] = "coke",           				["label"] = "Cocaine", 					["weight"] = 1000,		["type"] = "item", 		["image"] = "coke.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Processed cocaine"},
        ["coca_leaf"] 		 	 	 	 = {["name"] = "coca_leaf",           			["label"] = "Cocaine leaves",	 		["weight"] = 1500,		["type"] = "item", 		["image"] = "coca_leaf.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Cocaine leaves that must be processed !"},
        ["cannabis"] 			 		 = {["name"] = "cannabis", 						["label"] = "Cannabis", 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "cannabis.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Uncured cannabis"},
        ["marijuana"] 			 		 = {["name"] = "marijuana", 					["label"] = "Marijuana", 				["weight"] = 500,		["type"] = "item", 		["image"] = "marijuana.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Some fine smelling buds."},
        ["chemicals"] 		 	 	 	 = {["name"] = "chemicals",           			["label"] = "Chemicals",	 			["weight"] = 1500, 		["type"] = "item", 		["image"] = "chemicals.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care..."},
        ["poppyresin"] 		 	 	 	 = {["name"] = "poppyresin",           			["label"] = "Poppy resin",	 			["weight"] = 2000, 		["type"] = "item", 		["image"] = "poppyresin.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "It sticks to your fingers when you handle it."},
        ["heroin"] 		 	 	 	     = {["name"] = "heroin",           				["label"] = "Heroin",	 				["weight"] = 500, 		["type"] = "item", 		["image"] = "heroin.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Really addictive depressant..."},
        ["lsa"] 		 	 	 	     = {["name"] = "lsa",           				["label"] = "LSA",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "lsa.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Almost ready to party..."},
        ["lsd"] 		 	 	 	     = {["name"] = "lsd",           				["label"] = "LSD",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "lsd.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Lets get this party started!"},
        ["meth"] 		 	 	 	     = {["name"] = "meth",           				["label"] = "Meth",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "meth.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Really addictive stimulant..."},
        ["hydrochloric_acid"] 			 = {["name"] = "hydrochloric_acid", 			["label"] = "Hydrochloric Acid",		["weight"] = 1500, 		["type"] = "item", 		["image"] = "hydrochloric_acid.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
        ["sodium_hydroxide"] 			 = {["name"] = "sodium_hydroxide", 				["label"] = "Sodium Hydroxide", 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "sodium_hydroxide.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
        ["sulfuric_acid"] 		 	 	 = {["name"] = "sulfuric_acid",           		["label"] = "Sulfuric Acid",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "sulfuric_acid.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
        ["thionyl_chloride"] 		 	 = {["name"] = "thionyl_chloride",           	["label"] = "Thionyl Chloride",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "thionyl_chloride.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
        ["liquidmix"] 		 	 	     = {["name"] = "liquidmix",           		    ["label"] = "Liquid Chem Mix",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "liquidmix.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
        ["bakingsoda"] 		 	 	     = {["name"] = "bakingsoda",           		    ["label"] = "Baking Soda",	 		    ["weight"] = 1500, 		["type"] = "item", 		["image"] = "bakingsoda.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Household Baking Soda!"},
        ["chemicalvapor"] 		 	     = {["name"] = "chemicalvapor",           	    ["label"] = "Chemical Vapors",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "chemicalvapor.png", 	    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "High Pressure Chemical Vapors, Explosive!"},
        ["trimming_scissors"] 		 	 = {["name"] = "trimming_scissors",           	["label"] = "Trimming Scissors",	 	["weight"] = 1500, 		["type"] = "item", 		["image"] = "trimming_scissors.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Very Sharp Trimming Scissors"},
        ['methtray'] 					 = {['name'] = 'methtray', 						['label'] = 'Meth Tray', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'meth_tray.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'make some meth'},
        ['methkey'] 					 = {['name'] = 'methkey', 						['label'] = 'Key A', 				    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'keya.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Random Key, with "Walter" Engraved on the Back...'},
        ['cocainekey'] 					 = {['name'] = 'cocainekey', 					['label'] = 'Key B', 				    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'keyb.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Random Key, with a "Razorblade" Engraved on the Back...'},
        ['weedkey'] 					 = {['name'] = 'weedkey', 						['label'] = 'Key C', 				    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'keyc.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Random Key, with a "Seed" Engraved on the Back...'},
        ['finescale'] 					 = {['name'] = 'finescale', 					['label'] = 'Fine Scale', 			    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'finescale.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Scale Used for Fine Powders and Materials.'},
        ['coke_small_brick'] 		 	 = {['name'] = 'coke_small_brick', 				['label'] = 'Coke Package', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'coke_small_brick.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Small package of cocaine, mostly used for deals and takes a lot of space'},
        
        ["casino_beer"] = {
            ["name"] = "casino_beer",
            ["label"] = "Casino Beer",
            ["weight"] = 0,
            ["type"] = "item",
            ['image'] = 'casino_beer.png',
            ["unique"] = true,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Casino Beer"
        },
        ["casino_burger"] = {
            ["name"] = "casino_burger",
            ["label"] = "Casino Burger",
            ["weight"] = 0,
            ["type"] = "item",
            ['image'] = 'casino_burger.png',
            ["unique"] = true,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Casino Burger"
        },
        
        ["casino_coffee"] = {
            ["name"] = "casino_coffee",
            ["label"] = "Casino Coffee",
            ["weight"] = 0,
            ["type"] = "item",
            ['image'] = 'casino_coffee.png',
            ["unique"] = true,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Casino Coffee"
        },
        ["casino_coke"] = {
            ["name"] = "casino_coke",
            ["label"] = "Casino Kofola",
            ["weight"] = 0,
            ["type"] = "item",
            ['image'] = 'casino_coke.png',
            ["unique"] = true,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Casino Kofola"
        },
        ["casino_donut"] = {
            ["name"] = "casino_donut",
            ["label"] = "Casino Donut",
            ["weight"] = 0,
            ["type"] = "item",
            ["image"] = "casino_donut.png",
            ["unique"] = true,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Casino Donut"
        },
        ["casino_ego_chaser"] = {
            ["name"] = "casino_ego_chaser",
            ["label"] = "Casino Ego Chaser",
            ["weight"] = 0,
            ["type"] = "item",
            ["image"] = "casino_ego_chaser.png",
            ["unique"] = true,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Casino Ego Chaser"
        },
        ["casino_luckypotion"] = {
            ["name"] = "casino_luckypotion",
            ["label"] = "Casino Lucky Potion",
            ["weight"] = 0,
            ["type"] = "item",
            ["image"] = "casino_luckypotion.png",
            ["unique"] = true,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Casino Lucky Potion"
        },
        ["casino_psqs"] = {
            ["name"] = "casino_psqs",
            ["label"] = "Casino Ps & Qs",
            ["weight"] = 0,
            ["type"] = "item",
            ["image"] = "casino_psqs.png",
            ["unique"] = true,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Casino Ps & Qs"
        },
        ["casino_sandwitch"] = {
            ["name"] = "casino_sandwitch",
            ["label"] = "Casino Sandwitch",
            ["weight"] = 0,
            ["type"] = "item",
            ["image"] = "casino_sandwitch.png",
            ["unique"] = true,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Casino Sandwitch"
        },
        ["casino_sprite"] = {
            ["name"] = "casino_sprite",
            ["label"] = "Casino Sprite",
            ["weight"] = 0,
            ["type"] = "item",
            ["image"] = "casino_sprite.png",
            ["unique"] = true,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Casino Sprite"
        },
        
        ['huntinglicense']              = {['name'] = 'huntinglicense',                   ['label'] = 'Hunting License',             ['weight'] = 0,         ['type'] = 'item',         ['image'] = 'hunting_license.png',         ['unique'] = true, ['useable'] = true,     ['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Permit for hunting'},
        ['fishinglicense']              = {['name'] = 'fishinglicense',                   ['label'] = 'Fishing License',             ['weight'] = 0,         ['type'] = 'item',         ['image'] = 'fishing_license.png',         ['unique'] = true, ['useable'] = true,     ['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Permit for Fishing'},
        
        ["building4key"] = {
            ["name"] = "building4key",
            ["label"] = "Building 4 Key",
            ["weight"] = 50,
            ["type"] = "item",
            ["image"] = "building4key.png",
            ["unique"] = true,
            ["useable"] = true,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "A key to unlock the building 4 door. But where?"
        },
        
        ["galaxyvip"] = {
            ["name"] = "galaxyvip",
            ["label"] = "Galaxy VIP Card",
            ["weight"] = 50,
            ["type"] = "item",
            ["image"] = "galaxyvip.png",
            ["unique"] = true,
            ["useable"] = true,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Galaxy VIP Card. For Special people"
        },
        
        ["syphoningkit"]				 = {["name"] = "syphoningkit", 					["label"] = "Syphoning Kit", 			["weight"] = 5000, 		["type"] = "item", 		["image"] = "syphoningkit.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A kit made to siphon gasoline from vehicles."},
        ["jerrycan"]				 	 = {["name"] = "jerrycan", 						["label"] = "Jerry Can", 				["weight"] = 15000, 	["type"] = "item", 		["image"] = "jerrycan.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A Jerry Can made to hold gasoline."},
        
        ['protein'] = {['name'] = 'protein', ['label'] = 'Protein', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'protein.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Protein'},
        ['creatine'] = {['name'] = 'creatine', ['label'] = 'Creatine', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'creatine.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Creatine'},
        ['preworkout'] = {['name'] = 'preworkout', ['label'] = 'Preworkout', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'preworkout.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Preworkout'},
        ['testosterone'] = {['name'] = 'testosterone', ['label'] = 'Testosterone', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'testosterone.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Testosterone'},
        
        ['broken_handcuffs'] 			 = {['name'] = 'broken_handcuffs', 			    ['label'] = 'Broken Handcuffs', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'broken_handcuffs.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'It\'s broken, maybe you can repair it?'},
        ['cuffkeys'] 				 	 = {['name'] = 'cuffkeys', 			    		['label'] = 'Cuff Keys', 				['weight'] = 75, 		['type'] = 'item', 		['image'] = 'cuffkeys.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Set them free !'},
        ['ziptie'] 				 	 	 = {['name'] = 'ziptie', 			    		['label'] = 'ZipTie', 					['weight'] = 50, 		['type'] = 'item', 		['image'] = 'ziptie.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Comes in handy when people misbehave. Maybe it can be used for something else?'},
        ['flush_cutter'] 				 = {['name'] = 'flush_cutter', 			    	['label'] = 'Flush Cutter', 			['weight'] = 50, 		['type'] = 'item', 		['image'] = 'flush_cutter.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Comes in handy when you want to cut zipties..'},
        
        ["garbage"] 						 = {["name"] = "garbage", 			  	  			["label"] = "Garbage", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "garbagecard.png", 					["unique"] = true, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "It stinks"},
        ["bread"] 						 = {["name"] = "bread", 			  	  			["label"] = "Moldy Bread", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "bread.png", 					["unique"] = true, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Its bread from a trash can"},
        
        ["sharkrepelent"] 						 = {["name"] = "sharkrepelent", 			  	  			["label"] = "Shark Off", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "sharkrepelent.png", 					["unique"] = true, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Keep the sharks away all day"},
        
        ["sbmvoucher25"] = {["name"] = "sbmvoucher25", ["label"] = "SBM Voucher 25", ["weight"] = 1000, ["type"] = "item", ["image"] = "sbmvoucher25.png", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Welcome to SBM RP! Enjoy 25% off your first vehicle purchase! (Valid at Luxury/PDM/Bike Shop)"},
            -- Starter Gift Box
        ['giftbox']             		= {['name'] = 'giftbox',                		['label'] = 'SBM Gift Box',       	['weight'] = 0,         ['type'] = 'item',      ['image'] = 'giftbox.png',     		    ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Welcome to SBM RP! Heres a little gift for being new to the city :)'},
        
        ["bleach"] 						            = {["name"] = "bleach", 			  	  			    ["label"] = "Bleach", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "bleach.png", 					        ["unique"] = true, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Wash the crime away"},
        ["microfibrecloth"] 						 = {["name"] = "microfibrecloth", 			  	  			["label"] = "Microfibre Cloth", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "microfibrecloth.png", 					["unique"] = true, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Its a Microfibre Cloth"},
        ["rag"] 						 = {["name"] = "rag", 			  	  			["label"] = "Rag", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "rag.png", 					["unique"] = true, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Its a Rag"},
        
        
        ['ied'] 				 		 = {['name'] = 'ied', 			  	  			['label'] = 'IED', 						['weight'] = 500, 		['type'] = 'item', 		['image'] = 'ied.png', 						['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Maybe I can blow something up with this...'},

        ["flight_artpiece"]     = {["name"] = "flight_artpiece",       ["label"] = "Art",       ["weight"] = 25000,  ["type"] = "item",   ["image"] = "flightartpiece.png",   ["unique"] = true,   ["useable"] = false,  ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Some fancy Art"},
        ["flight_television"]     = {["name"] = "flight_television",    ["label"] = "TV",       ["weight"] = 25000,  ["type"] = "item",   ["image"] = "flighttelevision.png",  ["unique"] = true,   ["useable"] = false,  ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Flat Screen TV"},
        ["musicequipment"]      = {["name"] = "musicequipment",     ["label"] = "Music Equipment",    ["weight"] = 25000,  ["type"] = "item",   ["image"] = "musicequipment.png",   ["unique"] = true,   ["useable"] = false,  ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Music Equipment"},
        ["pcequipment"]       = {["name"] = "pcequipment",      ["label"] = "Computer Equipment",   ["weight"] = 25000,  ["type"] = "item",   ["image"] = "flightpcequipment.png",    ["unique"] = true,   ["useable"] = false,  ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Computer Equipment"},
        ["microwave"]        = {["name"] = "microwave",         ["label"] = "Microwave",     ["weight"] = 25000,  ["type"] = "item",   ["image"] = "flightmicrowave.png",      ["unique"] = true,   ["useable"] = false,  ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Heats things up"},
        ["coffeemaker"]      = {["name"] = "coffeemaker",      ["label"] = "Coffee Machine",    ["weight"] = 25000,  ["type"] = "item",   ["image"] = "flightcoffeemaker.png",  ["unique"] = true,   ["useable"] = false,  ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Makes a delicious expresso"},
        ["flight_painting"]     = {["name"] = "flight_painting",       ["label"] = "Painting",        ["weight"] = 25000,  ["type"] = "item",   ["image"] = "flightpainting.png",      ["unique"] = true,   ["useable"] = false,  ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Just a work of art,"},
        ["flight_painting2"]     = {["name"] = "flight_painting2",     ["label"] = "Painting",        ["weight"] = 25000,  ["type"] = "item",   ["image"] = "flightpainting2.png",      ["unique"] = true,   ["useable"] = false,  ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Just a work of art,"},
        ["flight_guitar"]             = {["name"] = "flight_guitar",           ["label"] = "Guitar",           ["weight"] = 25000,   ["type"] = "item",    ["image"] = "flightguitar.png",         ["unique"] = true,    ["useable"] = false,   ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Music Equipment"},
        ["flight_suitcase"]             = {["name"] = "flight_suitcase",          ["label"] = "Suitcase",           ["weight"] = 25000,   ["type"] = "item",    ["image"] = "flightsuitcase.png",       ["unique"] = true,    ["useable"] = false,   ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Work Suitcase"},
        
        
        -- rods, lures & bait
        ['fishingrod'] 			 		 = {['name'] = 'fishingrod', 					['label'] = 'Fishing Rod', 				['weight'] = 5000, 		['type'] = 'item', 		['image'] = 'fishingrod.png', 			['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fishing rod for adventures with friends!!'},
        ['fishingrod2'] 			 		 = {['name'] = 'fishingrod2', 					['label'] = 'Skilled Fishing Rod', 				['weight'] = 5000, 		['type'] = 'item', 		['image'] = 'betterrod.png', 			['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'This rod is better than most, but not the best.'},
        ['fishingrod3'] 			 		 = {['name'] = 'fishingrod3', 					['label'] = 'Professional Rod', 				['weight'] = 5000, 		['type'] = 'item', 		['image'] = 'bestrod.png', 			['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'S+ tier fishing rod!!'},
        ['fishinglure'] 			     = {['name'] = 'fishinglure', 					['label'] = 'Fishing Lure', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'beginnerlure.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A colorful lure'},
        ['fishinglure2'] 			     = {['name'] = 'fishinglure2', 					['label'] = 'Pro Fishing Lure', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'betterlure.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A realistic lure'},
        ['skill-reel'] 			     = {['name'] = 'skill-reel', 					['label'] = 'Skill Fishing Reel', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'skill-reel.png', 			['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A skilled fishing reel.'},
        ['pro-reel'] 			     = {['name'] = 'pro-reel', 					['label'] = 'Pro Fishing Reel', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pro-reel.png', 			['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A professional fishing reel.'},
        ['fishingbait'] 			     = {['name'] = 'fishingbait', 					['label'] = 'Fish Bait', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'wormbait.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Worm bait!'},
        
        -- fish
        ['killerwhale'] 			     = {['name'] = 'killerwhale', 			     	['label'] = 'Killer Whale',        ['weight'] = 7000,      ['type'] = 'item',      ['image'] = 'killerwhalemeat.png',      ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'This is a whole ass Shamu.'},
        ['stingraymeat'] 			     = {['name'] = 'stingraymeat', 				    ['label'] = 'Stingray',            ['weight'] = 2000,      ['type'] = 'item',      ['image'] = 'stingraymeat.png',         ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Stingray Meat'},
        ['tigershark'] 			         = {['name'] = 'tigershark', 			     	['label'] = 'Tigershark',          ['weight'] = 7000,      ['type'] = 'item',      ['image'] = 'tigershark.png',       ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'There are bigger sharks but this is still impressive..'},
        ['catfish'] 			         = {['name'] = 'catfish', 				        ['label'] = 'Catfish',                  ['weight'] = 3000,      ['type'] = 'item',      ['image'] = 'catfish.png',              ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A Catfish'},
        ["fish"] 						= {["name"] = "fish",  	     				["label"] = "Fish",	 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "fish.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A Catfish", ['hunger'] = math.random(40, 50) },
        ['salmon'] 			             = {['name'] = 'salmon', 				        ['label'] = 'Salmon',                   ['weight'] = 2000,      ['type'] = 'item',      ['image'] = 'salmon.png',               ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A Salmon Fish'},
        ['largemouthbass'] 			     = {['name'] = 'largemouthbass', 				['label'] = 'Largemouth Bass',          ['weight'] = 3000,      ['type'] = 'item',      ['image'] = 'largemouthbass.png',       ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Fish for Fishing.'},
        ['goldfish'] 			         = {['name'] = 'goldfish', 			        	['label'] = 'Goldfish',                 ['weight'] = 2000,      ['type'] = 'item',      ['image'] = 'goldfish.png',             ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A Goldfish... I wonder how he got there...'},
        ['redfish'] 			         = {['name'] = 'redfish', 			        	['label'] = 'Redfish',                  ['weight'] = 2000,      ['type'] = 'item',      ['image'] = 'redfish.png',              ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'One fish two fish...'},
        ['bluefish'] 			         = {['name'] = 'bluefish', 			        	['label'] = 'Bluefish',                 ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'bluefish.png',             ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'One fish two fish redfish...'},
        ['stripedbass'] 			     = {['name'] = 'stripedbass', 			        ['label'] = 'Striped Bass',             ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'stripedbass.png',          ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A Striped Bass'},
        ['rainbowtrout'] 			     = {['name'] = 'rainbowtrout', 			        ['label'] = 'Rainbow Trout',             ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'rainbow-trout.png',          ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A colorful Trout'},
        ['gholfish'] 			     = {['name'] = 'gholfish', 			        ['label'] = 'Ghol',             ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'ghol-fish.png',          ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A big Ghol'},
        ['codfish'] 			     = {['name'] = 'codfish', 			        ['label'] = 'Cod',             ['weight'] = 3000,      ['type'] = 'item',      ['image'] = 'codfish.png',          ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A cody fish'},
        ['eelfish'] 			     = {['name'] = 'eelfish', 			        ['label'] = 'Eel',             ['weight'] = 4000,      ['type'] = 'item',      ['image'] = 'eelfish.png',          ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'An eel.. pretty useless.'},
        ['swordfish'] 			     = {['name'] = 'swordfish', 			        ['label'] = 'Sword Fish',             ['weight'] = 3000,      ['type'] = 'item',      ['image'] = 'swordfish.png',          ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'This has a giant ass needle for a face.'},
        ['tuna-fish'] 			     = {['name'] = 'tuna-fish', 			        ['label'] = 'Tuna',             ['weight'] = 2000,      ['type'] = 'item',      ['image'] = 'tuna-fish.png',          ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Chicken of the sea, but fucking massive.'},
        
        -- chest items
        ['chestkey'] 			     = {['name'] = 'chestkey', 			        ['label'] = 'Key',             ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'chestkey.png',          ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A gold key.'},
        ['treasurechest'] 			     = {['name'] = 'treasurechest', 			        ['label'] = 'Treasure Chest',             ['weight'] = 5000,      ['type'] = 'item',      ['image'] = 'treasurechest.png',          ['unique'] = true,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Ye, Treasure mighty.'},
        ['bottlemap'] 			     = {['name'] = 'bottlemap', 			        ['label'] = 'Treasure Bottle',             ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'bottlemap.png',          ['unique'] = true,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'looks very old.'},
        ['treasuremap'] 			     = {['name'] = 'treasuremap', 			        ['label'] = 'Treasure Map',             ['weight'] = 500,      ['type'] = 'item',      ['image'] = 'treasuremap.png',          ['unique'] = true,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'This could lead somewhere...'},
        ["diamond"] 					 = {["name"] = "diamond", 			  	  	  	["label"] = "Diamond", 					["weight"] = 3000, 		["type"] = "item", 		["image"] = "diamond.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Shiny Diamond"},
        ["emerald"] 					 = {["name"] = "emerald", 			  	  	  	["label"] = "Emerald", 					["weight"] = 3000, 		["type"] = "item", 		["image"] = "emerald.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Emerald"},
        ["sapphire"] 			 		 = {["name"] = "sapphire", 						["label"] = "Sapphire", 				["weight"] = 2000, 		["type"] = "item", 		["image"] = "sapphire.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   	["combinable"] = nil,   ["description"] = "Gems are truly, truly, truly outrageous."},
        ["ruby"]						 = {["name"] = "ruby", 							["label"] = "Ruby", 					["weight"] = 2000, 		["type"] = "item", 		["image"] = "ruby.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   	["combinable"] = nil,   ["description"] = "Gems are truly, truly, truly outrageous."},
        ['yellow-diamond']               = {['name'] = 'yellow-diamond',                ['label'] = 'Canary Diamond',                     ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'yellow-diamond.png',                 ['unique'] = false,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Yellow is truly, truly, truly gorgeous..'},
        ["captainskull"]						 = {["name"] = "captainskull", 							["label"] = "Captain Skull", 					["weight"] = 4000, 		["type"] = "item", 		["image"] = "captainskull.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   	["combinable"] = nil,   ["description"] = "An old skull of a captain!"},
        ['green_diamond']               = {['name'] = 'greendiamond',                ['label'] = 'Green Diamond',                     ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'greendiamond.png',                 ['unique'] = false,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'The Jewel of the Nile'},
        
        
        -- phone items
        
        ['classic_phone'] 			 	 = {['name'] = 'classic_phone', 			  	['label'] = 'Classic Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'classic_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            ['black_phone'] 			 	 = {['name'] = 'black_phone', 			  	    ['label'] = 'Black Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'black_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            ['blue_phone'] 			 	     = {['name'] = 'blue_phone', 			  	    ['label'] = 'Blue Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'blue_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            ['gold_phone'] 			 	     = {['name'] = 'gold_phone', 			        ['label'] = 'Gold Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'gold_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            ['red_phone'] 			 	     = {['name'] = 'red_phone', 			  	    ['label'] = 'Red Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'red_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            ['green_phone'] 			 	 = {['name'] = 'green_phone', 			  	    ['label'] = 'Green Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'green_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            ['greenlight_phone'] 			 = {['name'] = 'greenlight_phone', 			  	['label'] = 'Green Light Phone', 	    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'greenlight_phone.png', 	['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            ['pink_phone'] 			 	     = {['name'] = 'pink_phone', 			  	    ['label'] = 'Pink Phone', 	            ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'pink_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            ['white_phone'] 			 	 = {['name'] = 'white_phone', 			  	    ['label'] = 'White Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'white_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            
            ['wet_phone'] 			         = {['name'] = 'wet_phone', 			        ['label'] = 'Wet Phone', 	            ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_classic_phone.png',    ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
            ['wet_classic_phone'] 			 = {['name'] = 'wet_classic_phone', 			['label'] = 'Wet Classic Phone', 	    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_classic_phone.png',    ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
            ['wet_black_phone'] 			 = {['name'] = 'wet_black_phone', 			  	['label'] = 'Wet Black Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_black_phone.png', 	    ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
            ['wet_blue_phone'] 			 	 = {['name'] = 'wet_blue_phone', 			  	['label'] = 'Wet Blue Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_blue_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
            ['wet_gold_phone'] 			 	 = {['name'] = 'wet_gold_phone', 			    ['label'] = 'Wet Gold Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_gold_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
            ['wet_red_phone'] 			 	 = {['name'] = 'wet_red_phone', 			  	['label'] = 'Wet Red Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_red_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
            ['wet_green_phone'] 			 = {['name'] = 'wet_green_phone', 			  	['label'] = 'Wet Green Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_green_phone.png', 	    ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            ['wet_greenlight_phone'] 	     = {['name'] = 'wet_greenlight_phone', 			['label'] = 'Wet Green Light Phone', 	['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_greenlight_phone.png', ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            ['wet_pink_phone'] 			 	 = {['name'] = 'wet_pink_phone', 			  	['label'] = 'Wet Pink Phone', 	        ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_pink_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            ['wet_white_phone'] 			 = {['name'] = 'wet_white_phone', 			  	['label'] = 'Wet White Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_white_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
            
            ['phone_hack'] 			 	     = {['name'] = 'phone_hack', 			  	    ['label'] = 'Phone Hack', 			    ['weight'] = 300, 		['type'] = 'item', 		['image'] = 'phone_hack.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'With this chip, you can access hidden areas of Discord.'},
            ['phone_module'] 			 	 = {['name'] = 'phone_module', 			  	    ['label'] = 'Phone Module', 			['weight'] = 300, 		['type'] = 'item', 		['image'] = 'phone_module.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'It seems that we can fix a wet phone with this module, interesting.'},
            ['powerbank'] 			 	     = {['name'] = 'powerbank', 			  	    ['label'] = 'Power Bank', 			    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'powerbank.png', 		    ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Incredible portable charger!'},
        
        -- PETS
        
        ['dogfood'] = {
            ['name'] = 'dogfood',
            ['label'] = 'Dogfood',
            ['weight'] = 1000,
            ['type'] = 'item',
            ['image'] = 'dogfood.png',
            ['unique'] = false,
            ['useable'] = true,
            ['shouldClose'] = true,
            ['combinable'] = nil,
            ['description'] = 'Food for your dog'
        },
        
        ['catfood'] = {
            ['name'] = 'catfood',
            ['label'] = 'Catfood',
            ['weight'] = 1000,
            ['type'] = 'item',
            ['image'] = 'catfood.png',
            ['unique'] = false,
            ['useable'] = true,
            ['shouldClose'] = true,
            ['combinable'] = nil,
            ['description'] = 'Food for your cat'
        },
        
        ['chickenfood'] = {
            ['name'] = 'chickenfood',
            ['label'] = 'Chickenfood',
            ['weight'] = 1000,
            ['type'] = 'item',
            ['image'] = 'chickenfood.png',
            ['unique'] = false,
            ['useable'] = true,
            ['shouldClose'] = true,
            ['combinable'] = nil,
            ['description'] = 'Food for your chicken'
        },
        
        
        
        
        
        
        -- common detectable items
        ["metaltrash"] = {
            ["name"] = "metaltrash",
            ["label"] = "Metal Trash",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "metaltrash.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Trashed Metal"
        },
        ["irontrash"] = {
            ["name"] = "irontrash",
            ["label"] = "Iron Trash",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "irontrash.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Trashed Iron"
        },
        ["aluminiumcan"] = {
            ["name"] = "aluminiumcan",
            ["label"] = "Aluminium Can",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "aluminiumcan.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Alumunim Cans"
        },
        ["brokenknife"] = {
            ["name"] = "brokenknife",
            ["label"] = "Broken Knife",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "brokenknife.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Rusted Knife"
        },
        ["brokendetector"] = {
            ["name"] = "brokendetector",
            ["label"] = "Broken Detector",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "brokendetector.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "A broken metal detector"
        },
        ["brokenphone"] = {
            ["name"] = "brokenphone",
            ["label"] = "Broken Phone",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "brokenphone.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Broken Phone"
        },
        ["housekeys"] = {
            ["name"] = "housekeys",
            ["label"] = "House Keys",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "housekeys.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Random House Keys"
        },
        
        -- rare detectable items
        
        ["brokengameboy"] = {
            ["name"] = "brokengameboy",
            ["label"] = "Broken Gameboy",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "brokengameboy.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "A Broken Gameboy"
        },
        ["burriedtreasure"] = {
            ["name"] = "burriedtreasure",
            ["label"] = "Burried treasure",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "burriedtreasure.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "Burried Treasure, woah"
        },
        ["treasurekey"] = {
            ["name"] = "treasurekey",
            ["label"] = "Treasure key",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "treasurekey.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "A key? Maybe for treasure"
        },
        ["antiquecoin"] = {
            ["name"] = "antiquecoin",
            ["label"] = "Antique Coin",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "antiquecoin.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "This seems old..."
        },
        ["goldennugget"] = {
            ["name"] = "goldennugget",
            ["label"] = "The Mojave Nugget",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "goldnugget.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "This seems valuable, hmm"
        },
        ["goldcoin"] = {
            ["name"] = "goldcoin",
            ["label"] = "Gold coin",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "goldcoin.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "o.O GOLD!"
        },
        ["ancientcoin"] = {
            ["name"] = "ancientcoin",
            ["label"] = "Ancient Coin",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "aincientcoin.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "This seems really old and unique."
        },
        ["ww2relic"] = {
            ["name"] = "ww2relic",
            ["label"] = "WW2 Relic",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "ww2relic.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "I rememeber this from history class."
        },
        ["steeltrash"] = {
            ["name"] = "steeltrash",
            ["label"] = "Steel Trash",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "steelcan.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = false,
            ["combinable"] = nil,
            ["description"] = "A steel can"
        },
        ["pocketwatch"] = {
            ["name"] = "pocketwatch",
            ["label"] = "Pocket Watch",
            ["weight"] = 200,
            ["type"] = "item",
            ["image"] = "pocketwatch.png",
            ["unique"] = false,
            ["useable"] = false,
            ["shouldClose"] = true,
            ["combinable"] = nil,
            ["description"] = "A pocket watch"
        },
        
        -- -- -- JIXEL-PEARL/KOIs

        ["chocolate"] 				 	= {["name"] = "chocolate",  		     	["label"] = "Chocolate",	 			["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "chocolate.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Chocolate Bar", ['hunger'] = math.random(20, 30) },
        ["potatoes"] 					= {["name"] = "potatoes", 					["label"] = "Potatoes", 				["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "potatoes.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "Potatoes", },
        ["orange"] 				 		= {["name"] = "orange",  	     			["label"] = "Orange",	 				["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "orange.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "An Orange." },
        ["lime"] 				 		= {["name"] = "lime",  	     				["label"] = "Lime",	 					["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "lime.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A Lime." },
        ["banana"] 						= {["name"] = "banana", 					["label"] = "Banana", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "banana.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["cheddar"] 					= {["name"] = "cheddar",					["label"] = "Cheddar Slice",			["weight"] = 500,	["decay"] = nil,	["type"] = "item",		["image"] = "cheddar.png",				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Slice of Cheese"},
    
        ["onions"] 						= {["name"] = "onions", 					["label"] = "Onions", 					["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "onions.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "Onions",  },
        ["salmon"] 						= {["name"] = "salmon", 					["label"] = "Salmon", 					["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "salmon.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "Salmon", ['hunger'] = math.random(20, 30) },
        ["cod"] 						= {["name"] = "cod", 						["label"] = "Cod", 						["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "fish.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "Cod", ['hunger'] = math.random(20, 30) },
        ["sugar"] 						= {["name"] = "sugar", 						["label"] = "Sugar", 					["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "sugar.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "Sugar", },
        ["flour"] 						= {["name"] = "flour", 						["label"] = "Flour", 					["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "flour.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "Flour", },
        ["banana"] 						= {["name"] = "banana", 					["label"] = "Banana", 					["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "banana.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "Banana", },
        ["lettuce"] 					= {["name"] = "lettuce", 					["label"] = "Lettuce", 					["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "lettuce.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", },
        ["lobster"] 					= {["name"] = "lobster", 					["label"] = "Lobster", 					["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "lobster.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", },
        ["rawsteak"] 					= {["name"] = "rawsteak", 					["label"] = "Raw Steak", 				["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "meat.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", },
        ["tuna"] 						= {["name"] = "tuna", 						["label"] = "Tuna", 					["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "fish.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", },
        ["meat"] 						= {["name"] = "meat", 						["label"] = "Meat", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "meat.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["fish"] 						= {["name"] = "fish", 						["label"] = "Fish", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "fish.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["rice"] 						= {["name"] = "rice", 						["label"] = "Rice", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "rice.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["nori"] 						= {["name"] = "nori", 						["label"] = "Nori", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "nori.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["salmon"] 						= {["name"] = "salmon", 					["label"] = "Salmon", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "salmon.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["avocado"] 					= {["name"] = "avocado", 					["label"] = "Avocado", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "avocado.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["cucumber"] 					= {["name"] = "cucumber", 					["label"] = "Cucumber", 				["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "cucumber.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["carrot"] 						= {["name"] = "carrot", 					["label"] = "Carrot", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "carrots.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["noodles"] 					= {["name"] = "noodles", 					["label"] = "Noodles", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "noodles.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(30, 40) },
        ["broth"] 						= {["name"] = "broth", 						["label"] = "Broth", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "broth.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(10, 20) },
        ["greenonion"] 					= {["name"] = "greenonion", 				["label"] = "Green Onion", 				["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "greenonions.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(5, 10) },
        ["nachos"] 						= {["name"] = "nachos",  	     			["label"] = "Nachos",	 				["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "nachos.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bag of Nachos", ['hunger'] = math.random(40, 50) },
        ["cookedrice"] 					= {["name"] = "cookedrice", 				["label"] = "Cooked Rice",	 			["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "cookedrice.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "",  },
        ["pasta"] 						= {["name"] = "pasta",  	     			["label"] = "Bag of Pasta",	 			["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "pasta.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A bag of Pasta", ['hunger'] = math.random(40, 50) },
        ["coffeebeans"] 				= { ["name"] = "coffeebeans", 				["label"] = "Coffee Beans", 			["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "coffeebeans.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "A bag of coffee beans", ["hunger"] = math.random(40, 50)},
        ["wings"] 						= {["name"] = "wings",  	     			["label"] = "Plate of Wings",	 		["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "wings.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A plate of Chicken Wings", ['hunger'] = math.random(40, 50) },
    
        --Cocktails
        ["tillie"] 		 				= {["name"] = "tillie",  	     			["label"] = "Tillie Mae",	 			["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "tillie.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "The Tillie Mae Special", ['thirst'] = math.random(20, 30) },
        ["b52"] 		 				= {["name"] = "b52",  	     				["label"] = "B-52",	 					["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "b52.png", 					["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "B-52 Cocktail", ['thirst'] = math.random(20, 30) },
        ["brussian"] 		 			= {["name"] = "brussian",  	     			["label"] = "Black Russian",	 		["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "brussian.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Black Russian Cocktail", ['thirst'] = math.random(20, 30) },
        ["bkamikaze"] 				 	= {["name"] = "bkamikaze",  	     		["label"] = "Blue Kamikaze",	 		["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "bkamikaze.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Blue Kamikaze Cocktail", ['thirst'] = math.random(20, 30) },
        ["cappucc"] 				 	= {["name"] = "cappucc",  	     			["label"] = "Cappuccinotini",	 		["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "cappucc.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Cappuccinotini Cocktail", ['thirst'] = math.random(20, 30) },
        ["ccookie"] 				 	= {["name"] = "ccookie",  	     			["label"] = "Cranberry Cookie",	 		["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "ccookie.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Cranberry Cookie Cocktail", ['thirst'] = math.random(20, 30) },
        ["iflag"] 				 		= {["name"] = "iflag",  	     			["label"] = "Irish Flag",	 			["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "iflag.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Irish Flag Cocktail", ['thirst'] = math.random(20, 30) },
        ["kamikaze"] 				 	= {["name"] = "kamikaze",  	     			["label"] = "Kamikaze",	 				["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "kamikaze.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Kamikase Cocktail", ['thirst'] = math.random(20, 30) },
        ["sbullet"] 		 			= {["name"] = "sbullet",  	     			["label"] = "Silver Bullet",	 		["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "sbullet.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Silver Bullet Cocktail", ['thirst'] = math.random(20, 30) },
        ["voodoo"] 		 				= {["name"] = "voodoo",  	     			["label"] = "Voodoo",	 				["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "voodoo.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Voodoo Cocktail", ['thirst'] = math.random(20, 30) },
        ["woowoo"] 		 				= {["name"] = "woowoo",  	     			["label"] = "Woo Woo",	 				["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "woowoo.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Woowoo Cocktail", ['thirst'] = math.random(20, 30) },
    
        --Drink Ingredients
        ["orange"] 				 		= {["name"] = "orange",  	     			["label"] = "Orange",	 				["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "orange.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "An Orange." },
        ["lime"] 				 		= {["name"] = "lime",  	     				["label"] = "Lime",	 					["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "lime.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A Lime." },
        ["chocolate"] 				 	= {["name"] = "chocolate",  		     	["label"] = "Chocolate",	 			["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "chocolate.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Chocolate Bar", ['hunger'] = math.random(20, 30) },
        ["lemon"] 				 		= {["name"] = "lemon",  	     			["label"] = "Lemon",	 				["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "lemon.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A Lemon." },
    
        ["cranberry"] 				 	= {["name"] = "cranberry",  	     		["label"] = "Cranberry Juice",	 		["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "cranberry.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Cranberry Juice", ['thirst'] = math.random(10, 20) },
        ["schnapps"] 				 	= {["name"] = "schnapps",  	     			["label"] = "Peach Schnapps",	 		["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "schnapps.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Peach Schnapps", ['thirst'] = math.random(10, 20) },
        ["gin"] 					 	= {["name"] = "gin",  	     				["label"] = "Gin",	 					["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "gin.png", 					["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Gin", ['thirst'] = math.random(10, 20) },
        ["tequila"] 					= { ["name"] = "tequila", 					["label"] = "Tequila", 					["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "tequila.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "A bottle of Tequila", ['thirst'] = math.random(10, 20) },
    
        ["scotch"] 					 	= {["name"] = "scotch",  	     			["label"] = "Scotch",	 				["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "scotch.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Scotch", ['thirst'] = math.random(10, 20) },
        ["rum"] 					 	= {["name"] = "rum",  	     				["label"] = "Rum",	 					["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "rum.png", 					["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Rum", ['thirst'] = math.random(10, 20) },
        ["icream"] 					 	= {["name"] = "icream",  	     			["label"] = "Irish Cream",	 			["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "icream.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Irish Cream Liquer", ['thirst'] = math.random(10, 20) },
        ["amaretto"] 					= {["name"] = "amaretto",  	     			["label"] = "Amaretto",	 				["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "amaretto.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Amaretto", ['thirst'] = math.random(10, 20) },
        ["curaco"] 						= {["name"] = "curaco",  	     			["label"] = "Curaco",	 				["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "curaco.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Curaco", ['thirst'] = math.random(10, 20) },
    
        --BEERS
        ["ambeer"] 						= {["name"] = "ambeer",  	    	 		["label"] = "AM Beer",		 			["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "ambeer.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
        ["dusche"] 						= {["name"] = "dusche",  	    	 		["label"] = "Dusche Gold",		 		["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "dusche.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
        ["logger"] 						= {["name"] = "logger",  	    	 		["label"] = "Logger Beer",		 		["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "logger.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
        ["pisswasser"] 					= {["name"] = "pisswasser",  	    	 	["label"] = "Pißwasser",		 		["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "pisswaser1.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
        ["pisswasser2"] 				= {["name"] = "pisswasser2",  	    	 	["label"] = "Pißwasser Stout",		 	["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "pisswaser2.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
        ["pisswasser3"] 				= {["name"] = "pisswasser3",  	    	 	["label"] = "Pißwasser Pale Ale",		["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "pisswaser3.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
    
        --SODA
        ["sprunk"] 						= {["name"] = "sprunk",  	    	 		["label"] = "Sprunk",		 			["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "sprunk.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },
        ["sprunklight"] 				= {["name"] = "sprunklight",  	    	 	["label"] = "Sprunk Light",		 		["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "sprunklight.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },
        ["ecola"] 						= {["name"] = "ecola",  	    	 		["label"] = "eCola",		 			["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "ecola.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },
        ["ecolalight"] 					= {["name"] = "ecolalight",  	    	 	["label"] = "eCola Light",		 		["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "ecolalight.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },
        ["crisps"] 						= {["name"] = "crisps",  	    			["label"] = "Crisps",					["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "chips.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
    
        --Chop Block
        ["slicedonions"] 				= {["name"] = "slicedonions", 				["label"] = "Sliced Onions", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "slicedonions.png", 		["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["slicedpotatoes"] 				= {["name"] = "slicedpotatoes", 			["label"] = "Sliced Potatoes", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "slicepotatoes.png", 		["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },	
        ["slicedtomatoes"] 				= {["name"] = "slicedtomatoes", 			["label"] = "Sliced Tomatoes", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "slicedtomatoes.png", 		["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["slicedcucumber"] 				= {["name"] = "slicedcucumber", 			["label"] = "Sliced Cucumber", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "cucumber.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["slicedcarrot"] 				= {["name"] = "slicedcarrot", 				["label"] = "Sliced Carrot", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "slicedcarrots.png", 		["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(5, 10) },
        ["slicedfish"] 					= {["name"] = "slicedfish", 				["label"] = "Sliced Fish", 				["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "slicedfish.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(30, 40) },
    
        --Food
        ["scallops"] 					= {["name"] = "scallops", 					["label"] = "Sea Scallops", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "scallops.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["prosciutto"] 					= {["name"] = "prosciutto", 				["label"] = "Prociutto", 				["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "prociutto.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["lobstertail"] 				= {["name"] = "lobstertail", 				["label"] = "Poached Lobster Tail", 	["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "lobstertail.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["mussels"] 					= {["name"] = "mussels", 					["label"] = "Mussels", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "mussels.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["smokedsalmon"] 				= {["name"] = "smokedsalmon", 				["label"] = "Smoked Salmon", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "smokedsalmon.png", 		["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["filetmignon"]					= {["name"] = "filetmignon", 				["label"] = "Filet Mignon", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "filetmignon.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["squashravioli"] 				= {["name"] = "squashravioli", 				["label"] = "Squash Ravioli", 			["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "squashravioli.png", 		["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["lobsterbisque"] 				= {["name"] = "lobsterbisque", 				["label"] = "Lobster Bisque", 			["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "lobsterbisque.png", 		["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["mackrel"] 					= {["name"] = "mackrel", 					["label"] = "Mackerel with Seaweed Cracker", ["weight"] = 100, ["decay"] = nil,	["type"] = "item", 		["image"] = "mplate.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["fruitsalad"] 					= {["name"] = "fruitsalad", 				["label"] = "Fruit Salad", 				["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "fsalad.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["fishnchips"] 					= {["name"] = "fishnchips", 				["label"] = "Fish N Chips", 			["weight"] = 100, 	["decay"] = nil,	["type"] = "item", 		["image"] = "cplate.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["fishfingers"] 				= {["name"] = "fishfingers", 				["label"] = "Fish Fingers", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "fishfingers.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["frenchfries"] 				= {["name"] = "frenchfries", 				["label"] = "French Fries", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "frenchfries.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["fdicks"] 						= {["name"] = "fdicks", 					["label"] = "Fried Dicks", 				["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "fdicks.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["steriyaki"] 					= {["name"] = "steriyaki", 					["label"] = "Teriyaki Steak", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "steriyaki.png", 			["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["tunapog"] 					= {["name"] = "tunapog", 					["label"] = "Tuna Poke Bowl", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "tunapog.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["splate"] 						= {["name"] = "splate",  	    			["label"] = "Steak Plate",	 			["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "splate.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "A Steak Plate", ['hunger'] = math.random(40, 50) },
        ["rplate"] 						= {["name"] = "rplate",  	    			["label"] = "Ribs Plate",	 			["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "rplate.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "A plate of Ribs", ['hunger'] = math.random(40, 50) },
        ["nplate"] 						= {["name"] = "nplate",  	    			["label"] = "Nachos Plate",	 			["weight"] = 200, 	["decay"] = nil,	["type"] = "item", 		["image"] = "nplate.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "A plate of nachos and cheese", ['hunger'] = math.random(40, 50) },
        ["fruitgazpacho"] 				= {["name"] = "fruitgazpacho", 				["label"] = "Fruit Gazpacho", 			["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "fruitgazpacho.png", 		["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["ramen"] 						= {["name"] = "ramen", 						["label"] = "Ramen", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "ramen.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
        ["sushi"] 						= {["name"] = "sushi", 						["label"] = "Sushi", 					["weight"] = 100,  	["decay"] = nil,	["type"] = "item", 		["image"] = "sushi.png", 				["created"] = nil, 	["delete"] = true,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "", ["hunger"] = math.random(40, 50) },
    
  --BEERS
	["ambeer"] 						= {["name"] = "ambeer",  	    	 		["label"] = "AM Beer",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ambeer.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["dusche"] 						= {["name"] = "dusche",  	    	 		["label"] = "Dusche Gold",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "dusche.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["logger"] 						= {["name"] = "logger",  	    	 		["label"] = "Logger Beer",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "logger.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser"] 					= {["name"] = "pisswasser",  	    	 	["label"] = "Pißwasser",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser1.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser2"] 				= {["name"] = "pisswasser2",  	    	 	["label"] = "Pißwasser Stout",		 	["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser2.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser3"] 				= {["name"] = "pisswasser3",  	    	 	["label"] = "Pißwasser Pale Ale",		["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser3.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	--SODA
	["sprunk"] 						= {["name"] = "sprunk",  	    	 		["label"] = "Sprunk",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunk.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["sprunklight"] 				= {["name"] = "sprunklight",  	    	 	["label"] = "Sprunk Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunklight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["ecola"] 						= {["name"] = "ecola",  	    	 		["label"] = "eCola",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ecola.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["ecolalight"] 					= {["name"] = "ecolalight",  	    	 	["label"] = "eCola Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "ecolalight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	--WINES
	["amarone"] 					= {["name"] = "amarone",  	    	 		["label"] = "Amarone",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "amarone.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["barbera"] 					= {["name"] = "barbera",  	    			["label"] = "Barbera D'Asti",		 	["weight"] = 100, 		["type"] = "item", 		["image"] = "barbera.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["dolceto"] 					= {["name"] = "dolceto",  	    	 		["label"] = "Dolcetto D'Alba",		 	["weight"] = 100, 		["type"] = "item", 		["image"] = "dolceto.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["housered"] 					= {["name"] = "housered",  	    	 		["label"] = "House Red Wine",		 	["weight"] = 100, 		["type"] = "item", 		["image"] = "housered.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["housewhite"] 					= {["name"] = "housewhite",  	    	 	["label"] = "House White Wine",		 	["weight"] = 100, 		["type"] = "item", 		["image"] = "housewhite.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["rosso"] 						= {["name"] = "rosso",  	    	 		["label"] = "Rosso Del Montalcino",	 	["weight"] = 100, 		["type"] = "item", 		["image"] = "rosso.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	--DESSERTS
	["tiramisu"] 					= {["name"] = "tiramisu",  	    	 		["label"] = "Tiramisu",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "tiramisu.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	["gelato"] 						= {["name"] = "gelato",  	    	 		["label"] = "Choc and Vanilla Gelato",	["weight"] = 100, 		["type"] = "item", 		["image"] = "gelato.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	["medfruits"] 					= {["name"] = "medfruits",  	    	 	["label"] = "Fresh Fruit Medly",	 	["weight"] = 100, 		["type"] = "item", 		["image"] = "medfruits.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	--PASTA
	["bolognese"] 					= {["name"] = "bolognese",  	    	 	["label"] = "Bolognese",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "bolognese.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	["calamari"] 					= {["name"] = "calamari",  	    	 		["label"] = "Calamari Marinara",		["weight"] = 100, 		["type"] = "item", 		["image"] = "calamari.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	["meatball"] 					= {["name"] = "meatball",  	    	 		["label"] = "Homemade Meatballs",		["weight"] = 100, 		["type"] = "item", 		["image"] = "meatball.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	["alla"] 						= {["name"] = "alla",  	    	 			["label"] = "Alla Vodka",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "alla.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	["pescatore"] 					= {["name"] = "pescatore",  	    		["label"] = "Pescatore",			 	["weight"] = 100, 		["type"] = "item", 		["image"] = "pescatore.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	--PIZZA SLICES
	["capricciosa"] 				= {["name"] = "capricciosa",  	    	 	["label"] = "Capriccosa",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "capricciosa.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	["diavola"] 					= {["name"] = "diavola",  	    	 		["label"] = "Diavola",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "diavola.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	["marinara"] 					= {["name"] = "marinara",  	    	 		["label"] = "Marinara",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "marinara.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	["margherita"] 					= {["name"] = "margherita",  	    	 	["label"] = "Margherita",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "margherita.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	["prosciuttio"] 				= {["name"] = "prosciuttio",  	    		["label"] = "Prosciuttio E Funghi",		["weight"] = 100, 		["type"] = "item", 		["image"] = "proscuttio.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	["vegetariana"] 				= {["name"] = "vegetariana",  	    	 	["label"] = "Vegetariana",				["weight"] = 100, 		["type"] = "item", 		["image"] = "vegetariana.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
	--PIZZA BOXES
	["capricciosabox"] 				= {["name"] = "capricciosabox",  	     	["label"] = "Boxed Capriccosa",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "pizzabox.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", },
	["diavolabox"] 					= {["name"] = "diavolabox",  	    		["label"] = "Boxed Diavola",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "pizzabox.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", },
	["marinarabox"] 				= {["name"] = "marinarabox",  	    		["label"] = "Boxed Marinara",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "pizzabox.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", },
	["margheritabox"] 				= {["name"] = "margheritabox",  	     	["label"] = "Boxed Margherita",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "pizzabox.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", },
	["prosciuttiobox"] 				= {["name"] = "prosciuttiobox",  	    	["label"] = "Boxed Prosciuttio E Funghi",["weight"] = 100, 		["type"] = "item", 		["image"] = "pizzabox.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", },
	["vegetarianabox"] 				= {["name"] = "vegetarianabox",  	     	["label"] = "Boxed Vegetariana",		["weight"] = 100, 		["type"] = "item", 		["image"] = "pizzabox.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", },
	--INGREDIENTS
	["pizzabase"] 					= {["name"] = "pizzabase",  	     		["label"] = "Pizza Base",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "base2.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "", },
	["pizzadough"] 					= {["name"] = "pizzadough",  	    		["label"] = "Pizza Dough",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "pizzadough.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "", },
	["mozz"] 						= {["name"] = "mozz",  	    				["label"] = "Mozzeralla",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "mozz.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "", },
	["sauce"] 						= {["name"] = "sauce",  	   			  	["label"] = "Tomato Sauce",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "sauce.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "", },
	["salami"] 						= {["name"] = "salami",  	    			["label"] = "Salami",					["weight"] = 100, 		["type"] = "item", 		["image"] = "salami.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "", },
	["ham"] 						= {["name"] = "ham",  	     				["label"] = "Ham",						["weight"] = 100, 		["type"] = "item", 		["image"] = "ham.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "", },
	["squid"] 						= {["name"] = "squid",  	   			  	["label"] = "Calamari",					["weight"] = 100, 		["type"] = "item", 		["image"] = "squid.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "", },
	["pizzmushrooms"] 				= {["name"] = "pizzmushrooms",  	     	["label"] = "Mushrooms",				["weight"] = 100, 		["type"] = "item", 		["image"] = "mushrooms.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "", },
	["olives"] 						= {["name"] = "olives",  	   			  	["label"] = "Olives",					["weight"] = 100, 		["type"] = "item", 		["image"] = "olives.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "", },
	["basil"] 						= {["name"] = "basil",  	   			  	["label"] = "Basil",					["weight"] = 100, 		["type"] = "item", 		["image"] = "basil.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "", },

	["meat"] 						= {["name"] = "meat",  	     				["label"] = "Meat",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "meat.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A slab of Meat", },
	["pasta"] 						= {["name"] = "pasta",  	     			["label"] = "Bag of Pasta",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "pasta.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A bag of Pasta", },

	["lettuce"] 	 			 	 = {["name"] = "lettuce",       			["label"] = "Lettuce",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "lettuce.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Some big taco brother"},

-- Food
["tripleburger"] 		= {["name"] = "tripleburger",  	    ["label"] = "The Triple Burger",		["weight"] = 100,["type"] = "item",["image"] = "tripleburger.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["baconcheesemelt"] 	= {["name"] = "baconcheesemelt",  	["label"] = "Bacon-Triple Cheese Melt", ["weight"] = 100,["type"] = "item",["image"] = "baconcheesemelt.png",	["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["chillidog"] 			= {["name"] = "chillidog",  	    ["label"] = "Footlong Chili Dog",		["weight"] = 100,["type"] = "item",["image"] = "chillidog.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["atomfries"] 			= {["name"] = "atomfries",  	    ["label"] = "Atom Fries",				["weight"] = 100,["type"] = "item",["image"] = "atomfries.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },

["chickenfillet"] 		= {["name"] = "chickenfillet",  	["label"] = "Chicken Fillets",			["weight"] = 100,["type"] = "item",["image"] = "chickenbreasts.png", 	["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["chickenhorn"] 		= {["name"] = "chickenhorn",  	    ["label"] = "Chicken Hornstars",		["weight"] = 100,["type"] = "item",["image"] = "chickhornstars.png", 	["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["grilledchicken"] 		= {["name"] = "grilledchicken",  	["label"] = "Chicken Sandwich",			["weight"] = 100,["type"] = "item",["image"] = "chickensandwich.png", 	["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["chickensalad"] 		= {["name"] = "chickensalad",  	    ["label"] = "Chicken Salad",			["weight"] = 100,["type"] = "item",["image"] = "chickensalad.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["hunksohen"] 			= {["name"] = "hunksohen",  	    ["label"] = "Hunk o' Hen",				["weight"] = 100,["type"] = "item",["image"] = "chickenthighs.png", 	["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },

["chickentaco"] 		= {["name"] = "chickentaco",  	    ["label"] = "Chicken Taco",				["weight"] = 100,["type"] = "item",["image"] = "chickentaco.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["enchiladas"] 			= {["name"] = "enchiladas",  	    ["label"] = "Breakfast Enchiladas",		["weight"] = 100,["type"] = "item",["image"] = "enchi.png", 			["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["gazpacho"] 			= {["name"] = "gazpacho",  	    	["label"] = "Guzpacho",					["weight"] = 100,["type"] = "item",["image"] = "gazpacho.png", 			["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },

["hornbreakfast"] 		= {["name"] = "hornbreakfast",  	["label"] = "Horny's Breakfast",		["weight"] = 100,["type"] = "item",["image"] = "bangers.png", 			["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["eggsbenedict"] 		= {["name"] = "eggsbenedict",  	    ["label"] = "Eggs Benedict",			["weight"] = 100,["type"] = "item",["image"] = "eggbene.png", 			["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["hashbrowns"] 			= {["name"] = "hashbrowns",  	    ["label"] = "Hash Browns",				["weight"] = 100,["type"] = "item",["image"] = "hashbrown.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["sausages"] 			= {["name"] = "sausages",  	    	["label"] = "Sausages",					["weight"] = 100,["type"] = "item",["image"] = "sausage.png", 			["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["baconroll"] 			= {["name"] = "baconroll",  	    ["label"] = "Bacon Roll",				["weight"] = 100,["type"] = "item",["image"] = "baconroll.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["baconeggtoast"] 		= {["name"] = "baconeggtoast",  	["label"] = "Bacon & Egg on Toast",		["weight"] = 100,["type"] = "item",["image"] = "baconegg.png", 			["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["frenchtoast"] 		= {["name"] = "frenchtoast",  	    ["label"] = "French Toast",				["weight"] = 100,["type"] = "item",["image"] = "frenchtoast.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["frenchtoastbacon"] 	= {["name"] = "frenchtoastbacon",  	["label"] = "French Toast Bacon",		["weight"] = 100,["type"] = "item",["image"] = "frenchbacon.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },

["hornburger"] 			= {["name"] = "hornburger",  	    ["label"] = "HornBurger",				["weight"] = 100,["type"] = "item",["image"] = "hornburger.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["dblhornburger"] 	 	= {["name"] = "dblhornburger",  	["label"] = "DBL HornBurger",			["weight"] = 100,["type"] = "item",["image"] = "dblhornburger.png", 	["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["baconhornburger"] 	= {["name"] = "baconhornburger",  	["label"] = "HornBurger Bacon",			["weight"] = 100,["type"] = "item",["image"] = "baconburger.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["picklehornburger"] 	= {["name"] = "picklehornburger",  	["label"] = "HornBurger Pickle",		["weight"] = 100,["type"] = "item",["image"] = "pickleburger.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["chickenhornburger"] 	= {["name"] = "chickenhornburger",  ["label"] = "Chicken HornBurger",		["weight"] = 100,["type"] = "item",["image"] = "chickenburger.png", 	["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["dblchickenhornburger"]= {["name"] = "dblchickenhornburger",["label"] = "DBL Chicken HornBurger",	["weight"] = 100,["type"] = "item",["image"] = "dblchickenburger.png", 	["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },

["icecone"] 			= {["name"] = "icecone",  	    	["label"] = "Ice Cone",					["weight"] = 100,["type"] = "item",["image"] = "cone.png", 				["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["icenugget"] 			= {["name"] = "icenugget",  	    ["label"] = "Ice Nugget",				["weight"] = 100,["type"] = "item",["image"] = "icenugget.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
["icecake"] 			= {["name"] = "icecake",  	    	["label"] = "Ice Cream Cake",			["weight"] = 100,["type"] = "item",["image"] = "icecake.png", 			["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },

-- Desert
["creamyshake"] 		= {["name"] = "creamyshake",    	["label"] = "Extra Creamy Jumbo Shake",	["weight"] = 100,["type"] = "item",["image"] = "atomshake.png",			["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['hunger'] = math.random(20, 30) },
-- Drinks
["atomsoda"] 			= {["name"] = "atomsoda",  	    	["label"] = "Atom Soda",				["weight"] = 100,["type"] = "item",["image"] = "atomsoda.png", 			["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['thirst'] = math.random(20, 30) },
["orangotang"] 			= {["name"] = "orangotang",  	    ["label"] = "Bacon",					["weight"] = 100,["type"] = "item",["image"] = "orangotang.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['thirst'] = math.random(20, 30) },
["raine"] 				= {["name"] = "raine",  	    	["label"] = "Raine",					["weight"] = 100,["type"] = "item",["image"] = "raine.png", 			["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['thirst'] = math.random(20, 30) },
["junkdrink"] 			= {["name"] = "junkdrink",  	    ["label"] = "Junk",						["weight"] = 100,["type"] = "item",["image"] = "junkdrink.png", 		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "", ['thirst'] = math.random(20, 30) },

-- Ingredients
["burgerpatty"] 		= {["name"] = "burgerpatty",		["label"] = "Patty",					["weight"] = 100,["type"] = "item",["image"] = "burgerpatty.png", 		["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["breadslice"] 			= {["name"] = "breadslice",			["label"] = "Slice of Bread",			["weight"] = 100,["type"] = "item",["image"] = "breadslice.png",		["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "",['hunger'] = math.random(10, 20) },
["cheddar"] 			= {["name"] = "cheddar",  	    	["label"] = "Cheese",					["weight"] = 100,["type"] = "item",["image"] = "cheddar.png", 			["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["lettuce"] 			= {["name"] = "lettuce",  	    	["label"] = "Lettuce",					["weight"] = 100,["type"] = "item",["image"] = "lettuce.png", 			["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["tomato"] 				= {["name"] = "tomato",  	    	["label"] = "Tomato",					["weight"] = 100,["type"] = "item",["image"] = "tomato.png", 			["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["burgerbun"] 			= {["name"] = "burgerbun",  	    ["label"] = "Burger Bun",				["weight"] = 100,["type"] = "item",["image"] = "burgerbun.png", 		["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["hotdogbun"] 			= {["name"] = "hotdogbun",  	    ["label"] = "Hotdog Bun",				["weight"] = 100,["type"] = "item",["image"] = "hotdogbun.png", 		["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["chillimince"] 		= {["name"] = "chillimince",  	    ["label"] = "Chillimince",				["weight"] = 100,["type"] = "item",["image"] = "chillimince.png", 		["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["butter"] 				= {["name"] = "butter",  	    	["label"] = "Butter",					["weight"] = 100,["type"] = "item",["image"] = "farming_butter.png", 	["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["milk"] 				= {["name"] = "milk",  	    		["label"] = "Milk",						["weight"] = 100,["type"] = "item",["image"] = "burger-milk.png", 		["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "",['thirst'] = math.random(20, 30) },
["cream"] 				= {["name"] = "cream",  	    	["label"] = "Cream",					["weight"] = 100,["type"] = "item",["image"] = "cream.png", 			["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["burgermeat"] 			= {["name"] = "burgermeat",  	    ["label"] = "Burger Meat",				["weight"] = 100,["type"] = "item",["image"] = "burgermeat.png", 		["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["hotdogmeat"] 			= {["name"] = "hotdogmeat",  	    ["label"] = "Hotdog Meat",				["weight"] = 100,["type"] = "item",["image"] = "hotdogmeat.png", 		["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["slicedtomato"] 		= {["name"] = "slicedtomato",  	    ["label"] = "Sliced Tomato",			["weight"] = 100,["type"] = "item",["image"] = "slicedtomato.png", 		["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["slicedpotato"] 		= {["name"] = "slicedpotato",  	    ["label"] = "Sliced Potato",			["weight"] = 100,["type"] = "item",["image"] = "burger-slicedpotato.png",["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["rawhotdog"] 			= {["name"] = "rawhotdog",  	    ["label"] = "Raw Hotdog",				["weight"] = 100,["type"] = "item",["image"] = "rawhotdog.png", 		["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["potato"] 				= {["name"] = "potato",  	    	["label"] = "Potato",					["weight"] = 100,["type"] = "item",["image"] = "potato.png", 			["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["egg"]       			= {["name"] = "egg",            	["label"] = "Egg",       				["weight"] = 100,["type"] = "item",["image"] = "farming_egg.png",   	["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "" },
["bacon"] 				= {["name"] = "bacon",  	    	["label"] = "Bacon",					["weight"] = 100,["type"] = "item",["image"] = "bacon.png", 			["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["rawbacon"] 			= {["name"] = "rawbacon",  	    	["label"] = "Raw Bacon",				["weight"] = 100,["type"] = "item",["image"] = "rawbacon.png", 			["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["rawsausage"] 			= {["name"] = "rawsausage",  	    ["label"] = "Raw Sausages",				["weight"] = 100,["type"] = "item",["image"] = "rawsausage.png", 		["unique"] = false,["useable"] = false,["shouldClose"] = true,["description"] = "", },
["pickle"] 						= {["name"] = "pickle",  	     			["label"] = "Pickle",	 		 		["weight"] = 200, 		["type"] = "item", 		["image"] = "pickle.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A jar of Pickles", ['hunger'] = math.random(40, 50) },

["chickenbreast"]       = {["name"] = "chickenbreast",		["label"] = "Raw Chicken Breast",       ["weight"] = 100,["type"] = "item",["image"] = "farming_chickenbreast.png",["unique"] = false,["useable"] = true,["shouldClose"] = true,["description"] = "" },

["sprunk"] 						= {["name"] = "sprunk",  	    	 		["label"] = "Sprunk",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunk.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
["sprunklight"] 				= {["name"] = "sprunklight",  	    	 	["label"] = "Sprunk Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunklight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
["ecola"] 						= {["name"] = "ecola",  	    	 		["label"] = "eCola",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ecola.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
["ecolalight"] 					= {["name"] = "ecolalight",  	    	 	["label"] = "eCola Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "ecolalight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },

--VANILLA UNICORN
	--Drink Ingredients
	["cubasil"] 					= {["name"] = "cubasil",  	     			["label"] = "Cucumber Basil",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "cubasil.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Hand full of Cucumber and Basil", ['hunger'] = math.random(40, 50) },
	["mintleaf"] 					= {["name"] = "mintleaf",  	     			["label"] = "Mint",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "mint.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Mint Leaves", ['hunger'] = math.random(40, 50) },
	["peach"] 						= {["name"] = "peach",  	     			["label"] = "Peach",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "peach.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A peach", ['hunger'] = math.random(40, 50) },
	["strawberry"] 					= {["name"] = "strawberry",  	     		["label"] = "Strawberries",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "strawberry.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Strawberries", ['hunger'] = math.random(40, 50) },
	["orange"] 				 		= {["name"] = "orange",  	     			["label"] = "Orange",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "orange.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "An Orange." },
	["lime"] 				 		= {["name"] = "lime",  	     				["label"] = "Lime",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "lime.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A Lime." },
	["lemon"] 				 		= {["name"] = "lemon",  	     			["label"] = "Lemon",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "lemon.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A Lemon." },
	["chocolate"] 				 	= {["name"] = "chocolate",  		     	["label"] = "Chocolate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "chocolate.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Chocolate Bar", ['hunger'] = math.random(20, 30) },

	["midori"] 						= {["name"] = "midori",  	     			["label"] = "Midori",	 		 		["weight"] = 200, 		["type"] = "item", 		["image"] = "midori.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Midori", ['thirst'] = math.random(40, 50) },
	["pinejuice"] 					= {["name"] = "pinejuice",  	     		["label"] = "Pineapple Juice",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "pinejuice.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Pineapple Juice", ['thirst'] = math.random(40, 50) },
	["prosecco"] 					= {["name"] = "prosecco",  	     			["label"] = "Prosecco",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "prosecco.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Prosecco", ['thirst'] = math.random(40, 50) },
	["tequila"] 					= {["name"] = "tequila",  	     			["label"] = "Tequila",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "tequila.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Tequila", ['thirst'] = math.random(40, 50) },
	["triplsec"] 					= {["name"] = "triplsec",  	     			["label"] = "Triple Sec",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "triplesec.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, ["combinable"] = nil,   ["description"] = "Triple Sec", ['thirst'] = math.random(40, 50) },

	["cranberry"] 				 	= {["name"] = "cranberry",  	     		["label"] = "Cranberry Juice",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "cranberry.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Cranberry Juice", ['thirst'] = math.random(20, 30) },
	["gin"] 					 	= {["name"] = "gin",  	     				["label"] = "Gin",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "gin.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Gin", ['thirst'] = math.random(20, 30) },
	["rum"] 					 	= {["name"] = "rum",  	     				["label"] = "Rum",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "rum.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Rum", ['thirst'] = math.random(20, 30) },
	["amaretto"] 					= {["name"] = "amaretto",  	     			["label"] = "Amaretto",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "amaretto.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Amaretto", ['thirst'] = math.random(20, 30) },

	--Cocktails
	["amarettosour"] 				= {["name"] = "amarettosour",  	     		["label"] = "Amaretto Sour",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "amarettosour.png", ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Amaretto Sour", ['thirst'] = math.random(40, 50) },
	["bellini"] 					= {["name"] = "bellini",  	     			["label"] = "Bellini",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "bellini.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Bellini", ['thirst'] = math.random(40, 50) },
	["cosmopolitan"] 				= {["name"] = "cosmopolitan",  	     		["label"] = "Cosmopolitan",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "cosmopolitan.png", ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Cosmopolitan", ['thirst'] = math.random(40, 50) },
	["longisland"] 					= {["name"] = "longisland",  	     		["label"] = "Long Island Ice tea",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "longisland.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Long Island Ice Tea", ['thirst'] = math.random(40, 50) },
	["margarita"] 					= {["name"] = "margarita",  	     		["label"] = "Margarita",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "margarita.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Margarita", ['thirst'] = math.random(40, 50) },
	["pinacolada"] 					= {["name"] = "pinacolada",  	     		["label"] = "Pina Colada",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "pinacolada.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Pine Colada", ['thirst'] = math.random(40, 50) },
	["sangria"] 					= {["name"] = "sangria",  	     			["label"] = "Sangria",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "sangria.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Sangria", ['thirst'] = math.random(40, 50) },
	["screwdriver"] 				= {["name"] = "screwdriver",  	     		["label"] = "Screwdriver",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "screwdriver.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Screwdriver", ['thirst'] = math.random(40, 50) },
	["strawdaquiri"] 				= {["name"] = "strawdaquiri",  	     		["label"] = "Strawberry Daquiri",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "strawdaquiri.png", ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Strawberry Daquiri", ['thirst'] = math.random(40, 50) },
	["strawmargarita"] 				= {["name"] = "strawmargarita",  	     	["label"] = "Strawberry Margarita",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "strawmargarita.png",["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Starberry Margarita", ['thirst'] = math.random(40, 50) },

	--BEERS
	["ambeer"] 						= {["name"] = "ambeer",  	    	 		["label"] = "AM Beer",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ambeer.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["dusche"] 						= {["name"] = "dusche",  	    	 		["label"] = "Dusche Gold",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "dusche.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["logger"] 						= {["name"] = "logger",  	    	 		["label"] = "Logger Beer",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "logger.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser"] 					= {["name"] = "pisswasser",  	    	 	["label"] = "Pißwasser",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser1.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser2"] 				= {["name"] = "pisswasser2",  	    	 	["label"] = "Pißwasser Stout",		 	["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser2.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser3"] 				= {["name"] = "pisswasser3",  	    	 	["label"] = "Pißwasser Pale Ale",		["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser3.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },

	--SODA
	["sprunk"] 						= {["name"] = "sprunk",  	    	 		["label"] = "Sprunk",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunk.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["sprunklight"] 				= {["name"] = "sprunklight",  	    	 	["label"] = "Sprunk Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunklight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["ecola"] 						= {["name"] = "ecola",  	    	 		["label"] = "eCola",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ecola.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["ecolalight"] 					= {["name"] = "ecolalight",  	    	 	["label"] = "eCola Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "ecolalight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },

	["crisps"] 						= {["name"] = "crisps",  	    			["label"] = "Crisps",					["weight"] = 100, 		["type"] = "item", 		["image"] = "chips.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },

	--Food
	["nplate"] 						= {["name"] = "nplate",  	     			["label"] = "Nachos Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "nplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A plate of nachos and cheese", ['hunger'] = math.random(40, 50) },
	["vusliders"] 				 	= {["name"] = "vusliders",  	     		["label"] = "Sliders",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "sliders.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Sliders", ['hunger'] = math.random(40, 50) },
	["vutacos"] 				 	= {["name"] = "vutacos",  	     			["label"] = "Tacos",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "tacos.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Tacos", ['hunger'] = math.random(40, 50) },
	["tots"] 				 		= {["name"] = "tots",  	     				["label"] = "Tits or Tots",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "tots.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Sexy Tots", ['hunger'] = math.random(40, 50) },

	--Food Ingredients
	["meat"] 						= {["name"] = "meat",  	     				["label"] = "Meat",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "meat.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A slab of Meat", ['hunger'] = math.random(40, 50) },
	["nachos"] 						= {["name"] = "nachos",  	     			["label"] = "Nachos",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "nachos.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bag of Nachos", ['hunger'] = math.random(40, 50) },
	["lettuce"] 	 			 	= {["name"] = "lettuce",       				["label"] = "Lettuce",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "lettuce.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Some big taco brother"},
	["cheddar"] 					= {["name"] = "cheddar",					["label"] = "Cheddar Slice",			["weight"] = 500,		["type"] = "item",		["image"] = "cheddar.png",		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Food" },
	["potato"] 						= {["name"] = "potato",						["label"] = "Potatoes",					["weight"] = 500,		["type"] = "item",		["image"] = "potatoes.png",		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Food" },

-- jim-mining stuff
["stone"] 		 	 			 = {["name"] = "stone",           				["label"] = "Stone",	 				["weight"] = 2000, 	    ["type"] = "item", 		["image"] = "stone.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Stone woo"},

["uncut_emerald"] 				 = {["name"] = "uncut_emerald", 			  	["label"] = "Uncut Emerald", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_emerald.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A rough Emerald"},
["uncut_ruby"] 					 = {["name"] = "uncut_ruby", 			  	  	["label"] = "Uncut Ruby", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_ruby.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A rough Ruby"},
["uncut_diamond"] 				 = {["name"] = "uncut_diamond", 			  	["label"] = "Uncut Diamond", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_diamond.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A rough Diamond"},
["uncut_sapphire"] 				 = {["name"] = "uncut_sapphire", 			  	["label"] = "Uncut Sapphire", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_sapphire.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A rough Sapphire"},

["emerald"] 					 = {["name"] = "emerald", 			  	  		["label"] = "Emerald", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "emerald.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A Emerald that shimmers"},
["ruby"] 						 = {["name"] = "ruby", 			  	  			["label"] = "Ruby", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "ruby.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A Ruby that shimmers"},
["diamond"] 					 = {["name"] = "diamond", 			  	  		["label"] = "Diamond", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "diamond.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A Diamond that shimmers"},
["sapphire"] 					 = {["name"] = "sapphire", 			  	  		["label"] = "Sapphire",					["weight"] = 100, 		["type"] = "item", 		["image"] = "sapphire.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A Sapphire that shimmers"},

["gold_ring"] 					 = {["name"] = "gold_ring", 			  	  	["label"] = "Gold Ring", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "gold_ring.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["diamond_ring"] 				 = {["name"] = "diamond_ring", 			  	  	["label"] = "Diamond Ring", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_ring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["ruby_ring"] 					 = {["name"] = "ruby_ring", 			  	  	["label"] = "Ruby Ring", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_ring.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["sapphire_ring"] 				 = {["name"] = "sapphire_ring", 			  	["label"] = "Sapphire Ring", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_ring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["emerald_ring"] 				 = {["name"] = "emerald_ring", 			  	  	["label"] = "Emerald Ring", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_ring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},

["silver_ring"] 				 = {["name"] = "silver_ring", 			  		["label"] = "Silver Ring", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "silver_ring.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["diamond_ring_silver"] 		 = {["name"] = "diamond_ring_silver", 		  	["label"] = "Diamond Ring Silver", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_ring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["ruby_ring_silver"] 			 = {["name"] = "ruby_ring_silver", 			  	["label"] = "Ruby Ring Silver", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_ring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["sapphire_ring_silver"] 		 = {["name"] = "sapphire_ring_silver", 		 	["label"] = "Sapphire Ring Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_ring_silver.png", ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["emerald_ring_silver"] 		 = {["name"] = "emerald_ring_silver", 		  	["label"] = "Emerald Ring Silver", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_ring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},

["goldchain"] 				 	 = {["name"] = "goldchain", 			  	  	["label"] = "Golden Chain", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "goldchain.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["diamond_necklace"] 			 = {["name"] = "diamond_necklace", 			  	["label"] = "Diamond Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["ruby_necklace"] 				 = {["name"] = "ruby_necklace", 			  	["label"] = "Ruby Necklace", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_necklace.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["sapphire_necklace"] 			 = {["name"] = "sapphire_necklace", 			["label"] = "Sapphire Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["emerald_necklace"] 			 = {["name"] = "emerald_necklace", 			  	["label"] = "Emerald Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},

["silverchain"] 				 = {["name"] = "silverchain", 			  	 	["label"] = "Silver Chain", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "silverchain.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["diamond_necklace_silver"] 	 = {["name"] = "diamond_necklace_silver", 		["label"] = "Diamond Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["ruby_necklace_silver"] 		 = {["name"] = "ruby_necklace_silver", 			["label"] = "Ruby Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_necklace_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["sapphire_necklace_silver"] 	 = {["name"] = "sapphire_necklace_silver", 		["label"] = "Sapphire Necklace Silver", ["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["emerald_necklace_silver"] 	 = {["name"] = "emerald_necklace_silver", 		["label"] = "Emerald Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},

["goldearring"] 				 = {["name"] = "goldearring", 				  	["label"] = "Golden Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "gold_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["diamond_earring"] 			 = {["name"] = "diamond_earring", 			  	["label"] = "Diamond Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["ruby_earring"] 				 = {["name"] = "ruby_earring", 			  		["label"] = "Ruby Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["sapphire_earring"] 			 = {["name"] = "sapphire_earring", 				["label"] = "Sapphire Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_earring.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["emerald_earring"] 			 = {["name"] = "emerald_earring", 			  	["label"] = "Emerald Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},

["silverearring"] 				 = {["name"] = "silverearring", 				["label"] = "Silver Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "silver_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["diamond_earring_silver"] 		 = {["name"] = "diamond_earring_silver", 		["label"] = "Diamond Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["ruby_earring_silver"] 		 = {["name"] = "ruby_earring_silver", 			["label"] = "Ruby Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["sapphire_earring_silver"] 	 = {["name"] = "sapphire_earring_silver", 		["label"] = "Sapphire Earrings Silver", ["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_earring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["emerald_earring_silver"] 		 = {["name"] = "emerald_earring_silver", 		["label"] = "Emerald Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},

["carbon"] 					 	 = {["name"] = "carbon", 			  	  		["label"] = "Carbon", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "carbon.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Carbon, a base ore."},
["ironore"] 					 = {["name"] = "ironore", 			  	  		["label"] = "Iron Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "ironore.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Iron, a base ore."},
["copperore"] 					 = {["name"] = "copperore", 			  	  	["label"] = "Copper Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "copperore.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Copper, a base ore."},
["goldore"] 					 = {["name"] = "goldore", 			  	  		["label"] = "Gold Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "goldore.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Gold Ore"},
["silverore"] 					 = {["name"] = "silverore", 			  	  	["label"] = "Silver Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "silverore.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Silver Ore"},

["goldingot"] 					 = {["name"] = "goldingot", 			  	  	["label"] = "Gold Ingot", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "goldingot.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["silveringot"] 				 = {["name"] = "silveringot", 			  	  	["label"] = "Silver Ingot", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "silveringot.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},

["pickaxe"] 					 = {["name"] = "pickaxe", 			  	  		["label"] = "Pickaxe", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "pickaxe.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "" },
["miningdrill"] 				 = {["name"] = "miningdrill", 			  	  	["label"] = "Mining Drill", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "miningdrill.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "" },
["mininglaser"] 				 = {["name"] = "mininglaser", 			  	  	["label"] = "Mining Laser", 			["weight"] = 900, 		["type"] = "item", 		["image"] = "mininglaser.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "" },
["drillbit"] 					 = {["name"] = "drillbit", 			  	  		["label"] = "Drill Bit", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "drillbit.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "" },

["goldpan"] 					 = {["name"] = "goldpan", 			  	  		["label"] = "Gold Panning Tray", 		["weight"] = 10, 		["type"] = "item", 		["image"] = "goldpan.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "" },

["bottle"] 						 = {["name"] = "bottle", 			  	  		["label"] = "Empty Bottle", 			["weight"] = 10, 		["type"] = "item", 		["image"] = "bottle.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A glass bottle"},
["can"] 						 = {["name"] = "can", 			  	  			["label"] = "Empty Can", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "can.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "An empty can, good for recycling"},

--HENHOUSE
	--Cocktails
	["tillie"] 		 				= {["name"] = "tillie",  	     			["label"] = "Tillie Mae",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "tillie.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "The Tillie Mae Special", ['thirst'] = math.random(20, 30) },
	["b52"] 		 				= {["name"] = "b52",  	     				["label"] = "B-52",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "b52.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "B-52 Cocktail", ['thirst'] = math.random(20, 30) },
	["brussian"] 		 			= {["name"] = "brussian",  	     			["label"] = "Black Russian",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "brussian.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Black Russian Cocktail", ['thirst'] = math.random(20, 30) },
	["bkamikaze"] 				 	= {["name"] = "bkamikaze",  	     		["label"] = "Blue Kamikaze",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "bkamikaze.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Blue Kamikaze Cocktail", ['thirst'] = math.random(20, 30) },
	["cappucc"] 				 	= {["name"] = "cappucc",  	     			["label"] = "Cappuccinotini",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "cappucc.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Cappuccinotini Cocktail", ['thirst'] = math.random(20, 30) },
	["ccookie"] 				 	= {["name"] = "ccookie",  	     			["label"] = "Cranberry Cookie",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "ccookie.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Cranberry Cookie Cocktail", ['thirst'] = math.random(20, 30) },
	["iflag"] 				 		= {["name"] = "iflag",  	     			["label"] = "Irish Flag",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "iflag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Irish Flag Cocktail", ['thirst'] = math.random(20, 30) },
	["kamikaze"] 				 	= {["name"] = "kamikaze",  	     			["label"] = "Kamikaze",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "kamikaze.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Kamikase Cocktail", ['thirst'] = math.random(20, 30) },
	["sbullet"] 		 			= {["name"] = "sbullet",  	     			["label"] = "Silver Bullet",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "sbullet.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Silver Bullet Cocktail", ['thirst'] = math.random(20, 30) },
	["voodoo"] 		 				= {["name"] = "voodoo",  	     			["label"] = "Voodoo",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "voodoo.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Voodoo Cocktail", ['thirst'] = math.random(20, 30) },
	["woowoo"] 		 				= {["name"] = "woowoo",  	     			["label"] = "Woo Woo",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "woowoo.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Woowoo Cocktail", ['thirst'] = math.random(20, 30) },

	--Drink Ingredients
	["orange"] 				 		= {["name"] = "orange",  	     			["label"] = "Orange",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "orange.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "An Orange." },
	["lime"] 				 		= {["name"] = "lime",  	     				["label"] = "Lime",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "lime.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A Lime." },
	["chocolate"] 				 	= {["name"] = "chocolate",  		     	["label"] = "Chocolate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "chocolate.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Chocolate Bar", ['hunger'] = math.random(20, 30) },

	["cranberry"] 				 	= {["name"] = "cranberry",  	     		["label"] = "Cranberry Juice",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "cranberry.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Cranberry Juice", ['thirst'] = math.random(10, 20) },
	["schnapps"] 				 	= {["name"] = "schnapps",  	     			["label"] = "Peach Schnapps",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "schnapps.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Peach Schnapps", ['thirst'] = math.random(10, 20) },
	["gin"] 					 	= {["name"] = "gin",  	     				["label"] = "Gin",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "gin.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Gin", ['thirst'] = math.random(10, 20) },
	["scotch"] 					 	= {["name"] = "scotch",  	     			["label"] = "Scotch",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "scotch.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Scotch", ['thirst'] = math.random(10, 20) },
	["rum"] 					 	= {["name"] = "rum",  	     				["label"] = "Rum",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "rum.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Rum", ['thirst'] = math.random(10, 20) },
	["icream"] 					 	= {["name"] = "icream",  	     			["label"] = "Irish Cream",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "icream.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Irish Cream Liquer", ['thirst'] = math.random(10, 20) },
	["amaretto"] 					= {["name"] = "amaretto",  	     			["label"] = "Amaretto",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "amaretto.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Amaretto", ['thirst'] = math.random(10, 20) },
	["curaco"] 						= {["name"] = "curaco",  	     			["label"] = "Curaco",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "curaco.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bottle of Curaco", ['thirst'] = math.random(10, 20) },

	--BEERS
	["ambeer"] 						= {["name"] = "ambeer",  	    	 		["label"] = "AM Beer",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ambeer.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["dusche"] 						= {["name"] = "dusche",  	    	 		["label"] = "Dusche Gold",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "dusche.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["logger"] 						= {["name"] = "logger",  	    	 		["label"] = "Logger Beer",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "logger.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser"] 					= {["name"] = "pisswasser",  	    	 	["label"] = "Pißwasser",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser1.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser2"] 				= {["name"] = "pisswasser2",  	    	 	["label"] = "Pißwasser Stout",		 	["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser2.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser3"] 				= {["name"] = "pisswasser3",  	    	 	["label"] = "Pißwasser Pale Ale",		["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser3.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },

	--SODA
	["sprunk"] 						= {["name"] = "sprunk",  	    	 		["label"] = "Sprunk",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunk.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },
	["sprunklight"] 				= {["name"] = "sprunklight",  	    	 	["label"] = "Sprunk Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunklight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },
	["ecola"] 						= {["name"] = "ecola",  	    	 		["label"] = "eCola",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ecola.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },
	["ecolalight"] 					= {["name"] = "ecolalight",  	    	 	["label"] = "eCola Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "ecolalight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(10, 20) },

	["crisps"] 						= {["name"] = "crisps",  	    			["label"] = "Crisps",					["weight"] = 100, 		["type"] = "item", 		["image"] = "chips.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },

	--Food
	["friedpick"] 				 	= {["name"] = "friedpick",  	     		["label"] = "Fried Pickles",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "friedpick.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A plate of fried pickles", ['hunger'] = math.random(40, 50) },
	["maccheese"] 				 	= {["name"] = "maccheese",  	     		["label"] = "Mac n Cheese",		 		["weight"] = 200, 		["type"] = "item", 		["image"] = "maccheese.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bowl of maccaroni and cheese", ['hunger'] = math.random(40, 50) },
	["bplate"] 						= {["name"] = "bplate",  	     			["label"] = "Brisket Plate",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "bplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A Brisket Plate", ['hunger'] = math.random(40, 50) },
	["cplate"] 						= {["name"] = "cplate",  	     			["label"] = "Fish Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "cplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A Catfish Plate", ['hunger'] = math.random(40, 50) },
	["splate"] 						= {["name"] = "splate",  	     			["label"] = "Steak Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "splate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A Steak Plate", ['hunger'] = math.random(40, 50) },
	["rplate"] 						= {["name"] = "rplate",  	     			["label"] = "Ribs Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "rplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A plate of Ribs", ['hunger'] = math.random(40, 50) },
	["nplate"] 						= {["name"] = "nplate",  	     			["label"] = "Nachos Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "nplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A plate of nachos and cheese", ['hunger'] = math.random(40, 50) },
	["wings"] 						= {["name"] = "wings",  	     			["label"] = "Plate of Wings",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "wings.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A plate of Chicken Wings", ['hunger'] = math.random(40, 50) },

	["bburrito"] 					= {["name"] = "bburrito",  	     			["label"] = "Breakfast Burrito",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "bburrito.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A breakfast Burrito", ['hunger'] = math.random(40, 50) },

	--Food Ingredients
	["meat"] 						= {["name"] = "meat",  	     				["label"] = "Meat",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "meat.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A slab of Meat", ['hunger'] = math.random(40, 50) },
	["pasta"] 						= {["name"] = "pasta",  	     			["label"] = "Bag of Pasta",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "pasta.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A bag of Pasta", ['hunger'] = math.random(40, 50) },
	["pickle"] 						= {["name"] = "pickle",  	     			["label"] = "Pickle",	 		 		["weight"] = 200, 		["type"] = "item", 		["image"] = "pickle.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A jar of Pickles", ['hunger'] = math.random(40, 50) },
	["fish"] 						= {["name"] = "fish",  	     				["label"] = "CatFish",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "fish.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A Catfish", ['hunger'] = math.random(40, 50) },
	["nachos"] 						= {["name"] = "nachos",  	     			["label"] = "Nachos",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "nachos.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A bag of Nachos", ['hunger'] = math.random(40, 50) },
	["lettuce"] 	 			 	= {["name"] = "lettuce",       				["label"] = "Lettuce",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "lettuce.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Some big taco brother"},
	["cheddar"] 					= {["name"] = "cheddar",					["label"] = "Cheddar Slice",			["weight"] = 500,		["type"] = "item",		["image"] = "cheddar.png",		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Food" },
	["potato"] 						= {["name"] = "potato",						["label"] = "Potatoes",					["weight"] = 500,		["type"] = "item",		["image"] = "potatoes.png",		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Food" },

--BurgerShot
["potato"] 						 = {["name"] = "potato",					["label"] = "Potatoes",					["weight"] = 500,		["type"] = "item",		["image"] = "potatoes.png",				["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Bag of Potatos"},
["slicedpotato"] 				 = {["name"] = "slicedpotato",				["label"] = "Sliced Potatoes",			["weight"] = 500,		["type"] = "item",		["image"] = "burger-slicedpotato.png",	["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Sliced Potato"},
["slicedonion"] 				 = {["name"] = "slicedonion",				["label"] = "Sliced Onions",			["weight"] = 500,		["type"] = "item",		["image"] = "burger-slicedonion.png",	["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Sliced Onion"},
["icecream"] 					 = {["name"] = "icecream",					["label"] = "Ice Cream",				["weight"] = 500,		["type"] = "item",		["image"] = "burger-icecream.png",		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Ice Cream."},
["milk"] 						 = {["name"] = "milk",						["label"] = "Milk",						["weight"] = 500,		["type"] = "item",		["image"] = "burger-milk.png",			["unique"] = false, 	["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,	["description"] = "Carton of Milk", ['thirst'] = math.random(35, 54) },
["lettuce"] 	 			 	 = {["name"] = "lettuce",       			["label"] = "Lettuce",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "lettuce.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Some big taco brother"},
["onion"] 						 = {["name"] = "onion",						["label"] = "Onion",					["weight"] = 500,		["type"] = "item",		["image"] = "burger-onion.png",			["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "An onion"},
["frozennugget"] 				 = {["name"] = "frozennugget",				["label"] = "Frozen Nuggets",			["weight"] = 500,		["type"] = "item",		["image"] = "burger-frozennugget.png",	["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Bag of Frozen Nuggets"},
["cheddar"] 					 = {["name"] = "cheddar",					["label"] = "Cheddar Slice",			["weight"] = 500,		["type"] = "item",		["image"] = "cheddar.png",				["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Slice of Cheese"},
["burgerbun"] 		 			 = {["name"] = "burgerbun",       		    ["label"] = "Burger Bun",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "burgerbun.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Some big burger brother"},
["burgerpatty"] 				 = {["name"] = "burgerpatty",				["label"] = "Burger Patty",				["weight"] = 500,		["type"] = "item",		["image"] = "burgerpatty.png",			["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Raw Patty"},
["burgermeat"] 				 	 = {["name"] = "burgermeat",				["label"] = "Burger Meat",				["weight"] = 500,		["type"] = "item",		["image"] = "burgermeat.png",			["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Cooked Burger Meat"},
["milkshake"] 					 = {["name"] = "milkshake",					["label"] = "Milkshake",				["weight"] = 500,		["type"] = "item",		["image"] = "burger-milkshake.png",		["unique"] = false, 	["useable"] = true,		["shouldClose"] = true,	 	["combinable"] = nil,	["description"] = "BurgerShot Milkshake", ['thirst'] = math.random(35, 54) },
["shotnuggets"] 				 = {["name"] = "shotnuggets", 			  	["label"] = "Shot Nuggets", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-shotnuggets.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   	["combinable"] = nil,   ["description"] = "Burgershot Nuggets", ['hunger'] = math.random(40, 50) },
["shotrings"] 				 	 = {["name"] = "shotrings", 			  	["label"] = "Ring Shots", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-shotrings.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   	["combinable"] = nil,   ["description"] = "Burgershot Onion Rings", ['hunger'] = math.random(40, 50) },
["heartstopper"] 			 	 = {["name"] = "heartstopper",       		["label"] = "HeartStopper",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-heartstopper.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Heartstopper", ['hunger'] = math.random(50, 60) },
["shotfries"] 		 			 = {["name"] = "shotfries",       			["label"] = "Shot Fries",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-fries.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Shot Fries", ['hunger'] = math.random(40, 50) },
["moneyshot"] 		 			 = {["name"] = "moneyshot",       			["label"] = "Money Shot",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-moneyshot.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Money Shot", ['hunger'] = math.random(40, 50) },
["meatfree"] 		 			 = {["name"] = "meatfree",       			["label"] = "Meat Free",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-meatfree.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Meat Free", ['hunger'] = math.random(40, 50) },
["bleeder"] 		 			 = {["name"] = "bleeder",       			["label"] = "The Bleeder",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-bleeder.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "The Bleeder", ['hunger'] = math.random(40, 50) },
["bscoffee"] 		 			 = {["name"] = "bscoffee",       			["label"] = "BurgerShot Coffee",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-coffee.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "BurgerShot Coffee", ['thirst'] = math.random(35, 54) },
["bscoke"] 		 				 = {["name"] = "bscoke",       				["label"] = "BurgerShot Coke",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-softdrink.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "BurgerShot Cola", ['thirst'] = math.random(35, 54) },
["torpedo"] 		 			 = {["name"] = "torpedo",       			["label"] = "Torpedo",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-torpedo.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "BurgerShot Torpedo", ['hunger'] = math.random(40, 50) },
["rimjob"] 		 				 = {["name"] = "rimjob",  	     			["label"] = "Rim Job",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-rimjob.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "BurgerShot Donut", ['hunger'] = math.random(40, 50) },
["creampie"] 		 			 = {["name"] = "creampie",  	     		["label"] = "Creampie",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-creampie.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "BurgerShot Apple Pie", ['hunger'] = math.random(40, 50) },
["cheesewrap"] 					 = {["name"] = "cheesewrap", 				["label"] = "BS Cheese Wrap", 	     	["weight"] = 150, 		["type"] = "item", 		["image"] = "burger-chickenwrap.png", 	["unique"] = false,   	["useable"] = true,   	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "BurgerShot Cheese Wrap", ['hunger'] = math.random(40, 50) },
["chickenwrap"] 				 = {["name"] = "chickenwrap", 				["label"] = "BS Goat Cheese Wrap", 	    ["weight"] = 150, 		["type"] = "item", 		["image"] = "burger-goatwrap.png", 		["unique"] = false,   	["useable"] = true,   	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "BurgerShot Goat Cheese Wrap", ['hunger'] = math.random(40, 50)},
["murderbag"] 					 = {["name"] = "murderbag", 				["label"] = "Murder Bag", 	   			["weight"] = 0, 		["type"] = "item", 		["image"] = "burgerbag.png", 			["unique"] = true,   	["useable"] = true,   	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Grab a Murder Bag of Burgers", },


--JIM-CATCAFE
bmochi                      = { name = "bmochi", label = "Blue Mochi", weight = 100, type = "item", image = "mochiblue.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
pmochi                      = { name = "pmochi", label = "Pink Mochi", weight = 100, type = "item", image = "mochipink.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
gmochi                      = { name = "gmochi", label = "Green Mochi", weight = 100, type = "item", image = "mochigreen.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
omochi                      = { name = "omochi", label = "Orange Mochi", weight = 100, type = "item", image = "mochiorange.png",		unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },

--Drinks
bobatea                     = { name = "bobatea", label = "Boba Tea", weight = 100, type = "item", image = "bubbletea.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", thirst = math.random(40, 50) },
bbobatea                    = { name = "bbobatea", label = "Blue Boba Tea", weight = 100, type = "item", image = "bubbleteablue.png",	unique = false, usable = true, shouldClose = true, combinable = nil, description = "", thirst = math.random(40, 50) },
gbobatea                    = { name = "gbobatea", label = "Green Boba Tea", weight = 100, type = "item", image = "bubbleteagreen.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", thirst = math.random(40, 50) },
pbobatea                    = { name = "pbobatea", label = "Pink Boba Tea", weight = 100, type = "item", image = "bubbleteapink.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", thirst = math.random(40, 50) },
obobatea                    = { name = "obobatea", label = "Orange Boba Tea", weight = 100, type = "item", image = "bubbleteaorange.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", thirst = math.random(40, 50) },

nekolatte                   = { name = "nekolatte", label = "Neko Latte", weight = 100, type = "item", image = "latte.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", thirst = math.random(20, 30) },
catcoffee                   = { name = "catcoffee", label = "Cat Coffee", weight = 100, type = "item", image = "catcoffee.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", thirst = math.random(20, 30) },

sake                        = { name = "sake", label = "Sake", weight = 100, type = "item", image = "sake.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", thirst = math.random(40, 50) },

miso                        = { name = "miso", label = "Miso Soup", weight = 100, type = "item", image = "miso.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
cake                        = { name = "cake", label = "Strawberry Cake", weight = 100, type = "item", image = "cake.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
bento                       = { name = "bento", label = "Bento Box", weight = 500, type = "item", image = "bento.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },

riceball                    = { name = "riceball", label = "Neko Onigiri", weight = 100, type = "item", image = "catrice.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },

nekocookie                  = { name = "nekocookie", label = "Neko Cookie", weight = 100, type = "item", image = "catcookie.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
nekodonut                   = { name = "nekodonut", label = "Neko Donut", weight = 100, type = "item", image = "catdonut.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },

--Ingredients
boba                        = { name = "boba", label = "Boba", weight = 100, type = "item", image = "boba.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
flour                       = { name = "flour", label = "Flour", weight = 100, type = "item", image = "flour.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
rice                        = { name = "rice", label = "Bowl of Rice", weight = 100, type = "item", image = "rice.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
sugar                       = { name = "sugar", label = "Sugar", weight = 100, type = "item", image = "sugar.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
nori                        = { name = "nori", label = "Nori", weight = 100, type = "item", image = "nori.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "" },
blueberry                   = { name = "blueberry", label = "Blueberry", weight = 100, type = "item", image = "blueberry.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
strawberry                  = { name = "strawberry", label = "Strawberry", weight = 100, type = "item", image = "strawberry.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
orange                      = { name = "orange", label = "Orange", weight = 200, type = "item", image = "orange.png", unique = false, usable = false, shouldClose = false, combinable = nil, description = "An Orange." },
mint                        = { name = "mint", label = "Matcha", weight = 100, type = "item", image = "matcha.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "" },
tofu                        = { name = "tofu", label = "Tofu", weight = 100, type = "item", image = "tofu.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },

mocha                       = { name = "mocha", label = "Mocha Meow", weight = 100, type = "item", image = "mochameow.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", thirst = math.random(40, 50) },

cakepop                     = { name = "cakepop", label = "Cat Cake-Pop", weight = 100, type = "item", image = "cakepop.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
pancake                     = { name = "pancake", label = "PawCake", weight = 100, type = "item", image = "pawcakes.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
pizza                       = { name = "pizza", label = "Kitty Pizza", weight = 100, type = "item", image = "catpizza.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
purrito                     = { name = "purrito", label = "Purrito", weight = 100, type = "item", image = "purrito.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },

noodlebowl                  = { name = "noodlebowl", label = "Bowl of Noodles", weight = 100, type = "item", image = "noodlebowl.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },
noodles                     = { name = "noodles", label = "Instant Noodles", weight = 100, type = "item", image = "noodles.png", unique = false, usable = false, shouldClose = true, combinable = nil, description = "" },
ramen						= { name = "ramen", label = "Bowl of Ramen", weight = 100, type = "item", image = "ramen.png", unique = false, usable = true, shouldClose = true, combinable = nil, description = "", hunger= math.random(40, 50) },

milk                        = { name = "milk", label = "Milk", weight = 300, type = "item",  image = "burger-milk.png",  unique = false,   usable = true,   shouldClose = true,   combinable = nil,  description = "Carton of Milk", thirst = math.random(35, 54) },
onion                       = { name = "onion", label = "Onion", weight = 500, type = "item",  image = "burger-onion.png", unique = false,   usable = false,  shouldClose = false,  combinable = nil,  description = "An onion"},

mechanic_tools              = { name = "mechanic_tools", label = "Mechanic tools", weight = 0, type = "item", image = "mechanic_tools.png", unique = true, useable = true, shouldClose = true, description = "Needed for vehicle repairs"},
toolbox                     = { name = "toolbox", label = "Toolbox", weight = 0, type = "item", image = "toolbox.png", unique = true, useable = true, shouldClose = true, description = "Needed for Performance part removal"},
ducttape                    = { name = "ducttape", label = "Duct Tape", weight = 0, type = "item", image = "bodyrepair.png", unique = true, useable = true, shouldClose = true, description = "Good for quick fixes"},
mechboard                   = { name = "mechboard", label = "Mechanic Sheet", weight = 0, type = "item", image = "mechboard.png", unique = true, useable = true, shouldClose = true, description = ""},

-- Nitrous/Nos
nos                         = { name = "nos", label = "NOS Bottle", weight = 0, type = "item", image = "nos.png", unique = true, useable = true, shouldClose = true, description = "A full bottle of NOS"},
noscan                      = { name = "noscan", label = "Empty NOS Bottle", weight = 0, type = "item", image = "noscan.png", unique = false, useable = true, shouldClose = true, description = "An Empty bottle of NOS"},
noscolour                   = { name = "noscolour", label = "NOS Colour Injector", weight = 0, type = "item", image = "noscolour.png", unique = false, useable = true, shouldClose = true, description = "Make that purge spray"},

--Performance
turbo                       = { name = "turbo", label = "Supercharger Turbo",	weight = 0, type = "item", image = "turbo.png", unique = true, useable = true, shouldClose = true, description = ""},
car_armor                   = { name = "car_armor", label = "Vehicle Armor", weight = 0, type = "item", image = "car_armour.png", unique = true, useable = true, shouldClose = true, description = ""},

engine1                     = { name = "engine1", label = "Tier 1 Engine", weight = 0, type = "item", image = "engine1.png", unique = true, useable = true, shouldClose = true, description = ""},
engine2                     = { name = "engine2", label = "Tier 2 Engine", weight = 0, type = "item", image = "engine2.png", unique = true, useable = true, shouldClose = true, description = ""},
engine3                     = { name = "engine3", label = "Tier 3 Engine", weight = 0, type = "item", image = "engine3.png", unique = true, useable = true, shouldClose = true, description = ""},
engine4                     = { name = "engine4", label = "Tier 4 Engine", weight = 0, type = "item", image = "engine4.png", unique = true, useable = true, shouldClose = true, description = ""},
engine5                     = { name = "engine5", label = "Tier 5 Engine", weight = 0, type = "item", image = "engine5.png", unique = true, useable = true, shouldClose = true, description = ""},

transmission1               = { name = "transmission1", label = "Tier 1 Transmission", weight = 0, type = "item", image = "transmission1.png", unique = true, useable = true, shouldClose = true, description = ""},
transmission2               = { name = "transmission2", label = "Tier 2 Transmission", weight = 0, type = "item", image = "transmission2.png", unique = true, useable = true, shouldClose = true, description = ""},
transmission3               = { name = "transmission3", label = "Tier 3 Transmission", weight = 0, type = "item", image = "transmission3.png", unique = true, useable = true, shouldClose = true, description = ""},
transmission4               = { name = "transmission4", label = "Tier 4 Transmission", weight = 0, type = "item", image = "transmission4.png", unique = true, useable = true, shouldClose = true, description = ""},

brakes1                     = { name = "brakes1", label = "Tier 1 Brakes", weight = 0, type = "item", image = "brakes1.png", unique = true, useable = true, shouldClose = true, description = ""},
brakes2                     = { name = "brakes2", label = "Tier 2 Brakes", weight = 0, type = "item", image = "brakes2.png", unique = true, useable = true, shouldClose = true, description = ""},
brakes3                     = { name = "brakes3", label = "Tier 3 Brakes", weight = 0, type = "item", image = "brakes3.png", unique = true, useable = true, shouldClose = true, description = ""},

suspension1                 = { name = "suspension1", label = "Tier 1 Suspension", weight = 0, type = "item", image = "suspension1.png", unique = true, useable = true, shouldClose = true, description = ""},
suspension2                 = { name = "suspension2", label = "Tier 2 Suspension", weight = 0, type = "item", image = "suspension2.png", unique = true, useable = true, shouldClose = true, description = ""},
suspension3                 = { name = "suspension3", label = "Tier 3 Suspension", weight = 0, type = "item", image = "suspension3.png", unique = true, useable = true, shouldClose = true, description = ""},
suspension4                 = { name = "suspension4", label = "Tier 4 Suspension", weight = 0, type = "item", image = "suspension4.png", unique = true, useable = true, shouldClose = true, description = ""},
suspension5                 = { name = "suspension5", label = "Tier 5 Suspension", weight = 0, type = "item", image = "suspension5.png", unique = true, useable = true, shouldClose = true, description = ""},

-- Tire Style Changers
bprooftires                 = { name = "bprooftires", label = "Bulletproof Tires", weight = 0, type = "item", image = "bprooftires.png", unique = true, useable = true, shouldClose = true, description = ""},
drifttires                  = { name = "drifttires", label = "Drift Tires", weight = 0, type = "item", image = "drifttires.png", unique = true, useable = true, shouldClose = true, description = ""},

-- Vehicle Extra Damage Items
oilp1                       = { name = "oilp1", label = "Tier 1 Oil Pump", weight = 0, type = "item", image = "oilp1.png", unique = true, useable = true, shouldClose = true, description = ""},
oilp2                       = { name = "oilp2", label = "Tier 2 Oil Pump", weight = 0, type = "item", image = "oilp2.png", unique = true, useable = true, shouldClose = true, description = ""},
oilp3                       = { name = "oilp3", label = "Tier 3 Oil Pump", weight = 0, type = "item", image = "oilp3.png", unique = true, useable = true, shouldClose = true, description = ""},

drives1                     = { name = "drives1", label = "Tier 1 Drive Shaft", weight = 0, type = "item", image = "drives1.png", unique = true, useable = true, shouldClose = true, description = ""},
drives2                     = { name = "drives2", label = "Tier 2 Drive Shaft", weight = 0, type = "item", image = "drives2.png", unique = true, useable = true, shouldClose = true, description = ""},
drives3                     = { name = "drives3", label = "Tier 3 Drive Shaft", weight = 0, type = "item", image = "drives3.png", unique = true, useable = true, shouldClose = true, description = ""},

cylind1                     = { name = "cylind1", label = "Tier 1 Cylinder Head",	weight = 0, type = "item", image = "cylind1.png", unique = true, useable = true, shouldClose = true, description = ""},
cylind2                     = { name = "cylind2", label = "Tier 2 Cylinder Head",	weight = 0, type = "item", image = "cylind2.png", unique = true, useable = true, shouldClose = true, description = ""},
cylind3                     = { name = "cylind3", label = "Tier 3 Cylinder Head",	weight = 0, type = "item", image = "cylind3.png", unique = true, useable = true, shouldClose = true, description = ""},

cables1                     = { name = "cables1", label = "Tier 1 Battery Cables", weight = 0, type = "item", image = "cables1.png", unique = true, useable = true, shouldClose = true, description = ""},
cables2                     = { name = "cables2", label = "Tier 2 Battery Cables", weight = 0, type = "item", image = "cables2.png", unique = true, useable = true, shouldClose = true, description = ""},
cables3                     = { name = "cables3", label = "Tier 3 Battery Cables", weight = 0, type = "item", image = "cables3.png", unique = true, useable = true, shouldClose = true, description = ""},

fueltank1                   = { name = "fueltank1", label = "Tier 1 Fuel Tank", weight = 0, type = "item", image = "fueltank1.png", unique = true, useable = true, shouldClose = true, description = ""},
fueltank2                   = { name = "fueltank2", label = "Tier 2 Fuel Tank", weight = 0, type = "item", image = "fueltank2.png", unique = true, useable = true, shouldClose = true, description = ""},
fueltank3                   = { name = "fueltank3", label = "Tier 3 Fuel Tank", weight = 0, type = "item", image = "fueltank3.png", unique = true, useable = true, shouldClose = true, description = ""},

antilag                     = { name = "antilag", label = "AntiLag", weight = 0, type = "item", image = "antiLag.png", unique = true, useable = true, shouldClose = true, description = ""},

--Cosmetics
underglow_controller        = { name = "underglow_controller", label = "Neon Controller", weight = 0, type = "item", image = "underglow_controller.png", unique = false, useable = true, shouldClose = true, description = "RGB LED Vehicle Remote"},
headlights                  = { name = "headlights", label = "Xenon Headlights", weight = 0, type = "item", image = "headlights.png", unique = true, useable = true, shouldClose = true, description = ""},

tint_supplies               = { name = "tint_supplies", label = "Window Tint Kit", weight = 0, type = "item", image = "tint_supplies.png", unique = false, useable = true, shouldClose = true, description = "Supplies for window tinting"},

customplate                 = { name = "customplate", label = "Customized Plates", weight = 0, type = "item", image = "plate.png", unique = true, useable = true, shouldClose = true, description = ""},
hood                        = { name = "hood", label = "Vehicle Hood", weight = 0, type = "item", image = "hood.png", unique = true, useable = true, shouldClose = true, description = ""},
roof                        = { name = "roof", label = "Vehicle Roof", weight = 0, type = "item", image = "roof.png", unique = true, useable = true, shouldClose = true, description = ""},
spoiler                     = { name = "spoiler", label = "Vehicle Spoiler", weight = 0, type = "item", image = "spoiler.png", unique = true, useable = true, shouldClose = true, description = ""},
bumper                      = { name = "bumper", label = "Vehicle Bumper", weight = 0, type = "item", image = "bumper.png", unique = true, useable = true, shouldClose = true, description = ""},
skirts                      = { name = "skirts", label = "Vehicle Skirts", weight = 0, type = "item", image = "skirts.png", unique = true, useable = true, shouldClose = true, description = ""},
exhaust                     = { name = "exhaust", label = "Vehicle Exhaust", weight = 0, type = "item", image = "exhaust.png", unique = true, useable = true, shouldClose = true, description = ""},
seat                        = { name = "seat", label = "Seat Cosmetics", weight = 0, type = "item", image = "seat.png", unique = true, useable = true, shouldClose = true, description = ""},
rollcage                    = { name = "rollcage", label = "Roll Cage", weight = 0, type = "item", image = "rollcage.png", unique = true, useable = true, shouldClose = true, description = ""},

rims                        = { name = "rims", label = "Custom Wheel Rims", weight = 0, type = "item", image = "rims.png", unique = true, useable = true, shouldClose = true, description = ""},

livery                      = { name = "livery", label = "Livery Roll", weight = 0, type = "item", image = "livery.png", unique = true, useable = true, shouldClose = true, description = ""},
paintcan                    = { name = "paintcan", label = "Vehicle Spray Can", weight = 0, type = "item", image = "spraycan.png", unique = true, useable = true, shouldClose = true, description = ""},
tires                       = { name = "tires", label = "Drift Smoke Tires",	weight = 0, type = "item", image = "tires.png", unique = true, useable = true, shouldClose = true, description = ""},

horn                        = { name = "horn", label = "Custom Vehicle Horn",	weight = 0, type = "item", image = "horn.png", unique = true, useable = true, shouldClose = true, description = ""},

internals                   = { name = "internals", label = "Internal Cosmetics",	weight = 0, type = "item", image = "internals.png", unique = true, useable = true, shouldClose = true, description = ""},
externals                   = { name = "externals", label = "Exterior Cosmetics",	weight = 0, type = "item", image = "mirror.png", unique = true, useable = true, shouldClose = true, description = ""},

--Repair Parts
newoil                      = { name = "newoil", label = "Car Oil", weight = 0, type = "item", image = "caroil.png", unique = false, useable = false, shouldClose = false, description = ""},
sparkplugs                  = { name = "sparkplugs", label = "Spark Plugs", weight = 0, type = "item", image = "sparkplugs.png", unique = false, useable = false, shouldClose = false, description = ""},
carbattery                  = { name = "carbattery", label = "Car Battery", weight = 0, type = "item", image = "carbattery.png", unique = false, useable = false, shouldClose = false, description = ""},
axleparts                   = { name = "axleparts", label = "Axle Parts", weight = 0, type = "item", image = "axleparts.png", unique = false, useable = false, shouldClose = false, description = ""},
sparetire                   = { name = "sparetire", label = "Spare Tire", weight = 0, type = "item", image = "sparetire.png", unique = true, useable = false, shouldClose = false, description = ""},

manual                      = { name = 'manual', label = 'Manual Transmission', weight = 0, type = 'item', image = 'manual.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Manual Transmission change for vehicles' },
underglow                   = { name = 'underglow', label = 'Underglow LEDS', weight = 0, type = 'item', image = 'underglow.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Underglow addition for vehicles' },

--Already in QBCore
--harness                      = { name = 'harness', label = 'Race Harness', weight = 1000, type = 'item', image = 'harness.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Racing Harness so no matter what you stay in the car' },
--repairkit                    = { name = 'repairkit', label = 'Repairkit', weight = 2500, type = 'item', image = 'repairkit.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A nice toolbox with stuff to repair your vehicle' },
--advancedrepairkit            = { name = 'advancedrepairkit', label = 'Advanced Repairkit', weight = 4000, type = 'item', image = 'advancedkit.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A nice toolbox with stuff to repair your vehicle' },
--cleaningkit                  = { name = 'cleaningkit', label = 'Cleaning Kit', weight = 250, type = 'item', image = 'cleaningkit.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A microfiber cloth with some soap will let your car sparkle again!' },

--Already in QBCore
--harness                      = { name = 'harness', label = 'Race Harness', weight = 1000, type = 'item', image = 'harness.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Racing Harness so no matter what you stay in the car' },
--repairkit                    = { name = 'repairkit', label = 'Repairkit', weight = 2500, type = 'item', image = 'repairkit.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A nice toolbox with stuff to repair your vehicle' },
--advancedrepairkit            = { name = 'advancedrepairkit', label = 'Advanced Repairkit', weight = 4000, type = 'item', image = 'advancedkit.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A nice toolbox with stuff to repair your vehicle' },
--cleaningkit                  = { name = 'cleaningkit', label = 'Cleaning Kit', weight = 250, type = 'item', image = 'cleaningkit.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A microfiber cloth with some soap will let your car sparkle again!' },

["policetablet"] = {
	["name"] = "policetablet",
	["label"] = "Police Tablet",
	["weight"] = 5000,
	["type"] = "item",
	["image"] = "policetablet.png",
	["unique"] = true,
	['useable'] = true,
	["shouldClose"] = true,
	["combinable"] = nil,
	["description"] = "A mobile fingerprint tablet."
},

['dogfood'] = {
    ['name'] = 'dogfood',
    ['label'] = 'Dogfood',
    ['weight'] = 1000,
    ['type'] = 'item',
    ['image'] = 'dogfood.png',
    ['unique'] = false,
    ['useable'] = true,
    ['shouldClose'] = true,
    ['combinable'] = nil,
    ['description'] = 'Food for your dog'
},

['catfood'] = {
    ['name'] = 'catfood',
    ['label'] = 'Catfood',
    ['weight'] = 1000,
    ['type'] = 'item',
    ['image'] = 'catfood.png',
    ['unique'] = false,
    ['useable'] = true,
    ['shouldClose'] = true,
    ['combinable'] = nil,
    ['description'] = 'Food for your cat'
},

["airsuspension"] = {
	["name"] = "airsuspension",                                                        
	["label"] = "Air Suspension",
	["weight"] = 1000,
	["type"] = "item",
	["image"] = "airsuspension.png",
	["unique"] = false,
	["useable"] = true,
	["shouldClose"] = true,
	["combinable"] = nil,
	["description"] = "Where are you?"
},

['atmkit'] 				     = {['name'] = 'atmkit', 			  	['label'] = 'ATM Kit', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'atmkit.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, ['description'] = 'Its a thing'},
["explosive"] 				 	 = {["name"] = "explosive", 			    	["label"] = "Explosive", 				["weight"] = 9000, 				["type"] = "item", 				["image"] = "explosive.png", 					["unique"] = true, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Big boom!"},
["seccard"] 				 	 = {["name"] = "seccard", 			    		["label"] = "Security Card", 			["weight"] = 1000, 				["type"] = "item", 				["image"] = "seccard.png", 				 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Security Card for something'},
["serverkey"] 				 	 = {["name"] = "serverkey", 			    	["label"] = "Server Key", 				["weight"] = 1000, 				["type"] = "item", 				["image"] = "serverkey.png", 				 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Looks like this might open a server case'},

    -- WEAPONS
	-- Custom Weapons
	['weapon_pepperspray'] 				 = {['name'] = 'weapon_pepperspray', 		 	  	['label'] = 'Pepper Spray', 				['weight'] = 200, 		['type'] = 'weapon',	['ammotype'] = 'ammo_pepperspray', 				['image'] = 'pepperspray.png', 			['unique'] = true, 		['useable'] = true, 	['description'] = 'Pepper Spray'},
	['weapon_lesslethal'] 				 = {['name'] = 'weapon_lesslethal', 		 	  	['label'] = 'Less Lethal', 					['weight'] = 200, 		['type'] = 'weapon',	['ammotype'] = 'AMMO_SHOTGUN', 					['image'] = 'lesslethal.png', 			['unique'] = true, 		['useable'] = true, 	['description'] = 'Less Lethal'},
	['weapon_paintgun']             	 = {['name'] = 'weapon_paintgun',                   ['label'] = 'Paintball Gun',            	['weight'] = 1000,      ['type'] = 'weapon',    ['ammotype'] = 'AMMO_PISTOL',          			  ['image'] = 'weapon_paintballgun.png',         ['unique'] = true,         ['useable'] = false,     ['description'] = 'Non lethal paintballing gun'},

	['spray'] 	  = {['name'] = 'spray', ['label'] = 'Spray', ['weight'] = 500, ['type'] = 'item', ['image'] = 'spray.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Spray paint can'},
	['spray_remover'] = {['name'] = 'spray_remover', ['label'] = 'Spray Remover', ['weight'] = 500, ['type'] = 'item', ['image'] = 'spray_remover.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Removes graffiti'},

    ----------------------------------------------------------------------------------------------------------------------------


-- // HEIST ITEMS \\ --
	
	-- // Train Heist \\ --
	['bag'] 				 = {['name'] = 'bag', 			  		['label'] = 'Bag', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'bag.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Its a Bag'},
	['cutter'] 				 = {['name'] = 'cutter', 			  	['label'] = 'Cutter', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'cutter.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, ['description'] = 'It Cuts Things'},
	['c4_bomb'] 			 = {['name'] = 'c4_bomb', 			  	['label'] = 'Dynamite', 	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'dynamite.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, ['description'] = 'Boom Boom Boom, I want you in my room'},

	-- // Art Heist \\ --
	['paintinge'] 				 = {['name'] = 'paintinge', 			  	['label'] = 'Painting E', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'paintinge.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Painting E'},
	['paintingi'] 				 = {['name'] = 'paintingi', 			  	['label'] = 'Painting I', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'paintingi.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Painting I'},
	['paintingh'] 				 = {['name'] = 'paintingh', 			  	['label'] = 'Painting H', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'paintingh.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Painting H'},
	['paintingj'] 				 = {['name'] = 'paintingj', 			  	['label'] = 'Painting J', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'paintingj.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Painting J'},
	['paintingf'] 				 = {['name'] = 'paintingf', 			  	['label'] = 'Painting F', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'paintingf.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Painting F'},
	['paintingg'] 				 = {['name'] = 'paintingg', 			  	['label'] = 'Painting G', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'paintingg.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Painting G'},

	-- // MRPD Heist
	['nightgoggles'] 		= {['name'] = 'nightgoggles', 		['label'] = 'Night vision helmet', 		['weight'] = 5000, 			['type'] = 'item', 			['image'] = 'nightvision.png', 		['unique'] = true, 		['useable'] = true, 		['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A high-tier military night vision helmet'},
	['armorykey'] 			= {['name'] = 'armorykey', 			['label'] = 'Armory Access Card', 		['weight'] = 1000, 			['type'] = 'item', 			['image'] = 'armorykey.png', 		['unique'] = true,		['useable'] = false, 		['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'A access card for the MRPD armory'},
	['guardkeys'] 			= {['name'] = 'guardkeys', 			['label'] = 'Guard Keys', 				['weight'] = 1000, 			['type'] = 'item', 			['image'] = 'guardkeys.png', 		['unique'] = true, 		['useable'] = false, 		['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Set of Keys, appears to belong to a guard from somewhere'},  
	['lockedbriefcase'] 	= {['name'] = 'yellow_diamond', 	['label'] = 'Yellow Diamond', 			['weight'] = 20000, 		['type'] = 'item', 			['image'] = 'yellow_diamond.png', 	['unique'] = false, 	['useable'] = true, 		['shouldClose'] = true,	  ['combinable'] = nil,  ['description'] = 'A very rare, very valuable diamond'},
	
	-- // Pacific Bank \\ --
	['vandiamond'] 				 = {['name'] = 'vandiamond', 			  	['label'] = 'Rare Diamond', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'vandiamond.png', 		['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A Rare Diamond'},
	['vanpanther'] 				 = {['name'] = 'vanpanther', 			  	['label'] = 'Panther Statue', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'vanpanther.png', 		['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, ['description'] = 'An Ugly Panther Statue'},
	['vannecklace'] 			 = {['name'] = 'vannecklace', 			  	['label'] = 'Expensive Necklace', 	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'vannecklace.png', 		['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, ['description'] = 'Beautiful Necklace, might be worth something'},
	['vanbottle'] 				 = {['name'] = 'vanbottle', 			  	['label'] = 'Rare Bottle', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'vanbottle.png', 		['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, ['description'] = 'A bottle of something?'},
	['vanpogo'] 			 	 = {['name'] = 'vanpogo', 			  		['label'] = 'Pogo Statue', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'vanpogo.png', 			['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, ['description'] = 'Wtf is this'},




}
