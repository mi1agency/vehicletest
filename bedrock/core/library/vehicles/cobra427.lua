local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1965 Shelby Cobra 427",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vrrmmmmmmm.",
				Model =	"models/sentry/shelbycobra.mdl",

				
				KeyValues = {				
				vehiclescript =	"scripts/vehicles/sentry/cobra427.txt"
					    }
}

list.Set( "Vehicles", "cobra427", V )
