------------------------------------------------------------------
----                      WARNING                             ----
----    DO NOT TOUCH IF YOU DON'T KNOW WHAT YOU'RE DOING      ----
----                                                          ----
------------------------------------------------------------------

playerVehiclesTable = ''
playerTable = ''
playerIdentify = ''

if Config.Framework == 'QBCore' then
    playerVehiclesTable = 'player_vehicles'
	playerTable = 'players'
	playerIdentify = 'citizenid'
elseif Config.Framework == 'ESX' then
    playerVehiclesTable = 'owned_vehicles'
	playerTable = 'characters'
	playerIdentify = 'identifier'
end

if Config.Framework == "QBCore" then
    QBCore = exports[Config.CoreName]:GetCoreObject()

    CreateCallback = QBCore.Functions.CreateCallback
	GetPlayerFromSource = QBCore.Functions.GetPlayer
	GetPlayerFromSourceByCitizenId = QBCore.Functions.GetPlayerByCitizenId

    local AccountManagement = exports['qb-management']

    function getAccount(accountName)
        return AccountManagement:GetAccount(accountName)
    end

    function addMoneyFromAccount(accountName, amount)
        return AccountManagement:AddMoney(accountName, amount)
    end

    function removeMoneyFromAccount(accountName, amount)
        return AccountManagement:RemoveMoney(accountName, amount)
    end

elseif Config.Framework == "ESX" then
    CreateCallback = ESX.RegisterServerCallback
	GetPlayerFromSource = ESX.GetPlayerFromId
	GetPlayerFromSourceByCitizenId = ESX.GetPlayerFromId

	function getAccount(accountName)
		TriggerEvent('esx_society:getSociety', accountName, function (society)
			TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)		
				return account.money
			end)
		end)

		return 0
    end

    function addMoneyFromAccount(accountName, amount)
		TriggerEvent('esx_society:getSociety', accountName, function (society)
			TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)		
				account.addMoney(amount)
				return true
			end)
		end)

		return false
    end

    function removeMoneyFromAccount(accountName, amount)
		TriggerEvent('esx_society:getSociety', accountName, function (society)
			TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)		
				account.removeMoney(amount)
				return true
			end)
		end)

		return false
    end
end


if Config.Framework == "QBCore" then
	QBCore.Commands.Add(Config.OpenPanelCommand, Lang("open_panel"), {}, false, function(source, args)
		local src = source
		TriggerClientEvent('CARSHOP:OpenDashboard', src)
	end)

	QBCore.Commands.Add(Config.OpenCatalogCommand, Lang("open_catalog"), {}, false, function(source, args)
		local src = source
		TriggerClientEvent('CARSHOP:OpenCarShop', src)
	end)
	
	-- Transfer vehicle to player in passenger seat
	QBCore.Commands.Add('transferVehicle', Lang("transfer_your_vehicle"), {{name = 'ID', help = Lang('new_owner_id') }}, false, function(source, args)
		if args[1] ~= nil and args[2] ~= nil then
			TriggerClientEvent('qb-vehicleshop:client:transferVehicle', source, args[1])
		else
			TriggerClientEvent('QBCore:Notify', source, Lang('check_who_selling'), 'error')
		end
	end)

    -- Transfer vehicle to player in passenger seat
    RegisterNetEvent('qb-vehicleshop:server:transferVehicle', function(plate, buyerId)
        local src = source
        local plate = plate
        local buyerId = tonumber(buyerId)
        local ped = GetPlayerPed(src)
        local player = QBCore.Functions.GetPlayer(src)
        local target = QBCore.Functions.GetPlayer(buyerId)
        local citizenid = player.PlayerData.citizenid

        if target ~= nil then
            local targetcid = target.PlayerData.citizenid

            local vehicle = MySQL.Sync.fetchSingle('SELECT * FROM ?? WHERE plate = ?', {playerVehiclesTable, plate})

            if not vehicle.vinData then
                MySQL.Async.execute('UPDATE ?? SET citizenid = ? WHERE plate = ?', {playerVehiclesTable, targetcid, plate})
                TriggerClientEvent('QBCore:Notify', src, Lang('you_tranferred_vehicle'), 'success')
                TriggerClientEvent('vehiclekeys:client:SetOwner', target.PlayerData.source, plate)
                TriggerClientEvent('QBCore:Notify', target.PlayerData.source, Lang('receive_the_vehicle'), 'success')
            else
                TriggerClientEvent('QBCore:Notify', src, 'Você não pode transferir esse tipo de veículo', 'error')			
            end
        else
            TriggerClientEvent('QBCore:Notify', src, Lang('error_get_buyer_info'), 'error')
        end
    end)
