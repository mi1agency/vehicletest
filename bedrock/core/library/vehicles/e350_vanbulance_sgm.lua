local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2014 Ford E350 Vanbulance",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/e350_vanbulance.mdl",

			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/e350_vanbulance.txt"
					    }
}

list.Set( "Vehicles", "e350_vanbulance_sgm", V )
