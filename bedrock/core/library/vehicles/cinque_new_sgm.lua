local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2009 Pagani Zonda Cinque (New)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/cinque_new.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/cinque_new.txt"
					    }
}

list.Set( "Vehicles", "cinque_new_sgm", V )