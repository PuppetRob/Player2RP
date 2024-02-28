local function SetDisplay(bool, img)
	print(bool, img)
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "showImage",
        image = img,
        status = bool,
    })
end

local function ShowImage(img)
    SetDisplay(true, img)
end

RegisterNetEvent('jixel-pearls:showMenu', function(img)
    ShowImage(img)
end)

RegisterNUICallback("ToggleImage-callback", function(data, cb)
	print("Toggle off image")
    SetDisplay(false)
    cb('ok')
end)