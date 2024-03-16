OpenBossMenu = function(thisOffice, job)
  if Settings.Framework == "es_extended" then
    TriggerEvent('esx_society:openBossMenu', job.name, function(data,menu) menu.close() end)
  elseif Settings.Framework == "qb-core" then
    TriggerEvent('qb-bossmenu:client:OpenMenu')
  end
end