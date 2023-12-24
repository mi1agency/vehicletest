local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2011 Tesla Roadster S",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/roadsters.mdl",

			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/roadsters.txt"
					    }
}

list.Set( "Vehicles", "roadsters", V )
