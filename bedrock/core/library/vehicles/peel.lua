local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Peel P50",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/peelp50.mdl",

			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/peel.txt"
					    }
}

list.Set( "Vehicles", "peelp50", V )
