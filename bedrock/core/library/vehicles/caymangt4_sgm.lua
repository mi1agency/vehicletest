local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2016 Porsche Cayman GT4",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/gt4.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/16cayman.txt"
					    }
}

list.Set( "Vehicles", "gt4_sgm", V )