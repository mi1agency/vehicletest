local Category = "ST Cars"

local V = {
				// Required information
				Name =	"2015 Dodge Charger Hellcat (Cop)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "State Trooper, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/15hellcat_cop.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/hellcat.txt"
					    }
}

list.Set( "Vehicles", "15hellcat_cop_sgm", V )