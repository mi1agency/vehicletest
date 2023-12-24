local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2006 Chevrolet Corvette Z06",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/z06.mdl",


				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/z06.txt"
					    }
}

list.Set( "Vehicles", "z06", V )
