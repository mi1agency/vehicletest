local Category = "SGM Cars [Eclipse Servers]"

local V = {
				// Required information
				Name =	"Bugatti Chiron",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/chiron_new.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/chiron_new.txt"
					    }
}

list.Set( "Vehicles", "chiron_new_sgm", V )