elseif Config.Framework == "ESX" then
	RegisterCommand(Config.OpenPanelCommand, function(source, args)
		local src = source
		TriggerClientEvent('CARSHOP:OpenDashboard', src)
	end)

	RegisterCommand(Config.OpenCatalogCommand, function(source, args)
		local src = source
		TriggerClientEvent('CARSHOP:OpenCarShop', src)
	end)
end

-- WHEN PLAYER TRY BUY A VEHICLE, THIS TRIGGER IS CALLED
RegisterServerEvent('dealership:buyVehicle', function(data, vehicleProps, plate, sellerId)
	print("data, vehicleProps, plate, sellerId", data, vehicleProps, plate, sellerId)
    dealershipBuyVehicle(data, vehicleProps, plate, sellerId)
end)

CreateCallback('vehicleshop.CheckToPayInvoice', function (source, cb, invoiceId)
	local Player = GetPlayerFromSource(source)
	local citizenid

	if Config.Framework == "QBCore" then
		citizenid = Player.PlayerData.citizenid
	elseif Config.Framework == "ESX" then
		citizenid = Player.identifier
	end

	local result = Query:Execute([[
		SELECT * FROM carshop_billing
		WHERE id = :invoiceId
	]],
		{				
			[':invoiceId'] = tonumber(invoiceId)
		}
	)

	local invoicePrice = result[1].price

	local removePlayerMoney
	
	if Config.Framework == "ESX" then
		removePlayerMoney = Player.removeAccountMoney("bank", invoicePrice)
	elseif Config.Framework == "QBCore" then
		removePlayerMoney = Player.Functions.RemoveMoney("bank", invoicePrice, "purchase")
	end

	if removePlayerMoney then

		PaymentGroup(result[1].shop, tonumber(invoicePrice))

		local result = Query:Execute([[
			UPDATE carshop_billing
			SET status = :status
			WHERE id = :invoiceId
		]],
			{				
				[':status'] = 1,
				[':invoiceId'] = tonumber(invoiceId)
			}
		)
			
		cb('success')
		return
	end

	cb('error')
end)

function PaymentGroup(accountName, amount)
	if Config.Framework == "ESX" then
        local account_name = string.format('society_%s', accountName)

		if GetResourceState("esx_society") ~= 'missing' then
			TriggerEvent('esx_society:registerSociety', accountName, accountName, account_name, account_name, account_name, {type = 'public'})
		end
	end

	addMoneyFromAccount(accountName, amount)
end

function GetPlayerJob(source)
	local Player = GetPlayerFromSource(source)

	if Config.Framework == "ESX" then
		return Player.getJob()
	elseif Config.Framework == "QBCore" then
		return Player.PlayerData.job
	end
end

function IsPlayerBoss(source)
	local Player = GetPlayerFromSource(source)

	if Config.Framework == "ESX" then
		return Player.getJob().grade_name >= "boss"
	elseif Config.Framework == "QBCore" then
		return Player.PlayerData.job?.isboss
	end
end

function GetPlayerMoney(source, accountType)
	local money = 0
	local Player = GetPlayerFromSource(source)
		
	if Config.Framework == "ESX" then
		money = Player.getAccount(accountType).money
	elseif Config.Framework == "QBCore" then
		money = Player.Functions.GetMoney(accountType)
	end

	return money
end

function RemovePlayerMoney(source, accountType, amount)
	local success = false
	local Player = GetPlayerFromSource(source)

	if Config.Framework == "QBCore" then
		success = Player.Functions.RemoveMoney(accountType, tonumber(amount), "purchase")
	elseif Config.Framework == "ESX" then
		if GetPlayerMoney(source, accountType) >= tonumber(amount) then
			Player.removeAccountMoney(accountType, tonumber(amount),"purchase")
			success = true
		end
	end

	return success
