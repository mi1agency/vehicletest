local V = {
            Name = "Range Rover Velar", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable velar by TASS",
            Model = "models/rwcars/velar.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/velar.txt"
                            }
            }
list.Set("Vehicles", "velar", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("velar", 
    {
        {
            Model = "models/rwcars/velar_other.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end