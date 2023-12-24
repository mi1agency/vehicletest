local V = {
            Name = "Cadillac Escalade", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable escalade by TASS",
            Model = "models/rwcars/escalade.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/escalade.txt"
                            }
            }
list.Set("Vehicles", "escalade", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("escalade", 
    {
        {
            Model = "models/rwcars/cad_other.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end