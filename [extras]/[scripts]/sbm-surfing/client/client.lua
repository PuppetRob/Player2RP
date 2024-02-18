---------SYSTEM SURF JOB--------------

-------------------LOCAL KEY------------------------------------------------------------------------------------------------------------------------------------
local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
  }
--------------------------------------------------------------------------------------------------------------------------------------------------------------

local QBCore = exports['qb-core']:GetCoreObject()

local PlayerData = {}
local requiredItemsShowed = false
local requiredItemsShowed2 = false
local requiredItemsShowed3 = false
local requiredItemsShowed4 = false
local CurrentDocks = nil
local ClosestBerth = 1

------------------------------------------------CORE---------------------------------
local QBCore = exports['qb-core']:GetCoreObject()
	
----------------onload player--------------------------------------------------------
RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        PlayerData = QBCore.Functions.GetPlayerData()
    end)
end)

-------------------setjob------------------------------------------------------------
RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
end)
-------------------------------------------------------------------------------------

------------------------------------TEXT DRAW3D-----------------------------------
function hintToDisplay(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function DrawText3D2(x, y, z, text)
  
    local onScreen,_x,_y=World3dToScreen2d(x, y, z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 600
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.022, 0, 0, 0, 190)
end
---------------------------------------------------------------------------------------------------------
-------------------------------------------BLIP---------------------------------------------------


--[[ Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        for k, v in pairs(Config.BipSurf) do
            addBlip(v.coords, 483, Strings['surfarea'])

            
        end
        
        break
    end
end)

addBlip = function(coords, sprite, text, scale)
local blip = AddBlipForCoord(coords)
SetBlipSprite(blip, sprite)
SetBlipScale  (blip, 0.8)
SetBlipColour (blip, 68)
--SetBlipColour(blip, colour)
SetBlipAsShortRange(blip, true)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString(text)
EndTextCommandSetBlipName(blip)
end ]]--

------------------------------------------END BLIP-------------------------------------------------
-----------------------------------------------GENERA SURF----------------------------------------------
RegisterNetEvent('p2rp-surfing:Auto')
AddEventHandler('p2rp-surfing:Auto', function(boatModel, plate)
    --DoScreenFadeOut(250)
    --Citizen.Wait(250)
    QBCore.Functions.SpawnVehicle(boatModel, function(veh)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
        exports['p2rp-fuel']:SetFuel(veh, GetVehicleNumberPlateText(veh), 100, false)
        SetVehicleNumberPlateText(veh, plate)
        SetEntityHeading(veh, CashoutSurfspaw.SpawnVehicle.h)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
        SetVehicleEngineOn(veh, true, true)
        --exports['p2rp-vehiclekeys']:SetVehicleKey(GetVehicleNumberPlateText(veh), true)

    end, CashoutSurfspaw.SpawnVehicle, true)
   --SetTimeout(1000, function()
       -- DoScreenFadeIn(250)
   -- end)
end)
------------------------------------------END GENERA SURF--------------------------------------------

-------------------------------------RENTSURF- 1----------------------------------------------------------
--[[ Citizen.CreateThread(function()
    while true do
	Citizen.Wait(1)
		local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
		local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.Surf1X, Config.Surf1Y, Config.Surf1Z)
        local ped = GetPlayerPed(-1)
        local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
        
		if dist <= 30.0 then
            DrawMarker(25, Config.Surf1X, Config.Surf1Y, Config.Surf1Z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
            DrawMarker(20, Config.Surf1X, Config.Surf1Y, Config.Surf1Z + 0.8, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.2, 0.6, 15, 255, 55, 255, true, false, false, true, false, false, false)
		else
		Citizen.Wait(1500)
		end
		
		if dist <= 2.0 then
            
            if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
      
            else
                DrawText3D2(Config.Surf1X, Config.Surf1Y, Config.Surf1Z+0.3, ''..Config.textput..'')
                           
                if IsControlJustPressed(0, Keys['E']) then 
                   
                    local price = Config.PriceRent
                    local total
                    local modSur = Config.ModelSurf
                     QBCore.Functions.TriggerCallback("leggo:server:soldisurf", function(moneycociety)
                       
                        local moneysociety            
                        for k, v in pairs(moneycociety) do

                          moneysociety = v.amount
                          total = tonumber(moneysociety+price)
                          TriggerServerEvent("rent:server:surf",tonumber(total), price, modSur, ClosestBerth)
                                                    
                        end
                              
                  end, CurrentDocks)
                end	


		    end		
        else
            
        end
	end
end) ]]--
---------------------------------------END SURFRENT--------------------------------------------------------

