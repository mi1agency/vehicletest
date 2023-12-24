local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1998 Ford Crown Victoria P71",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/cvpi_new.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/cvpi_new.txt"
					    }
}

list.Set( "Vehicles", "cvpi_new_sgm", V )