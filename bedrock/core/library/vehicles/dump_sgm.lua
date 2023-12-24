local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"GTA V Dump",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/dump.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/dump.txt"
					    }
}

list.Set( "Vehicles", "dump_sgm", V )