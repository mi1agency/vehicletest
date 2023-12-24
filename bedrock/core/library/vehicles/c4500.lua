local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"GMC C4500",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/c4500.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/c4500.txt"
					    }
}

list.Set( "Vehicles", "c4500sgm", V )
