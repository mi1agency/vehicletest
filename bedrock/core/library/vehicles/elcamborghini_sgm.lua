local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2012 El Camborghini",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/elcamborghini.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/elcamborghini.txt"
					    }
}

list.Set( "Vehicles", "elcamborghini_sgm", V )