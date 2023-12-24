local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2015 Kenworth W900",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/w900.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/w900.txt"
					    }
}

list.Set( "Vehicles", "w900_sgm", V )