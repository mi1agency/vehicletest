local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1946 Ford Super De Luxe",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vrrmmmmmmm.",
				Model =	"models/sentry/superdeluxe.mdl",

				
				KeyValues = {				
				vehiclescript =	"scripts/vehicles/sentry/superdeluxe.txt"
					    }
}

list.Set( "Vehicles", "superdeluxe_sgm", V )
