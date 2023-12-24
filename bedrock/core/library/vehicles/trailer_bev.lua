local Category = "SGM Trailers"

local V = {
				// Required information
				Name =	"Beverage Trailer",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/trailers/bevtrailer.mdl",
				CantGetIn=true,
			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/bevtrailer.txt"
					    }
}

list.Set( "Vehicles", "bevtrailer", V )
