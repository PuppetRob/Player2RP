Config = {}

Config.Framework = 'qb-core' -- esx, qb-core, 

Config.Weapon = 'weapon_nightstick' -- add any weapon you want or make it nil

Config.IsAllowed = function()
    if Config.Framework == 'qb-core' then
        local QBCore = exports['qb-core']:GetCoreObject()
        return QBCore.Functions.GetPlayerData().job.type == "leo"-- or PlayerData.job.name == "firefighter" then
      --  end
    else
        ESX = exports.es_extended:getSharedObject()
        local pdata = ESX.GetPlayerData()
        return pdata.job.type == "leo"
    end
end

Config.Notify = function(text, type)
    if Config.Framework == 'qb-core' then
        local QBCore = exports['qb-core']:GetCoreObject()
        QBCore.Functions.Notify(text, type)
    else
        ESX = exports.es_extended:getSharedObject()
        ESX.ShowNotification(text)
    end
end