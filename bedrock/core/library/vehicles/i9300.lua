local Category = "SGM Trucks"

local V = {
				// Required information
				Name =	"International 9300",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/i9300.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/i9300.txt"
					    }
}

list.Set( "Vehicles", "i9300", V )
