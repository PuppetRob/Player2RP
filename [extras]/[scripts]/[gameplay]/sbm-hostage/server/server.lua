
QBCore = exports['qb-core']:GetCoreObject()

local GlobalCD = false

RegisterServerEvent('p2rp-hostage:ServerCooldown')
AddEventHandler('p2rp-hostage:ServerCooldown', function()
    local CDTime = math.ceil(Config.GlobalCooldown * 60)
    if not GlobalCD then 
        GlobalCD = true
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(5000)
                CDTime = CDTime - 5
                if CDTime <= 0 then 
                    GlobalCD = false
                    local CDTime = math.ceil(Config.GlobalCooldown * 60)
                    break
                end
            end
        end)
    end
end)

RegisterServerEvent('p2rp-hostage:srv:RobHostage')
AddEventHandler('p2rp-hostage:srv:RobHostage', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then 
        if Config.EnableHostageLoot then 
            local Reward = Config.RobHostageReward
            local RewardVal = math.random(Reward.min, Reward.max)
            Player.Functions.AddMoney('cash', RewardVal, 'Hostage-reward')
            TriggerClientEvent('QBCore:Notify', src, 'You got $'..RewardVal, 'success')
        end
    end
end)

QBCore.Functions.CreateCallback('p2rp-hostage:GetGlobalCooldown', function(source, cb)
    if Config.EnableGlobalCooldown then 
        cb(GlobalCD)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('p2rp-hostage:getCops', function(source, cb)
    local amount = 0
    if Config.EnableRequiredCops then 
        for k, v in pairs(QBCore.Functions.GetPlayers()) do
            local Player = QBCore.Functions.GetPlayer(v)
            if Player ~= nil then 
                if (Player.PlayerData.job.name == "police" or Player.PlayerData.job.name == "police1" or Player.PlayerData.job.name == "police2" or Player.PlayerData.job.name == "police3" or Player.PlayerData.job.name == "police4" or Player.PlayerData.job.name == "police5" or Player.PlayerData.job.name == "police6" or Player.PlayerData.job.name == "police7" or Player.PlayerData.job.name == "police8" and Player.PlayerData.job.onduty) then
                    amount = amount + 1
                end
            end
        end
        cb(amount)
    else 
        cb(amount)
    end
end)


RegisterServerEvent('p2rp-hostage:srv:releaseHostage')
AddEventHandler('p2rp-hostage:srv:releaseHostage', function(data)
    local src = source
    TriggerClientEvent('p2rp-hostage:releaseHostage', -1, data)
    TriggerClientEvent('p2rp-hostage:SetReleaseSource', src)
end)

RegisterServerEvent('p2rp-hostage:attach')
AddEventHandler('p2rp-hostage:attach', function(source, target)
    TriggerClientEvent('p2rp-hostage:attach', -1, source, target)
end)

RegisterServerEvent('p2rp-hostage:deattach')
AddEventHandler('p2rp-hostage:deattach', function(source, target)
    TriggerClientEvent('p2rp-hostage:deattach', -1, source, target)
end)

RegisterServerEvent('p2rp-hostage:srv:HandcuffAnimations')
AddEventHandler('p2rp-hostage:srv:HandcuffAnimations', function(playerped1, target)
    TriggerClientEvent('p2rp-hostage:HandcuffAnimations', -1, playerped1, target)
end)