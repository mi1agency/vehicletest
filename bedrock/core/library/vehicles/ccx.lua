local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Koenigsegg CCX",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "LOL FAST CAR BEEP",
				Model =	"models/sentry/ccx.mdl",
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/ccx.txt"
					    }
}

list.Set( "Vehicles", "ccx", V )
