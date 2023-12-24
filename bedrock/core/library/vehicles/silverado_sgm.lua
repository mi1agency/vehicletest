local Category = "ST Cars"

local V = {
				// Required information
				Name =	"2016 Chevrolet Silverado 2500 HD",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/silverado.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/silverado.txt"
					    }
}

list.Set( "Vehicles", "silverado_sgm", V )