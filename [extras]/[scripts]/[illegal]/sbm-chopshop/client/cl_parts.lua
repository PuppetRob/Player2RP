RegisterNetEvent('sbm-chopshop:StartMenu', function()
    if Config.Menu == "nh" then
        TriggerEvent('nh-context:sendMenu', {
            {
                id = 1,
                header = "Chop Parts",
                txt = ""
            },
            {
                id = 2,
                header = "Door",
                txt = "",
                params = {
                    event = "sbm-chopshop:chopdoor",
                    args = {
                        number = 1,
                        id = 2
                    }
                }
            },
            {
                id = 3,
                header = "Wheel",
                txt = "",
                params = {
                    event = "sbm-chopshop:chopwheel",
                    args = {
                        number = 1,
                        id = 3
                    }
                }
            },
            {
                id = 4,
                header = "Hood",
                txt = "",
                params = {
                    event = "sbm-chopshop:chophood",
                    args = {
                        number = 1,
                        id = 4
                    }
                }
            },
            {
                id = 5,
                header = "Trunk",
                txt = "",
                params = {
                    event = "sbm-chopshop:choptrunk",
                    args = {
                        number = 1,
                        id = 5
                    }
                }
            },
        })
    elseif Config.Menu == "qb" then
        exports['qb-menu']:openMenu({
            {
                header = "Chop Vehicle Parts",
                isMenuHeader = true
            },
            {
                header = "",
                txt = "Door",
                params = {
                    event = "sbm-chopshop:chopdoor"
                }
            },
            {
                header = "",
                txt = "Wheel",
                params = {
                    event = "sbm-chopshop:chopwheel"
                }
            },
            {
                header = "",
                txt = "Hood",
                params = {
                    event = "sbm-chopshop:chophood"
                }
            },
            {
                header = "",
                txt = "Trunk",
                params = {
                    event = "sbm-chopshop:choptrunk"
                }
            },
            {
                header = "⬅ Close Menu",
                txt = "",
                params = {
                    event = "qb-menu:closeMenu"
                }
            },
        })
    end
end)

RegisterNetEvent('sbm-chopshop:chopdoor')
AddEventHandler('sbm-chopshop:chopdoor', function()
    TriggerServerEvent("sbm-chopshop:server:chopdoor")
end)

RegisterNetEvent('sbm-chopshop:chopwheel')
AddEventHandler('sbm-chopshop:chopwheel', function()
    TriggerServerEvent("sbm-chopshop:server:chopwheel")
end)

RegisterNetEvent('sbm-chopshop:chophood')
AddEventHandler('sbm-chopshop:chophood', function()
    TriggerServerEvent("sbm-chopshop:server:chophood")
end)

RegisterNetEvent('sbm-chopshop:choptrunk')
AddEventHandler('sbm-chopshop:choptrunk', function()
    TriggerServerEvent("sbm-chopshop:server:choptrunk")
end)