local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2013 Ford Mustang Boss 302 (new)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/boss302_new.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/boss302_new.txt"
					    }
}

list.Set( "Vehicles", "boss302_new_sgm", V )