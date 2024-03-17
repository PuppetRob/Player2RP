RegisterServerEvent('wp-ai-ems:server:DispatchAIEMS', function(targetId, isInstantDispatch)
    TriggerClientEvent("wp-ai-ems:client:DispatchAIEMS", targetId, isInstantDispatch)
end)

RegisterServerEvent('wp-ai-ems:server:UpdateTelemetryCounter', function(status)
    if Config.RecordTelemetry then
        MySQL.Async.execute('UPDATE ai_ems_telemetry SET counter = counter + 1 WHERE status = @status', {
            ['@status'] = status
        })
    end
end)

-- Gets entities from netId and extends the culling radius for each entity
RegisterServerEvent('wp-ai-ems:server:UpdateEntityCullingRadius', function(ambulanceNetId, driverNetId)
    local ambulance = NetworkGetEntityFromNetworkId(ambulanceNetId)
    local driverPed = NetworkGetEntityFromNetworkId(driverNetId)

    -- OneSync has an entity culling radius of 424 units, if the ambulance has to drive a route 
    -- that takes them > 424 units it will be culled. This should help prevent that.
    SetEntityDistanceCullingRadius(ambulance, 2000.0)
    SetEntityDistanceCullingRadius(driverPed, 2000.0)
end)

if Config.EnableCallEMSCommand then
    RegisterCommand("callems", function(source)
        TriggerClientEvent("wp-ai-ems:client:DispatchAIEMS", source, Config.IsEMSCommandInstantDispatch)
    end)
end
