local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"VLF M62",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/m62.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/m62.txt"
					    }
}

list.Set( "Vehicles", "m62sgm", V )
