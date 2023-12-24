local Category = "SGM Trailers"

local V = {
				// Required information
				Name =	"Storage Trailer",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/trailers/stortrailer.mdl",
				CantGetIn=true,
			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/stortrailer.txt"
					    }
}

list.Set( "Vehicles", "stortrailer", V )
