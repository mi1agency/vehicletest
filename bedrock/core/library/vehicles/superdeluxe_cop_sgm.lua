local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1946 Ford Super De Luxe Police Edition",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vrrmmmmmmm.",
				Model =	"models/sentry/superdeluxe_cop.mdl",

				
				KeyValues = {				
				vehiclescript =	"scripts/vehicles/sentry/superdeluxe.txt"
					    }
}

list.Set( "Vehicles", "superdeluxe_cop_sgm", V )
