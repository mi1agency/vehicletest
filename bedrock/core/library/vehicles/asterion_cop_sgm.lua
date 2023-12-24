local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2015 Lamborghini Asterion (Cop)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/asterion_cop.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/asterion.txt"
					    }
}

list.Set( "Vehicles", "asterion_cop_sgm", V )