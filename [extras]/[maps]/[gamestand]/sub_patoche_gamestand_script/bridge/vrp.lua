if Shared.Framework ~= 'vRP' then return end
print('vRP framework detected')

local server = IsDuplicityVersion()

if server then
    RegisterServerEvent('patoche_gamestand:chinUpPlay', function(method)
        print('vRP no implementation of remove money', Config.chinUpPlayCost)
    end)

    RegisterServerEvent('patoche_gamestand:chinUpReward', function(source)
        local src = source
        print('vRP no implementation of give money, player ^3'.. src .. '^7 win the price of the chin up challenge $'.. Config.chinUpReward)
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
