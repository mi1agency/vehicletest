local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2006 Saleen S281 Extreme",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/s281e.mdl",

			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/s281e.txt"
					    }
}

list.Set( "Vehicles", "s281e", V )
