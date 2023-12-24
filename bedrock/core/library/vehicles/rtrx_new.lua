local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1969 Ford Mustang RTR-X",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/rtrx_new.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/rtrx_new.txt"
					    }
}

list.Set( "Vehicles", "rtrx_new_sgm", V )