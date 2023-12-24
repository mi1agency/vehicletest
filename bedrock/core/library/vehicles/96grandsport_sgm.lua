local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1996 Chevrolet Corvette Grand Sport",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/96grandsport.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/96grandsport.txt"
					    }
}

list.Set( "Vehicles", "96grandsport_sgm", V )