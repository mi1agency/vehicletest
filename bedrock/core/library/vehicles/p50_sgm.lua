local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1964 Peel P50",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/p50_fh4.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/p50_fh4.txt"
					    }
}

list.Set( "Vehicles", "p50_fh4_sgm", V )
