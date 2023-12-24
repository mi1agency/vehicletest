local V = {
            Name = "Porsche Taycan Turbo S", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable taycan by TASS",
            Model = "models/rwcars/taycan.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/taycan.txt"
                            }
            }
list.Set("Vehicles", "taycan", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("taycan", 
    {
        {
            Model = "models/rwcars/taycan_other.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end