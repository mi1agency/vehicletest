local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2017 Ford GT",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/fordgt.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/fordgt.txt"
					    }
}

list.Set( "Vehicles", "fordgt_sgm", V )