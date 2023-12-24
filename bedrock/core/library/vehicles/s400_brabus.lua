local V = {
            Name = "MANSORY Signature", 
            Class = "prop_vehicle_jeep",
            Category = "RedWine Automobili",
            Author = "redwine",
            Information = "Driveable s400_brabus by TASS",
            Model = "models/rwcars/s400_brabus.mdl",

                                        
            KeyValues = {
                            vehiclescript    =    "scripts/vehicles/rwcars/s400_brabus.txt"
                            }
            }
list.Set("Vehicles", "s400_brabus", V)

if CLIENT then
    timer.Simple(0, function()
    RedWine.AddPropedCar("s400_brabus", 
    {
        {
            Model = "models/rwcars/body.mdl",
            AllowPaint = false, -- if you want make this part paintable, then set this to true. In other case, set it to false
        },
         
    }) end)
end