local V = {
            Name = "Lamborghini Urus Mansory ", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable urus_mansory by TASS",
            Model = "models/rwcars/urus_mansory.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/urus_mansory.txt"
                            }
            }
list.Set("Vehicles", "urus_mansory", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("urus_mansory", 
    {
        {
            Model = "models/rwcars/urus.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end