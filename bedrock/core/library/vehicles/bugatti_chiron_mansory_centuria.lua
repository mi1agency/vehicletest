local V = {
            Name = "BUGATTI Chiron MANSORY Centuria", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable bugatti_chiron_mansory_centuria by TASS",
            Model = "models/rwcars/bugatti_chiron_mansory_centuria.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/bugatti_chiron_mansory_centuria.txt"
                            }
            }
list.Set("Vehicles", "bugatti_chiron_mansory_centuria", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("bugatti_chiron_mansory_centuria", 
    {
        {
            Model = "models/rwcars/bugatti_chiron_mansory_centuria_2.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end