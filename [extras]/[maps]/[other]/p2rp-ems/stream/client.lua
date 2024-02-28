--===============================
-- by JUST INTERIOR STUDIO
-- Discord UncleJust#0001
--===============================

--==============================================================
--НАСТРОЙКИ НАХОДЯТ В САМОМ НИЗУ СКРИПТА / SETTINGS ARE LOWEST SCRIPT
--==============================================================


--============================ НЕ ТРОГАТЬ / DO TOUCH ==================================

Citizen.CreateThread(function()

    local int_big_elevator = GetInteriorAtCoordsWithType(336.16,-579.95,43.69,"elevatorbig")
    local int_small_elevator = GetInteriorAtCoordsWithType(331.44,-593.44,43.74,"elevatorsmale")
    local int_e1_floor = GetInteriorAtCoordsWithType(351.63,-568.45,29.26,"1florrooms2")
    local int_e4_floor = GetInteriorAtCoordsWithType(315.57,-576.18,43.73,"4floorrooms2h")

    function RefreshIpl()
        RefreshInterior(int_big_elevator)
        RefreshInterior(int_small_elevator)
        RefreshInterior(int_e1_floor)
        RefreshInterior(int_e4_floor)
    end

    local elevator_big = false
    function big_elev(elevator_big)
        if elevator_big then
            elevator_big = true
            RefreshIpl()
            EnableInteriorProp(int_big_elevator, "elevator")
        else
            elevator_big = false
            RefreshIpl()
            DisableInteriorProp(int_big_elevator, "elevator")
        end
    end

    local elevator_small = false
    function small_elev(elevator_small)
        if elevator_small then
            elevator_small = true
            RefreshIpl()
            EnableInteriorProp(int_small_elevator, "elevator")
        else
            elevator_small = false
            RefreshIpl()
            DisableInteriorProp(int_small_elevator, "elevator")
        end
    end

    local e1_hirurg = false
    function e1_hirurg_bath(e1_hirurg)
        if e1_hirurg then
            e1_hirurg = true
            RefreshIpl()
            EnableInteriorProp(int_e1_floor, "hirurg_bath")
        else
            e1_hirurg = false
            RefreshIpl()
            DisableInteriorProp(int_e1_floor, "hirurg_bath")
        end
    end

    local e4_hirurg = false
    function e4_hirurg_bath(e4_hirurg)
        if e4_hirurg then
            e4_hirurg = true
            RefreshIpl()
            EnableInteriorProp(int_e4_floor, "hirurg_bath")
        else
            e4_hirurg = false
            RefreshIpl()
            DisableInteriorProp(int_e4_floor, "hirurg_bath")
        end
    end
    --================================================================================

    --==========================
    --НАСТРОЙКИ / SETTINGS
    --==========================

    --ru: Меняйте значения false/true в функциях ниже чтобы включить или выключить ipl интерьера
    --eng: Change the values of false / true in the functions below to enable or disable the interior ipl

    big_elev(true) --Enable elevator
    small_elev(true) --Enable elevator
    e1_hirurg_bath(true) --Enable hururg bath
    e4_hirurg_bath(false) --Enable hururg bath

end)