function Notification(msg, type , time)
    Core.Functions.Notify(msg, type, time)
end

function PoliceAlert()
    exports['ps-dispatch']:DrugSale()
end

function CreatePeds(boss)
    if Config.UseTalkNPC then
        exports['rep-talkNPC']:CreateNPC({
            npc = boss.ped,
            coords =  vector3(boss.pos.x,boss.pos.y, boss.pos.z - 1),
            heading = boss.pos.w,
            name = 'Weird Guy',
            animName ="missheistdockssetup1clipboard@base",
            animDist = "base",
            startMSG = 'Yo, you looking for work?'
        }, {
            {label = "What's in it for me?", value = 1},
            {label = "Sign In/ Sign Out", value = 2},
        } , function(ped, data, menu)
            Boss = ped
            if data then
                if data.value == 1 then
                    menu.addMessage({msg = "It's simple", from = "npc"})
                    Wait(1000)
                    menu.addMessage({msg = "I need you to handle a delivery for me, and if you pull it off smoothly, I'll reward you with some high-quality pills.", from = "npc"})
                    Wait(1000)
                    menu.addMessage({msg = "Listen, you gotta be slick about it. We got your back on the rest.", from = "npc"})
                    Wait(1000)
                    menu.addMessage({msg = "Oh, and if you have dirty money, remember to bring it with you while working. It might come in handy.", from = "npc"})
                elseif data.value == 2 then
                    if onDuty == true then
                        TriggerEvent('rep-oxyrun:client:offduty')
                        menu.addMessage({msg = "Aight, we gotta vanish before the pigs show up. You know the drill, make like ghosts and get outta here.", from = "npc"})
                        Wait(1000)
                        menu.close()
                    else
                        if LocalPlayer.state.nghe == nil or LocalPlayer.state.nghe == "oxyrun" then
                            TriggerEvent('rep-oxyrun:client:duty')
                            menu.addMessage({msg = "Smart move!", from = "npc"})
                            Wait(1000)
                            menu.close()
                        else
                            Notification(Config.Lang['error_ownjob'].label, Config.Lang['error_ownjob'].type, Config.Lang['error_ownjob'].time)
                        end
                    end
                end
            end
        end)
    else
        Target(boss)
    end
end

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)