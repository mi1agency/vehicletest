local Category = "SGM Trailers"

local V = {
				// Required information
				Name =	"Tanker Trailer",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/trailers/tanker.mdl",
				CantGetIn=true,
			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/tankertrailer.txt"
					    }
}

list.Set( "Vehicles", "tankertrailer", V )
