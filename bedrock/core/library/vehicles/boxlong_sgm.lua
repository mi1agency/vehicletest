local Category = "SGM Misc"

local V = {
				// Required information
				Name =	"Long Box Trailer",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/boxlong_trailer.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/boxlong.txt"
					    }
}

list.Set( "Vehicles", "boxlong_sgm", V )