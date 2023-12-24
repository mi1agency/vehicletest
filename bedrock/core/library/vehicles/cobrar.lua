local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2000 Ford Mustang Cobra R",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/cobrar.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/cobrar.txt"
					    }
}

list.Set( "Vehicles", "cobrarsgm", V )
