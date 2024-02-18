local Core = Config.Core.core
Core = exports[Config.Core.name]:GetCoreObject()

local pets = {}
local ready = false

MySQL.ready(function()
    local result = MySQL.query.await('SELECT * FROM pets')
    ready = true
    if result[1] then
        for k, v in pairs(result) do
            pets[#pets+1] = {
                spawnname = v.spawnname,
                cid = v.citizenid,
                name = v.name,
                type = v.type,
                petid = v.petid,
                food = v.food,
                health = v.health,
                namechanged = v.namechanged
            }
        end
    end
end)

function isWhitelisted(src)
    local Player = Core.Functions.GetPlayer(src)
    local hasAccess = false

    local cid = Player.PlayerData.citizenid
    local discordid = Core.Functions.GetIdentifier(src, 'discord')
    local licenseid = Core.Functions.GetIdentifier(src, 'license')
    local roles = nil

    if Config.UseRoles then
        roles = exports.Badger_Discord_API:GetDiscordRoles(src)
    end
    
    if Config.UseIds then
        for k,v in pairs(Config.WhitelistedIds) do
            if v[1] ~= nil then
                for i in pairs(v) do
                    if v[i] == cid or v[i] == discordid or v[i] == licenseid then
                        hasAccess = true
                        break
                    end
                end
            end
        end
    elseif Config.UseRoles then
        for i = 1, #roles do
            for k,v in pairs(Config.WhitelistedRoles) do
                if roles[i] == v then
                    hasAccess = true
                    break
                end
            end
        end
    end

    if hasAccess or (not Config.UseIds and not Config.UseRoles) then
        return(true)
    else
        return(false)
    end
end

Core.Functions.CreateCallback('lumio-pets:server:isWhitelisted', function(source, cb)
    cb(isWhitelisted(source))
end)

Core.Commands.Add(Translations.server['command'], Translations.server['command_txt'], {}, false, function(source, args)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local cid = Player.PlayerData.citizenid

    TriggerClientEvent('lumio-pets:client:mainmenu', src, cid)
end)

Core.Functions.CreateCallback('lumio-pets:server:getPets', function(source, cb, cid)
    local results = {}

    for k,v in pairs(pets) do
        if v.cid == cid then
            results[#results+1] = {
                spawnname = v.spawnname,
                cid = v.cid,
                name = v.name,
                type = v.type,
                petid = v.petid,
                food = v.food,
                health = v.health,
                namechanged = v.namechanged
            }
        end
    end
    cb(results)
end)

RegisterNetEvent('lumio-pets:server:buypet', function(data)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local cid = Player.PlayerData.citizenid
    local petid = cid..'_'..data.type..'_'..math.random(1,100000)

    if Player.PlayerData.money.bank >= data.price then
        MySQL.query('INSERT INTO pets (citizenid, spawnname, type, petid, food, health, name, namechanged) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
            cid,
            data.spawnname,
            data.type,
            petid,
            100,
            100,
            Config.DefaultPetName,
            0,
        })

        pets[#pets+1] = {
            spawnname = data.spawnname,
            cid = cid,
            name = Config.DefaultPetName,
            type = data.type,
            petid = petid,
            food = 100,
            health = 100,
            namechanged = false
        }

        TriggerClientEvent(Config.Notify, src, Translations.server['bought_pet'], 'success', 5000)
        Player.Functions.RemoveMoney('bank', data.price, 'bought-pet')
    else
        TriggerClientEvent(Config.Notify, src, Translations.server['not_enough_money'], 'error', 5000)
    end
end)

RegisterNetEvent('lumio-pets:server:buyItems', function(item)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    if Player.PlayerData.money.bank >= item.price then
        Player.Functions.RemoveMoney('bank', item.price, 'bought-item')
        Player.Functions.AddItem(item.type, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[item.type], 'add')
    else
        TriggerClientEvent(Config.Notify, src, Translations.server['not_enough_money'], 'error', 5000)
    end
end)

RegisterNetEvent('lumio-pets:server:dorename', function(name, petid)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local cid = Player.PlayerData.citizenid

    MySQL.query('UPDATE pets SET name = ?, namechanged = ? WHERE citizenid = ? AND petid = ?', { name, 1, Player.PlayerData.citizenid, petid })

    for k,v in pairs(pets) do
        if v.petid == petid then
            v.name = name
            v.namechanged = true
        end
    end
end)

