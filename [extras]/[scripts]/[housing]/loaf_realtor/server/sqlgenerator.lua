RegisterCommand("realtor_sql", function()
    -- local realtorSql = "INSERT INTO `loaf_houses` (`id`, `label`, `house_apart`, `interior_type`, `interior`, `category`, `entrance`, `price`, `garage_entrance`, `garage_exit`, `misc`) VALUES\n"
    
    local Houses = exports.loaf_housing:GetHouses()
    if not Houses then
        return print("^1Error^0: Could not find loaf_housing/shared/houses.lua")
    end

    local Categories = exports.loaf_housing:GetShells()
    if not Houses then
        return print("^1Error^0: Could not find loaf_housing/shared/shells.lua")
    end

    for propertyId, propertyData in pairs(Houses) do
        local label = propertyData.label
        local house_apart = propertyData.type

        local interior_type = propertyData.interiortype 
        local interior
        local category

        local entrance = json.encode({
            x = propertyData.entrance.x, 
            y = propertyData.entrance.y, 
            z = propertyData.entrance.z, 
            w = propertyData.entrance.w
        })
        local price = propertyData.price

        local garage_entrance
        local garage_exit

        local misc

        if interior_type == "interior" then
            interior = propertyData.interior
        elseif interior_type == "shell" then
            category = propertyData.category
            local availableShells = Categories[category].shells
            interior = availableShells[math.random(1, #availableShells)]

            category = propertyData.category
        elseif interior_type == "walkin" then
            interior = ""
            misc = json.encode({
                doors = propertyData.doors or {},
                locations = propertyData.locations or {}
            })
        end

        if type(propertyData.garage) == "table" and type(propertyData.garage.entrance) == "vector3" and type(propertyData.garage.exit) == "vector4" then
            garage_entrance = json.encode({
                x = propertyData.garage.entrance.x,
                y = propertyData.garage.entrance.y,
                z = propertyData.garage.entrance.z
            })
            garage_exit = json.encode({
                x = propertyData.garage.exit.x,
                y = propertyData.garage.exit.y,
                z = propertyData.garage.exit.z,
                w = propertyData.garage.exit.w
            })
        end

        -- realtorSql = realtorSql .. string.rep("", 4) .. ("(%s, \"%s\", \"%s\", \"%s\", \"%s\", %s, '%s', %s, %s, %s, %s)%s"):format(propertyId, label, house_apart, interior_type, interior, category, entrance, price, garage_entrance, garage_exit, misc, propertyId == #Houses and ";" or ",\n")
        
        MySQL.Sync.execute([[
            INSERT INTO `loaf_houses` 
            (`id`, `label`, `house_apart`, `interior_type`, `interior`, `category`, `entrance`, `price`, `garage_entrance`, `garage_exit`, `misc`)
            VALUES
            (@id, @label, @house_apart, @interior_type, @interior, @category, @entrance, @price, @garage_entrance, @garage_exit, @misc)
        ]], {
            ["@id"] = propertyId,

            ["@label"] = label,
            ["@house_apart"] = house_apart,

            ["@interior_type"] = interior_type,
            ["@interior"] = interior,
            ["@category"] = category,

            ["@entrance"] = entrance,
            ["@price"] = price,

            ["@garage_entrance"] = garage_entrance,
            ["@garage_exit"] = garage_exit,

            ["@misc"] = misc
        }, function()

        end)
    end

    -- SaveResourceFile(GetCurrentResourceName(), "houses.sql", realtorSql, -1)
    print("^2Success^0: All houses have been added to loaf_houses. Please go to loaf_housing/shared/config.lua and set Realtor enabled to true, then do stop loaf_housing and ensure loaf_realtor")
end, true)