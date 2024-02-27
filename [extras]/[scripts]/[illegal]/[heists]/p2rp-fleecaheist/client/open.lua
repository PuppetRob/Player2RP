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
