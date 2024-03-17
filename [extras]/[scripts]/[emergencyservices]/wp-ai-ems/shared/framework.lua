-- IsDuplicityVersion - is used to determine if the function is called by the server or the client (true == from server)

--------------------- SHARED FUNCTIONS ---------------------
local Core = nil
---@return table Core The core object of the framework
function GetCoreObject()
    if not Core then
        if Config.Framework == 'esx' then
            Core = exports['es_extended']:getSharedObject()
        elseif Config.Framework == 'qb' then
            Core = exports['qb-core']:GetCoreObject()
        end
    end
    return Core
end

Core = Config.Framework ~= 'none' and GetCoreObject() or nil

---@param text string The text to show in the notification
---@param notificationType string The type of notification to show ex: 'success', 'error', 'info'
---@param src - number|nil The source of the player - only required when called from server side
function Notify(text, notificationType, src)
    if IsDuplicityVersion() then
        if Config.Notify == 'esx' then
            TriggerClientEvent("esx:showNotification", src, text)
        elseif Config.Notify == 'qb' then
            TriggerClientEvent('QBCore:Notify', src, text, notificationType)
        elseif Config.Notify == 'ox' then
            TriggerClientEvent("ox_lib:notify", src, {
                description = text,
                type = notificationType
            })
        end
    else
        if Config.Notify == 'esx' then
            Core.ShowNotification(text)
        elseif Config.Notify == 'qb' then
            Core.Functions.Notify(text, notificationType)
        elseif Config.Notify == 'ox' then
            lib.notify({
                description = text,
                type = notificationType
            })
        end
    end
end

--------------------- CLIENT FUNCTIONS ---------------------

---@return string UnloadEvent The event to listen for when the player unloads
function GetUnloadEvent()
    if IsDuplicityVersion() then return end
    if Config.Framework == 'esx' then
        return 'esx:onPlayerLogout'
    elseif Config.Framework == 'qb' then
        return 'QBCore:Client:OnPlayerUnload'
    end
end

---@return boolean whether or not the player is dead
function IsPlayerDeceased()
    if IsDuplicityVersion() then return end
    if Config.Framework == 'esx' then
        return Core.GetPlayerData().IsDead
    elseif Config.Framework == 'qb' then
        local PlayerData = Core.Functions.GetPlayerData()

        return PlayerData.metadata["isdead"] or PlayerData.metadata["inlaststand"]
    end
end

---@return boolean whether or not the player is in jail
function IsInJail()
    if IsDuplicityVersion() then return end
    if Config.Framework == 'esx' then
        -- Hook up to your jail script here
        return false
    elseif Config.Framework == 'qb' then
        local PlayerData = Core.Functions.GetPlayerData()

        return PlayerData.metadata["injail"] > 0
    end
end

-- Sets the taxi vehicle to full fuel
-- Update with your fuel script if necessary
function SetVehicleFuel(vehicleEntity)
    if IsDuplicityVersion() then return end
    exports[Config.Fuel]:SetFuel(vehicleEntity, 100)
end

-- Loads the specified model
function LoadModel(model)
    if IsDuplicityVersion() or HasModelLoaded(model) then return end
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(0)
	end
end
