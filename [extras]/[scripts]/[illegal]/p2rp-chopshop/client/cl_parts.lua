RegisterNetEvent('p2rp-chopshop:StartMenu', function()
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
                    event = "p2rp-chopshop:chopdoor",
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
                    event = "p2rp-chopshop:chopwheel",
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
                    event = "p2rp-chopshop:chophood",
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
                    event = "p2rp-chopshop:choptrunk",
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
                    event = "p2rp-chopshop:chopdoor"
                }
            },
            {
                header = "",
                txt = "Wheel",
                params = {
                    event = "p2rp-chopshop:chopwheel"
                }
            },
            {
                header = "",
                txt = "Hood",
                params = {
                    event = "p2rp-chopshop:chophood"
                }
            },
            {
                header = "",
                txt = "Trunk",
                params = {
                    event = "p2rp-chopshop:choptrunk"
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

RegisterNetEvent('p2rp-chopshop:chopdoor')
AddEventHandler('p2rp-chopshop:chopdoor', function()
    TriggerServerEvent("p2rp-chopshop:server:chopdoor")
end)

RegisterNetEvent('p2rp-chopshop:chopwheel')
AddEventHandler('p2rp-chopshop:chopwheel', function()
    TriggerServerEvent("p2rp-chopshop:server:chopwheel")
end)

RegisterNetEvent('p2rp-chopshop:chophood')
AddEventHandler('p2rp-chopshop:chophood', function()
    TriggerServerEvent("p2rp-chopshop:server:chophood")
end)

RegisterNetEvent('p2rp-chopshop:choptrunk')
AddEventHandler('p2rp-chopshop:choptrunk', function()
    TriggerServerEvent("p2rp-chopshop:server:choptrunk")
end)