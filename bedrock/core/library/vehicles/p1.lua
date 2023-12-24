local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2014 McLaren P1",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/p1.mdl",

			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/p1.txt"
					    }
}

list.Set( "Vehicles", "p1sgm", V )
