local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2016 Mazda MX-5 Miata",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/mx5.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/mx5.txt"
					    }
}

list.Set( "Vehicles", "mx5_sgm", V )