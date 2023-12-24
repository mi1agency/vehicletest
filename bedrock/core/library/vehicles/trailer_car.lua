local Category = "SGM Trailers"

local V = {
				// Required information
				Name =	"Car Carrier",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/trailers/carcarrier.mdl",
				CantGetIn=true,			

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/trailer.txt"
					    }
}

list.Set( "Vehicles", "carcarrier", V )
