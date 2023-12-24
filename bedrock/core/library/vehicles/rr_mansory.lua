local V = {
            Name = "Range Rover SVR MANSORY", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable rr_mansory by TASS",
            Model = "models/rwcars/rr_mansory.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/rr_mansory.txt"
                            }
            }
list.Set("Vehicles", "rr_mansory", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("rr_mansory", 
    {
        {
            Model = "models/rwcars/rr2_prop.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end