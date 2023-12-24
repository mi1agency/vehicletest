local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1984 BMW M635CSi",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/m635csi.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/m635.txt"
					    }
}

list.Set( "Vehicles", "m635", V )
