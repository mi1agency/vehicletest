local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2011 Koenigsegg Agera",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/agera.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/agera.txt"
					    }
}

list.Set( "Vehicles", "agerasgm", V )
