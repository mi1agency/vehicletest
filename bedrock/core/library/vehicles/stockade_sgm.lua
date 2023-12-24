local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Stockade",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/stockade.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/stockade.txt"
					    }
}

list.Set( "Vehicles", "stockade_sgm", V )