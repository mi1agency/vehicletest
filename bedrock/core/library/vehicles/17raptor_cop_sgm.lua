local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2017 Ford F-150 Raptor (Cop)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/17raptor_cop.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/17raptor.txt"
					    }
}

list.Set( "Vehicles", "17raptor_cop_sgm", V )