local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1996 Chevrolet Impala SS (Cop)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/96impala_cop.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/96impala.txt"
					    }
}

list.Set( "Vehicles", "96impala_cop_sgm", V )