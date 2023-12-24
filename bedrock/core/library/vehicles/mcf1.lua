local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1993 McLaren F1",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/mclarenf1.mdl",


				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/mcf1.txt"
					    }
}

list.Set( "Vehicles", "mcf1", V )
