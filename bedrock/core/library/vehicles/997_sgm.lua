local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2007 Porsche 911 Turbo",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/997.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/997.txt"
					    }
}

list.Set( "Vehicles", "997_sgm", V )