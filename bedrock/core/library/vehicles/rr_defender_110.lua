local V = {
            Name = "Land Rover Defender 110", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable rr_defender_110 by TASS",
            Model = "models/rwcars/rr_defender_110.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/rr_defender_110.txt"
                            }
            }
list.Set("Vehicles", "rr_defender_110", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("rr_defender_110", 
    {
        {
            Model = "models/rwcars/rr_defender_other.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end