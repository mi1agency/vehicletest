local V = {
            Name = "Ferrari LaFerrari Aperta", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "laferrari_aperta by TASS",
            Model = "models/rwcars/laferrari_aperta.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/laferrari_aperta.txt"
                            }
            }
list.Set("Vehicles", "laferrari_aperta", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("laferrari_aperta", 
    {
        {
            Model = "models/rwcars/other.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end