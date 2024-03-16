function sendMessage(message, alertType, time)
    if Config.notificationsType == 'okokNotify' then
        exports['okokNotify']:Alert("Paintball", message , time, alertType)
    elseif Config.notificationsType == 'mythic_notify' then
        if alertType == 'success' then
            exports['mythic_notify']:SendAlert('success', message, time)
        elseif alertType == 'error' then
            exports['mythic_notify']:SendAlert('error', message, time)
        elseif alertType == 'info' then
            exports['mythic_notify']:SendAlert('inform', message, time)
        else
            exports['mythic_notify']:SendAlert(alertType, message, time, { ['background-color'] = '#ffffff', ['color'] = '#000000' })
        end
    elseif Config.notificationsType == 'default' then
        if alertType == 'success' then
            QBCore.Functions.Notify(message, alertType)
        elseif alertType == 'error' then
            QBCore.Functions.Notify(message, alertType)
        elseif alertType == 'info' then
            QBCore.Functions.Notify(message, 'primary')
        else
            QBCore.Functions.Notify(message, alertType, time)
        end
    end
end


function createPolyZones()
    --Name: drifunderground | 2022-04-02T02:36:44Z
    print("creating polyzones")
    local driftunderground = PolyZone:Create({
      vector2(-2134.8154296875, 986.43072509766),
      vector2(-2133.0593261719, 986.89526367188),
      vector2(-1837.0452880859, 986.40679931641),
      vector2(-1836.0363769531, 987.4111328125),
      vector2(-1836.0415039063, 1234.6971435547),
      vector2(-1837.9401855469, 1235.6998291016),
      vector2(-2133.0336914063, 1235.6940917969),
      vector2(-2134.0427246094, 1234.6821289063)
    }, {
      name="driftunderground",
      debugPoly = false,
      minZ = -28.448993682861,
      maxZ = -22.363777160645
    })

    driftunderground:onPlayerInOut(function(isPointInside)
        if isPointInside then
            inPolyZone(true)
        else
            inPolyZone(false)
        end
    end)

    --Name: officeroom | 2022-04-02T02:59:40Z
    local officeroom = PolyZone:Create({
        vector2(415.99533081055, 4848.5434570313),
        vector2(387.08367919922, 4848.8012695313),
        vector2(352.42080688477, 4858.775390625),
        vector2(325.16009521484, 4883.0751953125),
        vector2(314.07250976563, 4875.2612304688),
        vector2(320.90509033203, 4866.701171875),
        vector2(333.55609130859, 4850.8530273438),
        vector2(328.3401184082, 4843.37890625),
        vector2(416.44989013672, 4823.7563476563)
    }, {
        name="officeroom",
        debugPoly = false,
        minZ = -63.599792480469,
        maxZ = -52.999420166016
    })
    officeroom:onPlayerInOut(function(isPointInside)
        if isPointInside then
            inPolyZone(true)
        else
            inPolyZone(false)
        end
    end)

    --Name: miningyard | 2022-04-02T03:31:36Z
    local miningyard = PolyZone:Create({
        vector2(949.7197265625, -3198.74609375),
        vector2(951.23852539063, -3215.5891113281),
        vector2(951.23852539063, -3234.1369628906),
        vector2(951.18804931641, -3237.6271972656),
        vector2(947.46685791016, -3240.9389648438),
        vector2(895.650390625, -3248.9792480469),
        vector2(889.00885009766, -3250.2644042969),
        vector2(867.66040039063, -3250.9875488281),
        vector2(848.08764648438, -3250.1982421875),
        vector2(828.81341552734, -3248.3649902344),
        vector2(826.37469482422, -3247.6040039063),
        vector2(823.02197265625, -3233.8188476563),
        vector2(823.05120849609, -3231.5771484375),
        vector2(825.015625, -3228.4479980469),
        vector2(826.63439941406, -3227.0119628906),
        vector2(864.73974609375, -3190.8232421875),
        vector2(863.10430908203, -3184.7629394531),
        vector2(865.61187744141, -3183.5100097656),
        vector2(891.61114501953, -3170.0029296875),
        vector2(900.4931640625, -3171.5747070313),
        vector2(903.47717285156, -3179.4743652344),
        vector2(916.39654541016, -3194.0651855469),
        vector2(923.73468017578, -3193.4675292969),
        vector2(933.47137451172, -3192.5095214844),
        vector2(944.69708251953, -3191.2702636719)
      }, {
        name="miningyard",
        debugPoly = false,
        minZ = -99.991569519043,
        maxZ = -92.12767791748
    })
    miningyard:onPlayerInOut(function(isPointInside)
        if isPointInside then
            inPolyZone(true)
        else
            inPolyZone(false)
        end
    end)


end