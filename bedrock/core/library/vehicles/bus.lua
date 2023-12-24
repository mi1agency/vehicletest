local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Caisson Elementary C",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Ubisoft",
				Information = "vroom vroom",
				Model =	"models/sentry/bus.mdl",

			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/bus.txt"
					    }
}

list.Set( "Vehicles", "bus", V )
