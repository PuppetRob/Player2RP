Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.Zones = {
    ["SandyOccasions"] = {
        BusinessName = "Second Hand Car Sales",
        SellVehicle = vector4(1243.39, 2712.86, 38.01, 6.82),
        BuyVehicle = vector4(1231.52, 2716.42, 38.0, 30.98),

        PolyZone = {
            vector2(1245.3572998047, 2694.2587890625),
            vector2(1204.7261962891, 2694.6027832031),
            vector2(1204.9188232422, 2727.2248535156),
            vector2(1246.1564941406, 2726.2426757812)
        },
        MinZ = 30.0,
        MaxZ = 54.0,

        VehicleSpots = {
            vector4(1215.82, 2698.22, 38.01, 178.89),
            vector4(1219.57, 2698.69, 38.01, 179.65),
            vector4(1223.31, 2699.0, 38.01, 179.45),
            vector4(1227.03, 2698.79, 38.01, 179.64),
            vector4(1230.9, 2698.7, 38.01, 177.81),
            vector4(1234.38, 2698.72, 38.01, 182.26),
            vector4(1238.59, 2699.14, 38.01, 178.36),
            vector4(1206.7, 2707.08, 38.0, 270.35),
            vector4(1206.83, 2711.98, 38.0, 264.9),
            vector4(1207.23, 2716.29, 38.0, 265.96),
        }
    }
}
