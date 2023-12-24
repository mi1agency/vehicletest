local Category = "SGM Cars [Eclipse Servers]"

local V = {
				// Required information
				Name =	"Koenigsegg Agera R",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/agerar.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/agerar.txt"
					    }
}

list.Set( "Vehicles", "agerarsgm", V )

