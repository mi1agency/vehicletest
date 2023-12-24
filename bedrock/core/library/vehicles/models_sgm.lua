local Category = "ST Cars"

local V = {
				// Required information
				Name =	"2016 Tesla Model S P90D",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/models.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/models.txt"
					    }
}

list.Set( "Vehicles", "models_sgm", V )