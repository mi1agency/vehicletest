local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Mine Resistant Ambush Protected Vehicle",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/mrap.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/mrap.txt"
					    }
}

list.Set( "Vehicles", "mrapsgm", V )
