local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1989 Chevrolet Caprice (Police)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/caprice.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/caprice.txt"
					    }
}

list.Set( "Vehicles", "caprice_sgm", V )