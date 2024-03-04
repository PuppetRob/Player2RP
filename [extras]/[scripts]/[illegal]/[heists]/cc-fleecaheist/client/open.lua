local QBCore = exports[Config.CoreName]:GetCoreObject()

function AlertCops()
    exports['ps-dispatch']:FleecaBankRobbery()
end

function HasItem(item)
    local has = QBCore.Functions.HasItem(item)
    return has
end

function Minigame(type)
    local success = nil
    if type == 'memorygame-powerbox' then
        exports["memorygame"]:thermiteminigame(Config.MiniGames[type].correctBlocks, Config.MiniGames[type].incorrectBlocks, Config.MiniGames[type].timetoShow, Config.MiniGames[type].timetoLose,
        function() success = true end, function() success = false end)
    elseif type == 'scrambler' then
        exports['ps-ui']:Scrambler(function(suc)
            success = suc
        end, Config.MiniGames['scrambler'].type, Config.MiniGames['scrambler'].time, Config.MiniGames['scrambler'].mirrored)
    elseif type == 'laptophack' then
        exports['hacking']:OpenHackingGame(Config.MiniGames['laptophack'].puzzleDuration, Config.MiniGames['laptophack'].puzzleLength, Config.MiniGames['laptophack'].puzzleAmount, function(result) 
            success = result
        end)
    elseif type == 'varhack' then
        exports['ps-ui']:VarHack(function(result)
            success = result
        end, Config.MiniGames['varhack'].blocks, Config.MiniGames['varhack'].speed)
    elseif type == "casinohack" then
        exports['casinohack']:OpenHackingGame(function(result)
            success = result
        end, Config.MiniGames['maze'].time)
    elseif type == 'password' then
        local dialog = exports['qb-input']:ShowInput({
            header = "Access Code",
            submitText = "Submit",
            inputs = {
                {
                    text = "Input access code", -- text you want to be displayed as a place holder
                    name = "code", -- name of the input should be unique otherwise it might override
                    type = "password", -- type of the input
                    isRequired = true, -- Optional [accepted values: true | false] but will submit the form if no value is inputted
                    -- default = "password123", -- Default text option, this is optional
                }
            },
        })
        if dialog ~= nil then
            success = dialog.code
        else 
            success = false
        end

    end
    while success == nil do
        Wait(100)
    end
    return success
end

-- Target creation

Citizen.CreateThread(function()
    for k,v in pairs(Config.Banks) do
        exports[Config.TargetName]:AddCircleZone("VaultPanel"..k, v['vaultpanel']['target']['coords'], v['vaultpanel']['target']['radius'], {
            name = "VaultPanel"..k, 
            debugPoly = false, 
            useZ = true,
            }, {
            options = { 
                { 
                icon = 'fas fa-desktop',
                label = Lang:t("target.start_hacking"),
                action = function()
                    InputAccessCode(k)
                end,
                canInteract = function() 
                    if not v['vaultpanel']['busy'] then return true end 
                    return false
                end,
                }
            },
            distance = 2.5,
        })
        exports[Config.TargetName]:AddCircleZone("InsideVaultPanel"..k, v['insidevaultpanel']['target']['coords'], v['insidevaultpanel']['target']['radius'], {
            name = "InsideVaultPanel"..k, 
            debugPoly = false, 
            useZ = true,
            }, {
            options = { 
                { 
                icon = 'fas fa-desktop',
                label = Lang:t("target.start_hacking"),
                action = function()
                    HackInside(k)
                end,
                canInteract = function() 
                    if not v['insidevaultpanel']['busy'] then return true end 
                    return false
                end,
                }
            },
            distance = 2.5,
        })
        exports[Config.TargetName]:AddCircleZone("PowerBox"..k, v['powerbox']['target']['coords'], v['powerbox']['target']['radius'], {
            name = "PowerBox"..k, 
            debugPoly = false, 
            useZ = true,
            }, {
            options = { 
                { 
                icon = 'fas fa-desktop',
                label = Lang:t("target.start_hacking"),
                action = function()
                    PowerBox(k)
                end,
                canInteract = function() 
                    if not v['powerbox']['busy'] and not Config.Banks[k]['cooldown'] and not GlobalCooldown then return true end 
                    return false
                end,
                }
            },
            distance = 2.5,
        })
        for k2, v2 in pairs(v['computers']) do
            exports[Config.TargetName]:AddCircleZone(k..tostring(k2), v2['target']['coords'], v2['target']['radius'], {
                name = k..tostring(k2), 
                debugPoly = false, 
                useZ = true,
                }, {
                options = { 
                    { 
                    icon = 'fas fa-desktop',
                    label = Lang:t("target.start_hacking"),
                    action = function()
                        ComputerHack(k, k2)
                    end,
                    canInteract = function() 
                        if not v2['busy'] and Config.Banks[k]['camera']['hacked'] and not v2['hacked'] then return true end 
                        return false
                    end,
                    },
                    {
                    icon = 'fas fa-desktop',
                    label = Lang:t("target.get_code"),
                    action = function()
                        GetCode(k, k2)
                    end,
                    canInteract = function() 
                        return v2['hacked']
                    end,  
                    }
                },
                distance = 2.5,
            })
        end
        for k2, v2 in pairs(v['lockers']) do
            exports[Config.TargetName]:AddCircleZone(k.."locker"..tostring(k2), v2['target']['coords'], v2['target']['radius'], {
                name = k.."locker"..tostring(k2), 
                debugPoly = false, 
                useZ = true,
                }, {
                options = { 
                    { 
                    icon = 'fas fa-screwdriver',
                    label = Lang:t("target.drill_safe"),
                    action = function()
                        Drill(k, k2)
                    end,
                    canInteract = function() 
                        if not Config.Banks[k]['lockers'][k2]['busy'] and Config.Banks[k]['vaultpanel']['busy'] then return true end 
                        return false
                    end,
                    },
                },
                distance = 1.0,
            }) 
        end
        for k2, v2 in pairs(v['trolleys']) do
            local coords = vector3(v2['coords'].x, v2['coords'].y, v2['coords'].z+1)
            if v2['type'] == "money" then
                exports[Config.TargetName]:AddCircleZone(k.."trolley"..tostring(k2), coords, 0.5, {
                    name = k.."trolley"..tostring(k2), 
                    debugPoly = false, 
                    useZ = true,
                    }, {
                    options = { 
                        { 
                        icon = 'fas fa-sack-dollar',
                        label = Lang:t("target.take_money"),
                        action = function()
                            LootTrolly(k, k2)
                        end,
                        canInteract = function()
                        if not Config.Banks[k]['trolleys'][k2]['busy'] then return true end
                            return false
                        end,
                        }
                    },
                        distance = 1.5,
                    })
            elseif v2['type'] == "gold" then 
                exports[Config.TargetName]:AddCircleZone(k.."trolley"..tostring(k2), coords, 0.5, {
                    name = k.."trolley"..tostring(k2), 
                    debugPoly = false, 
                    useZ = true,
                    }, {
                    options = { 
                        { 
                        icon = 'fas fa-sack-dollar',
                        label = Lang:t("target.take_gold"),
                        action = function()
                            LootTrolly(k, k2)
                        end,
                        canInteract = function()
                        if not not Config.Banks[k]['trolleys'][k2]['busy'] then return true end
                            return false
                        end,
                        }
                    },
                        distance = 1.5,
                })
            end
        end
    end
end)