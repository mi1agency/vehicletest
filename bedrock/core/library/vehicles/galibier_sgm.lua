local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2009 Bugatti Galibier",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/galibier.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/galibier.txt"
					    }
}

list.Set( "Vehicles", "galibier_sgm", V )