end

function AddPlayerMoney(source, accountType, amount)
	local success = false
	local Player = GetPlayerFromSource(source)

	if Config.Framework == "QBCore" then
		success = Player.Functions.AddMoney(accountType, tonumber(amount))
	elseif Config.Framework == "ESX" then
		Player.addAccountMoney(accountType, tonumber(amount))
		success = true
	end

	return success
end

function GetIdentifierFromPlayer(source)
	local Player = GetPlayerFromSource(source)

	if Config.Framework == "QBCore" then
		return Player.PlayerData.citizenid
	elseif Config.Framework == "ESX" then
		return Player.identifier
	end
end

function InsertVehicleOnDatabase(source, methodPayment, model, vehicleProps, plate, stateVehicle, totalPrice, priceToPay, installments)
	local Player = GetPlayerFromSource(source)
	local playerId = GetIdentifierFromPlayer(source)

	if methodPayment then
		if Config.Framework == "QBCore" then
			query = [[
				INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, state, purchase_price, financed, last_payment, payment_left)
				VALUES (:license, :citizenid, :vehicle, :hash, :mods, :plate, :state, :purchase_price, :financed, :last_payment, :payment_left)
			]]
			
			params = {
				[':license'] = Player.PlayerData.license, 
				[':citizenid'] = Player.PlayerData.citizenid, 				
				[':vehicle'] = model, 		
				[':hash'] = GetHashKey(model),
				[':mods'] = json.encode(vehicleProps),
				[':plate'] = plate, 
				[':state'] = stateVehicle,

				[':purchase_price'] = totalPrice, 
				[':financed'] = priceToPay,
				[':last_payment'] = 1, 
				[':payment_left'] = installments - 1
			}
		elseif Config.Framework == "ESX" then
			query = [[
				INSERT INTO owned_vehicles (owner, vehicle, plate, stored, purchase_price, financed, last_payment, payment_left)
				VALUES (?, ?, ?, ?, ?, ?, ?, ?)
			]]

			params = {
				playerId, 
				json.encode(vehicleProps),
				plate, 
				stateVehicle, 
				totalPrice, 
				priceToPay,
				1, 
				installments - 1
			}
		end
    else
		if Config.Framework == "QBCore" then
			query = [[
				INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, state, purchase_price)
				VALUES (:license, :citizenid, :vehicle, :hash, :mods, :plate, :state, :purchase_price)
			]]

			params = { 
				[':license'] = Player.PlayerData.license, 
				[':citizenid'] = playerId,
				[':vehicle'] = model, 		
				[':hash'] = GetHashKey(model),
				[':mods'] = json.encode(vehicleProps),
				[':plate'] = plate, 
				[':state'] = stateVehicle,
				[':purchase_price'] = priceToPay
			}
		elseif Config.Framework == "ESX" then
			query = [[
				INSERT INTO owned_vehicles (owner, vehicle, plate, stored, purchase_price)
				VALUES (?, ?, ?, ?, ?)
			]]

			params = { 
				playerId, 
				json.encode(vehicleProps),
				plate,
				stateVehicle,
				priceToPay
			}
		end
    end
	
	Query:Execute(query, params)
end


function GeneratePlate()
    local plate = tostring(GetRandomNumber(1)) .. GetRandomLetter(2) .. tostring(GetRandomNumber(3)) .. GetRandomLetter(2)
    local result = MySQL.single.await('SELECT * FROM ?? WHERE `plate` = ?', {playerVehiclesTable, plate})
	
	while (result ~= nil) do
		plate = tostring(GetRandomNumber(1)) .. GetRandomLetter(2) .. tostring(GetRandomNumber(3)) .. GetRandomLetter(2)
	end
	return plate
end

function GetRandomNumber(length)
	Citizen.Wait(1)
	math.randomseed(GetGameTimer())
	if length > 0 then
		return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

function GetRandomLetter(length)
	Citizen.Wait(1)
	math.randomseed(GetGameTimer())
	if length > 0 then
		return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
	else
		return ''
	end
end

