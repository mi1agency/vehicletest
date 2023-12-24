local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1986 Honda Civic Si",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/civicsi.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/civicsi.txt"
					    }
}

list.Set( "Vehicles", "civicsi_sgm", V )