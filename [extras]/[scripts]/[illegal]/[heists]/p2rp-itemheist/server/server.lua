local QBCore = exports['qb-core']:GetCoreObject()

local LastRob = 0

local isActive = false

function DiscordLog(message)
    local embed = {
        {
            ["color"] = 04255, 
            ["title"] = "CloudDevelopment Thermite Mission",
            ["description"] = message,
            ["url"] = "https://discord.gg",
            ["footer"] = {
            ["text"] = "Player 2 RP",
            ["icon_url"] = Config.LogsImage
        },
            ["thumbnail"] = {
                ["url"] = Config.LogsImage,
            },
    }
}
    PerformHttpRequest(Config.WebHook, function(err, text, headers) end, 'POST', json.encode({username = 'p2rp-itemheist', embeds = embed, avatar_url = Config.LogsImage}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent("p2rp-itemheist:Server:GuardsSync", function() 
    TriggerClientEvent("p2rp-itemheist:GuardsSync", -1)
end) 

RegisterNetEvent('p2rp-itemheist:server:SetActive', function(status)
    if status ~= nil then
        isActive = status
        TriggerClientEvent('p2rp-itemheist:client:SetActive', -1, isActive)
    else
        TriggerClientEvent('p2rp-itemheist:client:SetActive', -1, isActive)
    end
end)

RegisterNetEvent("p2rp-itemheist:SendDiscordLog", function()
    local src = source
    local steamname = GetPlayerName(src)
    DiscordLog('Thermite Mission Started By: **'..steamname..'** ID: **' ..src..'**')
end)