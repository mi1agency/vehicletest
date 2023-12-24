local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1971 AMC Javelin AMX",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/javelin.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/javelin.txt"
					    }
}

list.Set( "Vehicles", "javelin_sgm", V )