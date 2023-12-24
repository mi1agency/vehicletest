local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1957 Chevrolet BelAir",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vrrmmmmmmm.",
				Model =	"models/sentry/belair.mdl",

				
				KeyValues = {				
				vehiclescript =	"scripts/vehicles/sentry/belair.txt"
					    }
}

list.Set( "Vehicles", "belair", V )
