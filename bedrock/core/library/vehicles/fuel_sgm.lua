local Category = "SGM Misc"

local V = {
				// Required information
				Name =	"Fuel Trailer",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/fuel_trailer.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/fuel.txt"
					    }
}

list.Set( "Vehicles", "fuel_sgm", V )