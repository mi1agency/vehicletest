local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2011 McLaren MP4-12C",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/mp412c_new.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/mp412c_new.txt"
					    }
}

list.Set( "Vehicles", "mp412c_new_sgm", V )