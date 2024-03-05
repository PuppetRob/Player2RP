CreateThread(function()
    if Config.Framework ~= "esx" then
        return
    end

    local ESX
    TriggerEvent("esx:getSharedObject", function(esx)
        ESX = esx
    end)

    TriggerEvent("esx_society:registerSociety", 
        Config.JobName, 
        "Realtor", 
        "society_" .. Config.JobName, 
        "society_" .. Config.JobName, 
        "society_" .. Config.JobName, 
        {type = "private"}
    )

    function Notify(src, msg)
        TriggerClientEvent("esx:showNotification", src, msg)
    end

    function GetIdentifier(src)
        return ESX.GetPlayerFromId(src).identifier
    end

    function HasJob(source)
        local job = ESX.GetPlayerFromId(source).job
        hasJob = job.name == Config.JobName
        isBoss = hasJob and job.grade_name == "boss"
        canCreate = hasJob and job.grade >= Config.CreateGrade

        return hasJob, isBoss, canCreate
    end

    function RemoveSocietyMoney(price)
        local paid = false
        local payPromise = promise.new()

        TriggerEvent("esx_addonaccount:getSharedAccount", "society_" .. Config.JobName, function(account)
            if not account then
                paid = true

                print("^1WARNING:^0 esx_addonacccount society_"..Config.JobName.." does not exist")
                payPromise:resolve()
                return
            end

            if account.money >= price then
                account.removeMoney(price)
                paid = true
            end

            payPromise:resolve()
        end)

        Citizen.Await(payPromise)
        return paid
    end
end)