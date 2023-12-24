local Category = "Cubix Network Cars"

local V = {
				// Required information
				Name =	"Buggy",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/buggy.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/buggy.txt"
					    }
}

list.Set( "Vehicles", "buggysgm", V )
