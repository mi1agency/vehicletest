local V = {
            Name = "BMW M8 Gran Coupe", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable m8_gran_coupe by TASS",
            Model = "models/rwcars/m8_gran_coupe.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/m8_gran_coupe.txt"
                            }
            }
list.Set("Vehicles", "m8_gran_coupe", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("m8_gran_coupe", 
    {
        {
            Model = "models/rwcars/m8_gran_coupe_1.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         {
            Model = "models/rwcars/m8_gran_coupe_2.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
    }) end)
end