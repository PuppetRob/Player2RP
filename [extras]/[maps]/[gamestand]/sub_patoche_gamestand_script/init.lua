Shared = {}
Shared.Framework = nil

if GetResourceState('ox_inventory'):find('start') then
    Shared.ox_inventory = true
    print('ox_inventory started', Shared.ox_inventory)
else
    print('^1ox_inventory should be started before this resource!^7')
end

if GetResourceState('ox_lib'):find('starting') then
    print('^1ox_lib should be started before this resource!^7')
end

if GetResourceState('es_extended'):find('start') then
    Shared.Framework = 'ESX'
elseif GetResourceState('qb-core'):find('start') then
    Shared.Framework = 'QBCore'
else
    Shared.Framework = 'standalone'
end
