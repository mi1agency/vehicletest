local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1994 Nissan 180SX",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/180sx_new.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/180sx_new.txt"
					    }
}

list.Set( "Vehicles", "180sx_new_sgm", V )