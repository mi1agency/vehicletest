local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1960 Aston Martin DB4",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/db4.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/db4.txt"
					    }
}

list.Set( "Vehicles", "db4_sgm", V )