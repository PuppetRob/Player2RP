local Core = Config.Core.core
Core = exports[Config.Core.name]:GetCoreObject()

RegisterNetEvent('lumio-pets:client:shopmenu', function()
    Core.Functions.TriggerCallback("lumio-pets:server:isWhitelisted", function(result)
        if result then
            local shopmenu = {
                {
                    header = Translations.menus['store_header'],
                    isMenuHeader = true
                },
                {
                    header = Translations.menus['store_pets'],
                    txt = Translations.menus['store_pets_txt'],
                    params = {
                        event = 'lumio-pets:client:buypetmenu',
                    }
                },
                {
                    header = Translations.menus['store_food'],
                    txt = Translations.menus['store_food_txt'],
                    params = {
                        event = 'lumio-pets:client:foodmenu',
                    }
                },
                {
                    header = Translations.menus['store_extra'],
                    txt = Translations.menus['store_extra_txt'],
                    params = {
                        event = 'lumio-pets:client:extramenu',
                    }
                },
            }
            exports[Config.MenuExports]:openMenu(shopmenu)
        else
            Core.Functions.Notify(Translations.server['no_access'], 'error')
        end
    end)
end)

RegisterNetEvent('lumio-pets:client:buypetmenu', function()
    local buypetmenu = {
        {
            header = Translations.menus['store_pets_header'],
            isMenuHeader = true
        },
    }

    for i, v in pairs(Config.BuyPetMenu) do
        buypetmenu[#buypetmenu + 1] = {
            header = v.header,
            txt = v.txt,
            params = {
                isServer = true,
                event = 'lumio-pets:server:buypet',
                args = {
                    spawnname = v.spawnname,
                    price = v.price,
                    type = v.type,
                }
            }
        }
    end

    buypetmenu[#buypetmenu + 1] = {
        header = Translations.menus['back'],
        params = {
            isServer = false,
            event = 'lumio-pets:client:shopmenu',
        },
    }
    exports[Config.MenuExports]:openMenu(buypetmenu)
end)

RegisterNetEvent('lumio-pets:client:foodmenu', function()
    local foodmenu = {
        {
            header = Translations.menus['store_food_header'],
            isMenuHeader = true
        },
        {
            header = Translations.menus['store_food_cat'],
            txt = Translations.menus['store_food_cat_txt'],
            params = {
                isServer = true,
                event = 'lumio-pets:server:buyItems',
                args = {
                    type = 'catfood',
                    price = 50
                },
            }
        },
        {
            header = Translations.menus['store_food_dog'],
            txt = Translations.menus['store_food_dog_txt'],
            params = {
                isServer = true,
                event = 'lumio-pets:server:buyItems',
                args = {
                    type = 'dogfood',
                    price = 50
                },
            }
        },
        {
            header = Translations.menus['store_food_chicken'],
            txt = Translations.menus['store_food_chicken_txt'],
            params = {
                isServer = true,
                event = 'lumio-pets:server:buyItems',
                args = {
                    type = 'chickenfood',
                    price = 50
                },
            }
        },
        {
            header = Translations.menus['back'],
            params = {
                isServer = false,
                event = 'lumio-pets:client:shopmenu',
            }
        },
    }
    exports[Config.MenuExports]:openMenu(foodmenu)
end)

RegisterNetEvent('lumio-pets:client:extramenu', function()
    local extramenu = {
        {
            header = Translations.menus['store_extra_header'],
            isMenuHeader = true
        },
        {
            header = Translations.menus['store_extra_ball'],
            txt = Translations.menus['store_extra_ball_txt'],
            params = {
                isServer = true,
                event = 'lumio-pets:server:buyItems',
                args = {
                    type = 'weapon_ball',
                    price = 50
                },
            }
        },
        {
            header = Translations.menus['back'],
            params = {
                isServer = false,
                event = 'lumio-pets:client:shopmenu',
            }
        },
    }
    exports[Config.MenuExports]:openMenu(extramenu)
end)


