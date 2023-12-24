local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2015 McLaren 650S",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/650s.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/650s.txt"
					    }
}

list.Set( "Vehicles", "650s_sgm", V )