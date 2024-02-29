CreateThread(function()
    if Config.Framework ~= "qb" then
        return
    end

    local QBCore = exports["qb-core"]:GetCoreObject()

    function Notify(src, msg)
        TriggerClientEvent("QBCore:Notify", src, msg)
    end

    function GetIdentifier(src)
        return QBCore.Functions.GetPlayer(src).PlayerData.citizenid
    end

    function HasJob(source)
        local job = QBCore.Functions.GetPlayer(source).PlayerData.job
        hasJob = job.name == Config.JobName
        isBoss = hasJob and job.isboss
        canCreate = hasJob and job.grade.level >= Config.CreateGrade

        return hasJob, isBoss, canCreate
    end
    
    function RemoveSocietyMoney(price)
        if GetResourceState("qb-management") == "started" then
            return exports["qb-management"]:RemoveMoney(Config.JobName, price)
        elseif GetResourceState("qb-bossmenu") == "started" then
            local accounts = json.decode(LoadResourceFile("qb-bossmenu", "./accounts.json"))

            if accounts[Config.JobName] and accounts[Config.JobName] >= price then
                TriggerEvent("qb-bossmenu:server:removeAccountMoney", Config.JobName, price)
                return true
            else
                return false
            end
        else
            return true
        end
    end
end)