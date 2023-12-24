local V = {
            Name = "Mercedes Maybach S650 Pullman", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable pullman by TASS",
            Model = "models/rwcars/pullman.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/pullman.txt"
                            }
            }
list.Set("Vehicles", "pullman", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("pullman", 
    {
        {
            Model = "models/rwcars/pullman_other.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         {
            Model = "models/rwcars/pullman_other_2.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
    }) end)
end