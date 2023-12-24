local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2005 Honda NSX-R",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/nsx.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/nsx.txt"
					    }
}

list.Set( "Vehicles", "nsxsgm", V )