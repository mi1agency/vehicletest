local V = {
            Name = "Lamborghini Vision V12", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable v12 by TASS",
            Model = "models/rwcars/v12.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/v12.txt"
                            }
            }
list.Set("Vehicles", "v12", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("v12", 
    {
        {
            Model = "models/rwcars/v12_other.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end