RegisterNetEvent('lumio-pets:client:mainmenu', function()
    Core.Functions.TriggerCallback("lumio-pets:server:isWhitelisted", function(result)
        if result then
            local petinteractionmenu = {
                {
                    header = Translations.menus['petmenu_header'],
                    isMenuHeader = true
                },
            }
        
            if not animalSpawned then
                petinteractionmenu[#petinteractionmenu + 1] = {
                    header = Translations.menus['petmenu_whistle'],
                    txt = Translations.menus['petmenu_whistle_txt'],
                    params = {
                        event = 'lumio-pets:client:whistlemenu',
                    }
                }
            end
        
            if animalSpawned then
                petinteractionmenu[#petinteractionmenu + 1] = {
                    header = Translations.menus['petmenu_home'],
                    txt = Translations.menus['petmenu_home_txt'],
                    params = {
                        event = 'lumio-pets:client:despawn',
                    }
                }
        
                petinteractionmenu[#petinteractionmenu + 1] = {
                    header = Translations.menus['petmenu_follow'],
                    txt = Translations.menus['petmenu_follow_txt'],
                    params = {
                        event = 'lumio-pets:client:follow',
                    }
                }

                petinteractionmenu[#petinteractionmenu + 1] = {
                    header = Translations.menus['petmenu_wander'],
                    txt = Translations.menus['petmenu_wander_txt'],
                    params = {
                        event = 'lumio-pets:client:wander',
                    }
                }
        
                petinteractionmenu[#petinteractionmenu + 1] = {
                    header = Translations.menus['petmenu_ball'],
                    txt = Translations.menus['petmenu_ball_txt'],
                    params = {
                        event = 'lumio-pets:client:ball',
                    }
                }
        
                petinteractionmenu[#petinteractionmenu + 1] = {            
                    header = Translations.menus['petmenu_animations'],
                    txt = Translations.menus['petmenu_animations_txt'],
                    params = {
                        event = 'lumio-pets:client:animationmenu',
                    }
                }
        
                petinteractionmenu[#petinteractionmenu + 1] = {
                    header = Translations.menus['petmenu_car'],
                    txt = Translations.menus['petmenu_car_txt'],
                    params = {
                        event = 'lumio-pets:client:car',
                    }
                }

                petinteractionmenu[#petinteractionmenu + 1] = {
                    header = Translations.menus['petmenu_locate'],
                    txt = Translations.menus['petmenu_locate_txt'],
                    params = {
                        event = 'lumio-pets:client:locate',
                    }
                }
            end
        
            petinteractionmenu[#petinteractionmenu + 1] = {
                header = Translations.menus['petmenu_rename'],
                txt = Translations.menus['petmenu_rename_txt'],
                params = {
                    event = 'lumio-pets:client:renamemenu',
                }
            }
            exports[Config.MenuExports]:openMenu(petinteractionmenu)
        else
            Core.Functions.Notify(Translations.server['no_access'], 'error')
        end
    end)
end)

RegisterNetEvent('lumio-pets:client:whistlemenu', function()
    if not animalSpawned then
        Core.Functions.TriggerCallback("lumio-pets:server:getPets", function(result)
            if result then
                local mainmenu = {
                    {
                        header = Translations.menus['store_pets_header'],
                        isMenuHeader = true
                    },
                }

                for k, v in pairs(result) do
                    if v.type == 'chicken' then
                        icon = '🐔'
                    elseif v.type == 'cat' then
                        icon = '😺'
                    elseif v.type == 'dog' then
                        icon = '🐶'
                    else
                        icon = '❓'
                    end
            
                    local petcategory = v.spawnname
                    petcategory = petcategory:gsub("%a_c", "")
                    petcategory = petcategory:gsub("01", "")
                    petcategory = petcategory:gsub("%_", "")
                    petcategory = petcategory:gsub("^%l", string.upper)
            
                    if petcategory == "Cat" then
                        petcategory = Translations.menus['mypet_type_cat']
                    elseif petcategory == "Hen" then
                        petcategory = Translations.menus['mypet_type_hen']
                    end
            
                    mainmenu[#mainmenu + 1] = {
                        header = icon.. ' | ' ..v.name,
                        txt = petcategory.. ' | '..Translations.menus['mypet_hunger']..': '..v.food..'%'.. ' | '..Translations.menus['mypet_health']..': '..v.health..'%',
                        params = {
                            event = 'lumio-pets:client:spawn',
                            args = {
                                spawnname = v.spawnname,
                                cid = v.citizenid,
                                name = v.name,
                                type = v.type,
                                petid = v.petid,
                                food = v.food,
                                health = v.health,
                            }
                        }
                    }
                end

                mainmenu[#mainmenu + 1] = {
                    header = Translations.menus['back'],
                    params = {
                        event = 'lumio-pets:client:mainmenu',
                    },
                }
                exports[Config.MenuExports]:openMenu(mainmenu)
            end
        end, PlayerData.citizenid)
    end
end)

