local Category = "MLW Autos"

local V = {
				// Required information
				Name =	"Bmw M3 GTR 2002",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Merlin",
				Information = "vroom vroom",
				Model =	"models/mlautomotive/bmw_m3_gtr.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/mlautomotive/bmw_m3_gtr.txt"
					    }
}

list.Set( "Vehicles", "bmw_m3_gtr_mlw", V )
