local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
PlayerJob = {}

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

local year --[[ integer ]], month --[[ integer ]], day --[[ integer ]], hour --[[ integer ]], minute --[[ integer ]], second --[[ integer ]] = GetLocalTime()

RegisterNetEvent("bodycam:time")
AddEventHandler("bodycam:time", function (h,m,s)
    SendNUIMessage({
        action = "zamanguncelle",
        zaman = day.."/"..month.."/"..year.." ".." - "..h..":"..m..":"..s.." GMT+3",
    })
end)

RegisterNetEvent("p2rp-bodycam:openBoy")
AddEventHandler("p2rp-bodycam:openBoy", function (item, h,m,s)
    local Player = QBCore.Functions.GetPlayerData()
    if PlayerJob.name == "lspd" or PlayerJob.name == 'sast' or PlayerJob.name == 'bcso' or PlayerJob.name == 'highwaypatrol' then
        if Player.charinfo.gender == "0" then
            gender = Config.Gender2
        else
            gender = Config.Gender1
        end
        if acik then
            acik = false
            SendNUIMessage({
                action = "hidebodycam"
            })
            TriggerServerEvent("booleanuodate", false)

        else
            SendNUIMessage({
                action = "showbodycam",
                player = Player.job.grade.name.. " "..gender.." "..Player.charinfo.lastname,
                callsign = "["..Player.metadata['callsign'].."]",
                tarih = day.."/"..month.."/"..year.." ".." - "..h..":"..m..":"..s.." GMT+3",
            })
            TriggerServerEvent("booleanuodate", true)
            acik = true
        end
    end
end)
