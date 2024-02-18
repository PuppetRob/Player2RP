-------IF YOU ARE NOT USING QB/ESX EDIT THIS ACCORINGLY-------

if CodeStudio.ServerType == "QB" then 
    QBCore = exports[CodeStudio.QBCoreGetCoreObject]:GetCoreObject()
elseif CodeStudio.ServerType == "ESX" then 
    ESX = exports[CodeStudio.ESXGetSharedObject]:getSharedObject()
end


if CodeStudio.useItem then 
	if CodeStudio.ServerType == 'QB' then 
		QBCore.Functions.CreateUseableItem(CodeStudio.ItemName, function(source, item)
			TriggerClientEvent("p2rp-airsusp:openUI", source)
		end)
	elseif  CodeStudio.ServerType == 'ESX' then 
		ESX.RegisterUsableItem(CodeStudio.ItemName, function(source)
			TriggerClientEvent('p2rp-airsusp:openUI', source)
		end)
	end
end
