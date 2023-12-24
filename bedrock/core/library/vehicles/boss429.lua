local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1970 Ford Mustang Boss 429",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/boss429.mdl",

	
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/boss429.txt"
					    }
}

list.Set( "Vehicles", "boss429", V )