-------------------------------------RENTSURF- 2----------------------------------------------------------
Citizen.CreateThread(function()
    while true do
	Citizen.Wait(1)
		local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
		local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.Surf2X, Config.Surf2Y, Config.Surf2Z)
        local ped = GetPlayerPed(-1)
        local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
        
		if dist <= 30.0 then
            DrawMarker(25, Config.Surf2X, Config.Surf2Y, Config.Surf2Z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
            DrawMarker(20, Config.Surf2X, Config.Surf2Y, Config.Surf2Z + 0.8, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.2, 0.6, 15, 255, 55, 255, true, false, false, true, false, false, false)
		else
		Citizen.Wait(1500)
		end
		
		if dist <= 1.0 then
            
            if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
      
            else
                DrawText3D2(Config.Surf2X, Config.Surf2Y, Config.Surf2Z+0.3, ''..Config.textput..'')
                           
                if IsControlJustPressed(0, Keys['E']) then 
                    local price = Config.PriceRent
                    local total
                    local modSur = Config.ModelSurf
                     --QBCore.Functions.TriggerCallback("leggo:server:soldisurf", function(moneycociety)
                       
                        --local moneysociety            
                      --for k, v in pairs(moneycociety) do
                     --     moneysociety = v.amount
                      --    total = tonumber(moneysociety+price)
                          TriggerServerEvent("rent:server:surf",tonumber(price), price, modSur, ClosestBerth)
                         
                     -- end
                              
                 -- end, CurrentDocks)

                end	
		    end		
        else
            
        end
	end
end)

------------------------END RENTSURF-------------------------------------------------------
-------------------------------------DELETE SURF-------------------------------------------------
--[[ Citizen.CreateThread(function()
    while true do
	Citizen.Wait(10)
		local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
		local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.Surf3X, Config.Surf3Y, Config.Surf3Z)
        local ped = GetPlayerPed(-1)
        local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
        local veh2 = GetVehiclePedIsIn(ped)
        
		if dist <= 80.0 then
        DrawMarker(22, Config.Surf3X, Config.Surf3Y, Config.Surf3Z, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 0.8, 1.5, 255, 0, 0, 255, true, true, true, true, false, false, false)
        DrawMarker(25, Config.Surf3X, Config.Surf3Y, Config.Surf3Z-0.97, 0, 0, 0, 0, 0, 0, 3.90, 3.90, 3.90, 255, 0, 0, 200, 0, 0, 0, 0)
		else
		Citizen.Wait(1500)
		end
		
		if dist <= 15.5 then
				
            if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
                DrawText3D2(Config.Surf3X, Config.Surf3Y, Config.Surf3Z, Config.textputa3)
                           
                if IsControlJustPressed(0, Keys['E']) then 
                     
                    QBCore.Functions.DeleteVehicle(veh2)
                  
                end	

            else
        
		    end		
        end
    
	end
end) ]]--
------------------------END PARCHEGGIA SURF------------------------------------------------------------

-------------------------------------Preleva 1----------------------------------------------------------
Citizen.CreateThread(function()
    while true do
	Citizen.Wait(6)
		local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
		local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.PrelevaX, Config.PrelevaY, Config.PrelevaZ)
        local ped = GetPlayerPed(-1)
        local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
        if PlayerData.job ~= nil and (PlayerData.job.name == 'surfjob') then
		if dist <= 10.0 then
            DrawMarker(25, Config.PrelevaX, Config.PrelevaY, Config.PrelevaZ-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
            DrawMarker(20, Config.PrelevaX, Config.PrelevaY, Config.PrelevaZ + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.2, 0.1, 15, 255, 55, 255, true, false, false, true, false, false, false)
		else
		Citizen.Wait(1500)
		end
		
		if dist <= 1.0 then
            
            if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
      
            else
                DrawText3D2(Config.PrelevaX, Config.PrelevaY, Config.PrelevaZ+0.3, ''..Config.textput3..'')
                DrawText3D2(Config.PrelevaX, Config.PrelevaY, Config.PrelevaZ+0.2, ''..Config.textput2..'')

                           
                if IsControlJustPressed(0, Keys['E']) then 
                   
                 --PRELEVA SOLDI
                     QBCore.Functions.TriggerCallback("leggo:server:soldisurf", function(moneycociety)
                       
                        local moneysociety            
                      for k, v in pairs(moneycociety) do
                          moneysociety = v.amount
                          if moneysociety > 0 then
                          TriggerServerEvent("ritiro:server:surf",tonumber(moneysociety))
                          
                          else
                            QBCore.Functions.Notify('You have no money in the company', "error", 7000)
                          end
                      end
                              
                  end, CurrentDocks)
                     
                     
                end	
                ------------LEGGO SOLDI
                if IsControlJustPressed(0, Keys['G']) then 
                   
                    QBCore.Functions.TriggerCallback("leggo:server:soldisurf", function(moneycociety)
                       
                        local moneysociety            
                      for k, v in pairs(moneycociety) do
                          moneysociety = v.amount
                          
                         QBCore.Functions.Notify('You have : ' ..moneysociety..' $ in the company', "success", 10000)
                      end
                              
                  end, CurrentDocks)

               end

		    end		
        else
            
        end
    end
	end
end)