RegisterNetEvent('lumio-pets:client:renamemenu', function()
    Core.Functions.TriggerCallback("lumio-pets:server:getPets", function(result)
        if result then
            local renamemenu = {
                {
                    header = Translations.menus['rename_header'],
                    isMenuHeader = true
                },
            }

            for k, v in pairs(result) do
                if v.type == 'chicken' then
                    icon = '🐔'
                elseif v.type == 'cat' then
                    icon = '😺'
                elseif v.type == 'dog' then
                    icon = '🐶'
                else
                    icon = '❓'
                end
        
                local petcategory = v.spawnname
                petcategory = petcategory:gsub("%a_c", "")
                petcategory = petcategory:gsub("01", "")
                petcategory = petcategory:gsub("%_", "")
                petcategory = petcategory:gsub("^%l", string.upper)
        
                if petcategory == "Cat" then
                    petcategory = Translations.menus['mypet_type_cat']
                elseif petcategory == "Hen" then
                    petcategory = Translations.menus['mypet_type_hen']
                end

                if v.namechanged then
                    state = "✅"
                else
                    state = "❌"
                end
        
                renamemenu[#renamemenu + 1] = {
                    header = icon.. ' | ' ..v.name,
                    txt = petcategory.. ' | Renamed: '..state,
                    params = {
                        event = 'lumio-pets:client:renamewindow',
                        args = {
                            petid = v.petid,
                            changed = v.namechanged,
                        }
                    }
                }
            end

            renamemenu[#renamemenu + 1] = {
                header = Translations.menus['back'],
                params = {
                    event = 'lumio-pets:client:mainmenu',
                },
            }
            exports[Config.MenuExports]:openMenu(renamemenu)
        end
    end, PlayerData.citizenid)
end)

RegisterNetEvent('lumio-pets:client:renamewindow', function(data)
    if not data.changed then
        local dialog = exports[Config.InputExports]:ShowInput({
            header = Translations.menus['rename_window_header'],
            submitText = Translations.menus['rename_window_confirm'],
            inputs = {
                {
                    type = 'text',
                    isRequired = true,
                    name = 'petname',
                    text = Translations.menus['rename_window_txt'],
                }
            }
        })
        if dialog then
            if not dialog.petname then return end
            TriggerServerEvent('lumio-pets:server:dorename', dialog.petname, data.petid)
            TriggerEvent('lumio-pets:client:mainmenu')
            Core.Functions.Notify(Translations.main['name_changed']..' '..dialog.petname, 'success')
        end
    else
        Core.Functions.Notify(Translations.main['already_changed'], "primary")
        TriggerEvent('lumio-pets:client:mainmenu')
    end
end)

RegisterNetEvent('lumio-pets:client:animationmenu', function()
    local animationmenu = {
        {
            header = Translations.menus['anim_header'],
            isMenuHeader = true
        },
    }

    for _, animal in pairs(Config.BuyPetMenu) do
        if animal.spawnname == companionname then
            pet = animal
            break
        end
    end

    if pet then
        local animations = pet.animations

        for _, animation in pairs(animations) do 
            animationmenu[#animationmenu+1] = animation
        end
    end

    animationmenu[#animationmenu+1] = {
        header = Translations.menus['cancel_anim'],
        txt = Translations.menus['cancel_anim_txt'],
        params = {
            event = 'lumio-pets:client:cancelanim',
        },
    }

    animationmenu[#animationmenu + 1] = {
        header = Translations.menus['back'],
        params = {
            event = 'lumio-pets:client:mainmenu',
        },
    }

    exports[Config.MenuExports]:openMenu(animationmenu)
end)

RegisterNetEvent('lumio-pets:client:vetmenu', function()
    Core.Functions.TriggerCallback("lumio-pets:server:getPets", function(result)
        if result then
            local vetmenu = {
                {
                    header = Translations.menus['rename_header'],
                    isMenuHeader = true
                },
            }

            for k, v in pairs(result) do
                if v.type == 'chicken' then
                    icon = '🐔'
                elseif v.type == 'cat' then
                    icon = '😺'
                elseif v.type == 'dog' then
                    icon = '🐶'
                else
                    icon = '❓'
                end

                local petcategory = v.spawnname
                petcategory = petcategory:gsub("%a_c", "")
                petcategory = petcategory:gsub("01", "")
                petcategory = petcategory:gsub("%_", "")
                petcategory = petcategory:gsub("^%l", string.upper)
        
                if petcategory == "Cat" then
                    petcategory = Translations.menus['mypet_type_cat']
                elseif petcategory == "Hen" then
                    petcategory = Translations.menus['mypet_type_hen']
                end

                if v.health < 10 then
                    vetmenu[#vetmenu + 1] = {
                        header = icon.. ' | ' ..v.name.. ' | '..Translations.menus['mypet_hunger']..': '..v.food..'% | '..Translations.menus['mypet_health']..': '..v.health..'%',
                        txt = Translations.menus['select_pet_txt'],
                        params = {
                            isServer = true,
                            event = 'lumio-pets:server:revivepet',
                            args = {
                                petid = v.petid,
                            }
                        }
                    }
                end

                if #vetmenu == 1 then
                    vetmenu[#vetmenu + 1] = {
                        header = Translations.menus['all_healthy'],
                        params = {
                            event = 'lumio-pets:client:allhealthy',
                        }
                    } 
                end
            end
            exports[Config.MenuExports]:openMenu(vetmenu)
        end
    end, PlayerData.citizenid)
end)