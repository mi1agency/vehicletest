local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1998 Nissan Skyline ER34",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/er34.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/er34.txt"
					    }
}

list.Set( "Vehicles", "er34sgm", V )