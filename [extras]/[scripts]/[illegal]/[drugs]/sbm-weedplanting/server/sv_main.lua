QBCore = nil

if Config.OldQBCore then
    TriggerEvent(Config.Core..':GetObject', function(obj) QBCore = obj end)
else
    QBCore = exports[Config.CoreFolderName]:GetCoreObject()
end

WeedPlants = {}

Citizen.CreateThread(function()
    Citizen.Wait(100)
    if GetCurrentResourceName() == "p2rp-weedplanting" then
        local LoadJson = json.decode(LoadResourceFile(GetCurrentResourceName(), 'weedplants.json'))
        for k,v in ipairs(LoadJson) do
            v.coords = vector3(v.coords['x'], v.coords['y'], v.coords['z'])
        end
        WeedPlants =LoadJson
    else
        print("^1[Resource Rename] ^0You have renamed the resource. No plants will be loaded. Please rename it back to ^1snipe-weedplanting^0!")

    end
    
end)

QBCore.Functions.CreateCallback('p2rp-weedplanting:server:getTables', function(source, cb)
    local src = source
    cb(WeedPlants)
end)

RegisterServerEvent('p2rp-weedplanting:server:addWeedPlant')
AddEventHandler('p2rp-weedplanting:server:addWeedPlant', function(loc, soilHash, seed, label)
    local Player = QBCore.Functions.GetPlayer(source)
    local item = nil
    if Config.Soil[soilHash].ph == "acidic" then
        item = Config.Items["acidic_soil_item"]
    elseif Config.Soil[soilHash].ph == "basic" then
        item =  Config.Items["alkaline_soil_item"]
    end

    if Config.Soil[soilHash].ph == "neutral" or Player.Functions.RemoveItem(item, 1) then
        if item ~= nil then
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item], "remove")
        end
        if Player.Functions.RemoveItem(seed, 1) then
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[seed], "remove")
            local plantInfo = {}
            plantInfo.coords = loc
            plantInfo.soil = soilHash
            plantInfo.state = "Seedling"
            plantInfo.progress = 0 
            plantInfo.health = 100
            plantInfo.water = Config.StartingWaterLevel
            plantInfo.seed = seed
            plantInfo.label = label

            table.insert(WeedPlants, plantInfo)
            StorePlantsTable()
            TriggerClientEvent('p2rp-weedplanting:client:addWeedPlant', -1, plantInfo)
        end
    end
end)

RegisterServerEvent('p2rp-weedplanting:server:deleteWeedPlant')
AddEventHandler('p2rp-weedplanting:server:deleteWeedPlant', function(id, loc, action)
    if WeedPlants[id] then
        if WeedPlants[id].coords==loc then
            table.remove(WeedPlants, id)
            StorePlantsTable()
            TriggerClientEvent('p2rp-weedplanting:client:deleteWeedPlant', -1, id, action)
        else
            for k,v in ipairs(WeedPlants) do
                if v.coords==loc then
                    table.remove(WeedPlants,k)
                    StorePlantsTable()
                    TriggerClientEvent('p2rp-weedplanting:client:deleteWeedPlant', -1, k, action)
                    return
                end
            end
        end
    end
end)

RegisterServerEvent('p2rp-weedplanting:server:updateWeedPlantHealth')
AddEventHandler('p2rp-weedplanting:server:updateWeedPlantHealth', function(id, loc)
    if WeedPlants[id] then
        if WeedPlants[id].coords==loc then
            WeedPlants[id].health = WeedPlants[id].health + Config.InsecticideEffect
            if WeedPlants[id].health > 100 then
                WeedPlants[id].health = 100
            end
            StorePlantsTable()
            TriggerClientEvent('p2rp-weedplanting:client:updatePlantStatus', -1, WeedPlants)
        else
            for k,v in ipairs(WeedPlants) do
                if v.coords==loc then
                    WeedPlants[k].health = WeedPlants[k].health + Config.InsecticideEffect
                    if WeedPlants[k].health > 100 then
                        WeedPlants[k].health = 100
                    end
                    StorePlantsTable()
                    TriggerClientEvent('p2rp-weedplanting:client:updatePlantStatus', -1, WeedPlants)
                    return
                end
            end
        end
    end
end)

RegisterServerEvent('p2rp-weedplanting:server:updateWeedPlantWater')
AddEventHandler('p2rp-weedplanting:server:updateWeedPlantWater', function(id, loc)
    if WeedPlants[id] then
        if WeedPlants[id].coords==loc then
            WeedPlants[id].water = WeedPlants[id].water + Config.WaterIncreaseLevel
            if WeedPlants[id].water > 100 then
                WeedPlants[id].water = 100
            end
            StorePlantsTable()
            TriggerClientEvent('p2rp-weedplanting:client:updatePlantStatus', -1, WeedPlants)
        else
            for k,v in ipairs(WeedPlants) do
                if v.coords==loc then
                    WeedPlants[k].water = WeedPlants[k].water + Config.WaterIncreaseLevel
                    if WeedPlants[k].water > 100 then
                        WeedPlants[k].water = 100
                    end
                    StorePlantsTable()
                    TriggerClientEvent('p2rp-weedplanting:client:updatePlantStatus', -1, WeedPlants)
                    return
                end
            end
        end
    end
end)



Citizen.CreateThread(function()
    for k, v in pairs(Config.Seed) do
        QBCore.Functions.CreateUseableItem(k, function(source, item)
            local Player = QBCore.Functions.GetPlayer(source)
            TriggerClientEvent('p2rp-weedplanting:client:placeWeedPlant', source, k, v.label)
        end)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000*Config.CycleTime)
        if WeedPlants then
            for k,v in ipairs(WeedPlants) do
                if v.health > 0 then
                    if math.random(1,100) <= Config.InfectionProbability then
                        v.health = v.health - Config.InsecticideEffect
                        if v.health < 0 then
                            v.health = 0
                        end
                    end

                    if math.random(1, 100) <= Config.WaterProbability then
                        v.water = v.water - Config.WaterDepletion
                        if v.water < 0 then
                            v.water = 0
                        end
                    end

                    if v.water == 0 then
                        v.health = v.health - Config.WaterEffect
                        if v.health < 0 then
                            v.health = 0
                        end
                    end
                else
                    table.remove(WeedPlants,k)
                    StorePlantsTable()
                    TriggerClientEvent('p2rp-weedplanting:client:deleteWeedPlant', -1, k, "plant-dead")
                end

                if v.state ~= Config.HarvestingState then
                    v.progress = math.floor(v.progress + Config.ProgressPerCycle*(Config.Soil[v.soil].fertility))
                    if v.progress > 100 then
                        v.progress = 100
                        v.state = Config.HarvestingState
                    end
                    if v.state ~= Config.HarvestingState then
                        for a, b in pairs(Config.Stages) do
                            if v.progress>=b.min and v.progress<=b.max then
                                v.state = b.state
                            end
                        end
                    end
                end
            end
            StorePlantsTable()
            TriggerClientEvent('p2rp-weedplanting:client:updatePlantStatus', -1, WeedPlants)
        end
    end
end)


function StorePlantsTable()
    SaveResourceFile(GetCurrentResourceName(), "weedplants.json", json.encode(WeedPlants), -1)
end
