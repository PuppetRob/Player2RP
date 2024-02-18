RegisterNUICallback('cDataPed', function(nData, cb)
    local cData = nData
    SetEntityAsMissionEntity(charPed, true, true)
    DeleteEntity(charPed)
    if cData ~= nil then
        if cData.cData ~= nil then 
            print(cData.cData)
            QBCore.Functions.TriggerCallback('qb-multicharacter:server:getSkin', function(skinData)
                if skinData then
                    local model = skinData.model
                    CreateThread(function()
                        RequestModel(GetHashKey(model))
                        while not HasModelLoaded(GetHashKey(model)) do
                            Wait(10)
                        end
                        charPed = CreatePed(2, model, AK4Y.PedCoords.x, AK4Y.PedCoords.y, AK4Y.PedCoords.z - 0.98, AK4Y.PedCoords.w, false, true)
                        SetPedComponentVariation(charPed, 0, 0, 0, 2)
                        FreezeEntityPosition(charPed, false)
                        SetEntityInvincible(charPed, true)
                        PlaceObjectOnGroundProperly(charPed)
                        SetBlockingOfNonTemporaryEvents(charPed, true)
                        exports['illenium-appearance']:setPedAppearance(charPed, skinData)
                    end)
                else
                    CreateThread(function()
                        local randommodels = {
                            "mp_m_freemode_01",
                            "mp_f_freemode_01",
                        }
                        local model = GetHashKey(randommodels[math.random(1, #randommodels)])
                        RequestModel(model)
                        while not HasModelLoaded(model) do
                            Wait(10)
                        end
                        charPed = CreatePed(2, model, AK4Y.PedCoords.x, AK4Y.PedCoords.y, AK4Y.PedCoords.z - 0.98, AK4Y.PedCoords.w, false, true)
                        SetPedComponentVariation(charPed, 0, 0, 0, 2)
                        FreezeEntityPosition(charPed, false)
                        SetEntityInvincible(charPed, true)
                        PlaceObjectOnGroundProperly(charPed)
                        SetBlockingOfNonTemporaryEvents(charPed, true)
                    end)
                end
                cb("ok")
            end, cData.cData)
        else
            CreateThread(function()
                local ped = "mp_m_freemode_01"
                if cData.sex == "female" then 
                    ped = "mp_f_freemode_01"
                end
                local model = joaat(ped)
                RequestModel(model)
                while not HasModelLoaded(model) do
                    Wait(0)
                end
                charPed = CreatePed(2, model, AK4Y.PedCoords.x, AK4Y.PedCoords.y, AK4Y.PedCoords.z - 0.98, AK4Y.PedCoords.w, false, true)
                SetPedComponentVariation(charPed, 0, 0, 0, 2)
                FreezeEntityPosition(charPed, false)
                SetEntityInvincible(charPed, true)
                PlaceObjectOnGroundProperly(charPed)
                SetBlockingOfNonTemporaryEvents(charPed, true)
            end)
            cb("ok")
        end 
    else
        CreateThread(function()
            local randommodels = {
                "mp_m_freemode_01",
                "mp_f_freemode_01",
            }
            local model = joaat(randommodels[math.random(1, #randommodels)])
            RequestModel(model)
            while not HasModelLoaded(model) do
                Wait(0)
            end
            charPed = CreatePed(2, model, AK4Y.PedCoords.x, AK4Y.PedCoords.y, AK4Y.PedCoords.z - 0.98, AK4Y.PedCoords.w, false, true)
            SetPedComponentVariation(charPed, 0, 0, 0, 2)
            FreezeEntityPosition(charPed, false)
            SetEntityInvincible(charPed, true)
            PlaceObjectOnGroundProperly(charPed)
            SetBlockingOfNonTemporaryEvents(charPed, true)
        end)
        cb("ok")
    end
end)