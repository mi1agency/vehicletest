local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2015 Mercedes-Benz AMG GT",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/amggt.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/amggt.txt"
					    }
}

list.Set( "Vehicles", "amggt_sgm", V )