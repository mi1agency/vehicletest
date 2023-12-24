local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1982 Porsche 911 Turbo",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/911turbo.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/911turbo.txt"
					    }
}

list.Set( "Vehicles", "911turbo_sgm", V )