local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1989 Chevrolet Caprice",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/caprice_civ.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/caprice.txt"
					    }
}

list.Set( "Vehicles", "caprice_civ_sgm", V )