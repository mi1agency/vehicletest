local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2006 Mitsubishi Lancer Evo IX",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/lancer.mdl",


				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/lancer.txt"
					    }
}

list.Set( "Vehicles", "lancerix", V )
