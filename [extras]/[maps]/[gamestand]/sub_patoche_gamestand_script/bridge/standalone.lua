if Shared.Framework ~= 'standalone' then return end
print('No framework detected, using standalone')

local server = IsDuplicityVersion()

if server then
    RegisterServerEvent('patoche_gamestand:chinUpPlay', function(method)
        print('Standalone no implementation of remove money', Config.chinUpPlayCost)
    end)

    RegisterServerEvent('patoche_gamestand:chinUpReward', function(source)
        print('Standalone no implementation of give money', Config.chinUpReward)
    end)
end

function hasMoney(quantity, method)
    print(quantity, method)
    if method == 'cash' then
        print('Standalone, hasMoney is true cause not implemented')
        return true
    elseif method == 'bank' then
        print('Standalone, hasMoney is true cause not implemented')
        return true
    end
end
