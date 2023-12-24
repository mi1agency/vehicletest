local Category = "MLW Autos"

local V = {
				// Required information
				Name =	"2012 Mercedes-Benz SLK 55 AMG",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Merlin",
				Information = "vroom vroom",
				Model =	"models/mlautomotive/mercedes_slk_amg.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/mlautomotive/mercedes_slk_amg.txt"
					    }
}

list.Set( "Vehicles", "mer_slk_55_mlw", V )
