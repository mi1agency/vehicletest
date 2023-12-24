local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1971 Ford Torino",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vrrmmmmmmm.",
				Model =	"models/sentry/torino.mdl",

				
				KeyValues = {				
				vehiclescript =	"scripts/vehicles/sentry/torino.txt"
					    }
}

list.Set( "Vehicles", "torino_sgm", V )
