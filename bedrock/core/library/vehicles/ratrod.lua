local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Rat Rod",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/ratrod.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/rat.txt"
					    }
}

list.Set( "Vehicles", "rat", V )
