local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"GMC C5500 Ambulance",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Ubisoft",
				Information = "vroom vroom",
				Model =	"models/sentry/c5500_ambu.mdl",

			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/c5500.txt"
					    }
}

list.Set( "Vehicles", "c5500ambulance", V )
