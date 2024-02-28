local QBCore = exports['qb-core']:GetCoreObject()

local pearltable = nil
local full = false
local Tables = {}
local Targets = {}
local tablelist = {}

for key, Location in pairs(Config.Locations) do
    if Location.zoneEnabled == true then
        tablelist[key] = {}
        if Location.MLO == "Gabz" then
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1827.23, -1199.6, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1829.16, -1198.53, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1831.16, -1197.47, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1833.13, -1196.43, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1831.24, -1193.45, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1830.04, -1191.45, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1826.71, -1189.41, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1824.56, -1190.63, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1822.59, -1191.74, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1825.61, -1196.67, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1828.44, -1188.34, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1826.09, -1193.72, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1824.5, -1194.72, 14), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1829.69, -1194.41,14), }
        elseif Location.MLO == "koi" then
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1053.0, -1446.86, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1051.02, -1447.98, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1049.1, -1449.11, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1046.0, -1452.42, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1044.88, -1454.32, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1043.8, -1456.36, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1042.73, -1460.69, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1042.72, -1462.98, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1042.73, -1465.23, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1044.07, -1469.48, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1045.28, -1471.41, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1046.38, -1473.39, -2.0)}
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1054.38, -1479.01, -2.0), heading = 10.0 }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1056.63, -1479.42, -2.0), heading = 10.0 }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1058.83, -1479.85, -2.0), heading = 10.0 }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1065.33, -1481.73, -2.0), heading = 75.0, l = 2.5, w = 2.5, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1067.76, -1477.67, -2.0), l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1069.36, -1476.76, -2.0), l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1074.19, -1471.66, -2.0), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1075.02, -1470.09, -2.0), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1076.99, -1461.01, -2.0), heading = 20, l = 0.6, w = 0.6, }

            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1076.44, -1458.8, -2.0), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1075.94, -1456.64, -2.0), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1065.05, -1455.2, -2.0), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1058.79, -1453.69, -2.0), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1053.05, -1456.79, -2.0), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1050.83, -1462.78, -2.0), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1068.68, -1460.62, -2.0), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1067.65, -1467.03, -2.0), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1062.72, -1471.08, -2.0), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1061.9, -1468.88, -1.5), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1065.45, -1465.81, -1.5), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1066.15, -1461.18, -1.5), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1063.52, -1457.42, -1.5), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1059.05, -1456.24, -1.5), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1055.03, -1458.48, -1.5), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1053.44, -1462.78, -1.5), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1057.18, -1461.97, -1.5), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1060.61, -1465.33, -1.5), heading = 20, l = 0.6, w = 0.6, }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1061.82, -1460.74, -1.5), heading = 20, l = 0.6, w = 0.6, }
        elseif Location.MLO == "dons" then
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1828.96, -1189.32, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1831.32, -1187.8, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1827.59, -1184.86, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1825.11, -1186.31, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1822.6, -1187.81, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1819.99, -1189.36, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1822.46, -1193.05, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1833.53, -1191.96, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1831.18, -1193.28, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1826.19, -1196.08, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1823.82, -1197.61, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1826.47, -1202.38, 13.8), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1831.65, -1200.89, 13.5), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1836.39, -1198.21, 13.5), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1844.62, -1193.16, 13.5), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1845.9, -1195.43, 13.5), }
            tablelist[key][#tablelist[key]+1] = { coords = vector3(-1847.33, -1197.77, 13.5), }
        end
    end
end

CreateThread( function()
    for key, tableLocation in pairs(tablelist) do
        for i, table in ipairs(tableLocation) do
            local tableheading = table.heading or 150
            local tablelength = table.l or 0.6
            local tablewidth = table.w or 0.6
            local targetName = "Table"..i..key
            if Config.Inv == "ox" then TriggerServerEvent("jixel-pearls:makeOXStash", targetName, "Table") end
            Targets[targetName] =
                exports['qb-target']:AddBoxZone(targetName, table.coords, tablelength, tablewidth,
                    { name=targetName, heading = tableheading, debugPoly=Config.Debug, minZ = table.coords.z - 0.5, maxZ = table.coords.z + 0.5 },
                    { options = {
                        {
                            event = "jixel-pearls:Stash",
                            icon = "fas fa-box-open",
                            label = Loc[Config.Lan].target["table"],
                            stash = targetName,
                            stashName = targetName
                        },
                        {
                            action = function()
                                TriggerEvent("jixel-pearls:showMenu", Config.Locations[key].MenuImg)
                            end,
                            type = "client",
                            icon = "fas fa-box-open",
                            label = Loc[Config.Lan].target["showmenu"],
                        },
                    }, distance = 2.0 })
                    if Config.Debug then print("^5Debug^7: ^2Created ^6"..i..key.." ^2Tables^7") end
            end
        end
end)

AddEventHandler('onResourceStop', function(resource) if resource ~= GetCurrentResourceName() then return end
	for k in pairs(Targets) do exports['qb-target']:RemoveZone(k) end
	--for _, v in pairs(Props) do unloadModel(GetEntityModel(v)) DeleteEntity(v) end
end)