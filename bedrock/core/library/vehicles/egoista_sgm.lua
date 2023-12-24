local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2013 Lamborghini Egoista",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/egoista.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/egoista.txt"
					    }
}

list.Set( "Vehicles", "egoista_sgm", V )