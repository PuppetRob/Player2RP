Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(0, 73) then
            local veh = GetVehiclePedIsIn(GetPlayerPed(-1), true)
            local dpscars = {
                "dps1",
                "dps2",
                "dps3",
                "dps4",
                "dps5",
                "dps6",
                "dps7",
                "dps8",
                "dps9",
            }
            if not IsVehicleExtraTurnedOn(veh, 4) then
                SetVehicleExtra(veh, 4, 0)
            else
                SetVehicleExtra(veh, 4, 1)
            end
        end
    end
end)