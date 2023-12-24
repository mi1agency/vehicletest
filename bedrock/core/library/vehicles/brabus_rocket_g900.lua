local V = {
            Name = "Brabus Rocket G900", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable brabus_rocket_g900 by TASS",
            Model = "models/rwcars/brabus_rocket_g900.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/brabus_rocket_g900.txt"
                            }
            }
list.Set("Vehicles", "brabus_rocket_g900", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("brabus_rocket_g900", 
    {
        {
            Model = "models/rwcars/g900_other.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end