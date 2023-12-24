local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2011 Lamborghini Sesto Elemento (New)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/sesto_new.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/sesto_new.txt"
					    }
}

list.Set( "Vehicles", "sesto_new_sgm", V )