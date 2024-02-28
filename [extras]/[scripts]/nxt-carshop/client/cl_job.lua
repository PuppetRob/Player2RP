local boxZones = {}

local playerInZone = false

function CreateTargetPeekToPlayers()

    for shop, data in pairs(Config.Shops) do

        for i, data in pairs(Config.Shops[shop].InteractionsCoords) do
            
            if Config.Framework == "QBCore" then

                if Config.UseTarget then

                    local jobData = { data.job }

                    -- exports["qb-polytarget"]:AddBoxZone("CARSHOP"..shop..i, data.location, data.width, data.height, {
                    --     heading = data.heading,
                    --     minZ = data.minZ,
                    --     maxZ = data.maxZ,
                    --     data = {
                    --         id = "CARSHOP"..shop..i,
                    --         job = data.job,
                    --     }
                    -- })

                    if not data.job then
                        jobData = nil
                    end

                    -- exports["qb-eye"]:AddPeekEntryByPolyTarget("CARSHOP"..shop..i, {{
                    --     id = "CARSHOP"..shop..i,
                    --     event = data.event,
                    --     icon = data.icon,
                    --     label = data.label,
                    -- }}, { distance = { radius = data.distance }, job = jobData  })

                    local eventZoneId = string.format("CARSHOP_%s_%d_%s", shop, i, data.eventID)

                    -- print('eventZoneId', eventZoneId)

                    exports['qb-target']:AddBoxZone(eventZoneId, data.location, data.width, data.height,
                        { 
                            name= eventZoneId,
                            heading = data.heading,
                            debugPoly = Config.Debug,
                            minZ = data.minZ,
                            maxZ = data.maxZ
                        },
                        { options = {
                            { 
                                event = data.event,
                                icon = data.icon,
                                label = data.label,
                                job = jobData,
                            }
                        },
                        distance = data.distance
                    })

                else

                    boxZones[i] = BoxZone:Create(data.location, data.width + 1.0, data.height + 1.0, {
                        name = data.eventID,
                        heading = data.heading,
                        minZ = data.minZ,
                        maxZ = data.maxZ,
                        debugPoly = Config.Debug
                    })

                    boxZones[i]:onPlayerInOut(function(inside)
                        if inside then
                            exports['qb-core']:DrawText(data.label, 'right')
                        else
                            exports['qb-core']:HideText()
                        end
                    end)
                end


            elseif Config.Framework == "ESX" then
                if Config.UseTarget then

                else
                    boxZones[i] = BoxZone:Create(data.location, data.width + 1.0, data.height + 1.0, {
                        name = data.eventID,
                        heading = data.heading,
                        minZ = data.minZ,
                        maxZ = data.maxZ,
                        debugPoly = Config.Debug
                    })

                    boxZones[i]:onPlayerInOut(function(inside)
                        if inside then
                            ESX.TextUI(data.label, "info")
                            playerInZone = true
                            TriggerEvent('ESX:ControlAction', data)
                        else
                            ESX.HideUI()
                            playerInZone = false
                        end
                    end)
                end

            end
        end
    end
end

AddEventHandler('ESX:ControlAction', function(data)
    while playerInZone do

        if IsControlJustPressed(0, 51) then
            TriggerEvent(data.event)
        end

        Wait(0)
    end
end)