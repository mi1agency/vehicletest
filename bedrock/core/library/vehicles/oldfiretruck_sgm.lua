local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Vintage Fire Truck",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/oldfiretruck.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/oldfiretruck.txt"
					    }
}

list.Set( "Vehicles", "oldfiretruck_sgm", V )