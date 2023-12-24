local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2013 Porsche 918 Spyder",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/918.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/918.txt"
					    }
}

list.Set( "Vehicles", "918_sgm", V )