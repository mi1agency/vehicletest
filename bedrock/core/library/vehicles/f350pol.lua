local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Ford F350 Police Truck",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Ubisoft",
				Information = "vroom vroom",
				Model =	"models/sentry/f350_pol.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/f350pol.txt"
					    }
}

list.Set( "Vehicles", "f350polsgm", V )
