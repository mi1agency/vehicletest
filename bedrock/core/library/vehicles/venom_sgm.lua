local Category = "SGM Cars [Eclipse Servers]"

local V = {
				// Required information
				Name =	"Hennessey Venom GT",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/venomgt.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/venomgt.txt"
					    }
}

list.Set( "Vehicles", "venomgtsgm", V )