Core.Functions.CreateUseableItem('dogfood', function(source, item)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local cid = Player.PlayerData.citizenid

    for k,v in pairs(pets) do
        if v.cid == cid and v.type == 'dog' then
            canPlace = true
        end
    end

    if canPlace then
        TriggerClientEvent('lumio-pets:client:setfood', src, 'dog')
    else
        TriggerClientEvent(Config.Notify, src, Translations.server['no_pets'], 'primary', 5000)
    end
end)

Core.Functions.CreateUseableItem('catfood', function(source, item)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local cid = Player.PlayerData.citizenid

    for k,v in pairs(pets) do
        if v.cid == cid and v.type == 'cat' then
            canPlace = true
        end
    end

    if canPlace then
        TriggerClientEvent('lumio-pets:client:setfood', src, 'cat')
    else
        TriggerClientEvent(Config.Notify, src, Translations.server['no_pets'], 'primary', 5000)
    end
end)

Core.Functions.CreateUseableItem('chickenfood', function(source, item)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local cid = Player.PlayerData.citizenid

    for k,v in pairs(pets) do
        if v.cid == cid and v.type == 'chicken' then
            canPlace = true
        end
    end

    if canPlace then
        TriggerClientEvent('lumio-pets:client:setfood', src, 'chicken')
    else
        TriggerClientEvent(Config.Notify, src, Translations.server['no_pets'], 'primary', 5000)
    end
end)

RegisterNetEvent('lumio-pets:server:revivepet', function(data)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local cid = Player.PlayerData.citizenid

    if Player.PlayerData.money.bank >= Config.RevivePrice then
        for k,v in pairs(pets) do
            if v.petid == data.petid then
                v.health = 25
                MySQL.query('UPDATE pets SET health = ? WHERE citizenid = ? AND petid = ?', { 25, cid, data.petid })
                TriggerClientEvent(Config.Notify, src, Translations.server['healed'], 'primary', 5000)
                Player.Functions.RemoveMoney('bank', Config.RevivePrice, 'revived-pet')
            end
        end
    else
        TriggerClientEvent(Config.Notify, src, Translations.server['not_enough_money'], 'error', 5000)
    end
end)

RegisterNetEvent('lumio-pets:server:updatestats', function(petid)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local cid = Player.PlayerData.citizenid

    for k,v in pairs(pets) do
        if v.petid == petid then
            v.food = v.food + 25
            if v.food > 100 then
                v.food = 100
            end
            MySQL.query('UPDATE pets SET food = ? WHERE citizenid = ? AND petid = ?', { v.food, cid, petid })
        end
    end
end)

CreateThread(function()
    while true do
        Wait(60 * 1000 * Config.FoodTimer)
        local result = MySQL.query.await('SELECT * FROM pets', {})
        for k, v in pairs(result) do
            if result[k].food >= 50 then
                MySQL.query('UPDATE pets SET food = ? WHERE petid = ?', {(result[k].food - 1), result[k].petid})
                pets[k].food = result[k].food - 1
                if result[k].health + 1 < 100 then
                    MySQL.query('UPDATE pets SET health = ? WHERE petid = ?', {(result[k].health + 1), result[k].petid})
                    pets[k].health = result[k].health + 1
                end
            end

            if result[k].food < 50 then
                if result[k].food - 1 >= 0 then
                    MySQL.update('UPDATE pets SET food = ? WHERE petid = ?', {(result[k].food - 1), result[k].petid})
                    pets[k].food = result[k].food - 1
                end
                if result[k].health - 1 >= 0 then
                    MySQL.query('UPDATE pets SET health = ? WHERE petid = ?', {(result[k].health - 1), result[k].petid})
                    pets[k].health = result[k].health - 1
                end
            end
        end
    end
end)

RegisterNetEvent('lumio-pets:server:itemAction', function(item, amount, action)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    
    if action == "add" then
        Player.Functions.AddItem(item, amount)
    else 
        Player.Functions.RemoveItem(item, amount)
    end
    
    TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[item], action)
end)