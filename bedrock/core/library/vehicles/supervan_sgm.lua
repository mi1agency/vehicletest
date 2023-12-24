local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1972 Reliant Regal Supervan",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/supervan.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/supervan.txt"
					    }
}

list.Set( "Vehicles", "supervan_sgm", V )