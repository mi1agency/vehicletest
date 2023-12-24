local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2011 Toyota Prius (Limo)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/prius_limo.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/prius_limo.txt"
					    }
}

list.Set( "Vehicles", "prius_limo_sgm", V )