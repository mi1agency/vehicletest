local V = {
            Name = "Ford Bronco", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable bronco by TASS",
            Model = "models/rwcars/bronco.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/bronco.txt"
                            }
            }
list.Set("Vehicles", "bronco", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("bronco", 
    {
        {
            Model = "models/rwcars/bronco_other.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end