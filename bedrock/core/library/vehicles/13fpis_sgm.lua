local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2013 Ford Police Interceptor Sedan",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/13fpis.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/13fpis.txt"
					    }
}

list.Set( "Vehicles", "13fpis_sgm", V )
