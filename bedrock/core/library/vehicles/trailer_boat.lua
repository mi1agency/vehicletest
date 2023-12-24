local Category = "SGM Trailers"

local V = {
				// Required information
				Name =	"Boat Carrier",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/trailers/boatcarrier.mdl",
				CantGetIn=true,
			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/trailer.txt"
					    }
}

list.Set( "Vehicles", "boatcarrier", V )
