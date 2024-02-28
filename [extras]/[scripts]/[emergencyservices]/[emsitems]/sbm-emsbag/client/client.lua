local QBCore = exports['qb-core']:GetCoreObject()
local emsbag1 = nil
local function dropemsbag()
    DetachEntity(emsbag1)
    PlaceObjectOnGroundProperly(emsbag1)
end
local function spawnemsbag()
    local hasBag = true
    CreateThread(function()
        while hasBag do
            Wait(0)
            if IsControlJustReleased(0, 38) then -- If E is pressed it drop the  bag
                hasBag = false
                dropemsbag()
                Wait(1000)
            end
        end
    end)
end
local ObjectList = {}

RegisterNetEvent('p2rp-emsbag:Client:SpawnAmbulanceBag', function()
    local hash = GetHashKey('prop_cs_shopping_bag')
    local ped = PlayerPedId()
    local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 3.0, 0.5))
    QBCore.Functions.LoadModel(hash)
    emsbag1 = CreateObjectNoOffset(hash, x, y, z, true, false)
    SetModelAsNoLongerNeeded(hash)
    AttachEntityToEntity(emsbag1, ped, GetPedBoneIndex(ped, 57005), 0.42, 0, -0.05, 0.10, 270.0, 60.0, true, true, false,
        true, 1, true)
        spawnemsbag()
    TriggerServerEvent("p2rp-emsbag:Server:RemoveItem","emsbag",1)
end)

RegisterNetEvent('p2rp-emsbag:Client:spawnLight', function()

    TriggerServerEvent("p2rp-emsbag:Server:SpawnAmbulanceBag", "emsbag")
end)

RegisterNetEvent('p2rp-emsbag:Client:GuardarAmbulanceBag')
AddEventHandler("p2rp-emsbag:Client:GuardarAmbulanceBag", function()
    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), true))
    local playerPedPos = GetEntityCoords(PlayerPedId(), true)
    local AmbulanceBag = GetClosestObjectOfType(playerPedPos, 10.0, GetHashKey("prop_cs_shopping_bag"), false, false, false)
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking Back the Ems Bag...")
    Wait(2500)
    Notify("Ems Bag Taken Back with success.")
    SetEntityAsMissionEntity(AmbulanceBag, 1, 1)
    DeleteObject(AmbulanceBag)
    TriggerServerEvent("p2rp-emsbag:Server:AddItem","emsbag",1)
end)

local citizenid = nil
AddEventHandler("p2rp-emsbag:Client:StorageAmbulanceBag", function()
    local charinfo = QBCore.Functions.GetPlayerData().charinfo
    citizenid = QBCore.Functions.GetPlayerData().citizenid
    TriggerEvent("inventory:client:SetCurrentStash", "Ambulance Bag",citizenid)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Ambulance Bag",citizenid, {
        maxweight = Config.Stash.MaxWeighStash,
        slots = Config.Stash.MaxSlotsStash,
    })
end)

local AmbulanceBags = {
    `prop_cs_shopping_bag`,
}

exports['qb-target']:AddTargetModel(AmbulanceBags, {
    options = {{event   = "p2rp-emsbag:Client:MenuAmbulanceBag",icon    = "fa-solid fa-suitcase-medical",label   = "Ems Bag" , job = Config.Bag.Job },
    {event   = "p2rp-emsbag:Client:GuardarAmbulanceBag",icon    = "fa-solid fa-suitcase-medical",label   = "Take Back Ems Bag" , job = Config.Bag.Job },},distance = 2.0 })