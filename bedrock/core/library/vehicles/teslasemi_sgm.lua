local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2020 Tesla Semi",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/teslasemi.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/teslasemi.txt"
					    }
}

list.Set( "Vehicles", "teslasemi_sgm", V )