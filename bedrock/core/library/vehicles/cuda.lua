local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Monster Plymouth Barracuda",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, pirate",
				Information = "A classic American muscle car sitting about six feet higher than it was designed to.",
				Model =	"models/sentry/manstertreeeuck.mdl",
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/manstercuda.txt"
					    }
}

list.Set( "Vehicles", "manstercuda", V )
