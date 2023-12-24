local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2018 Dodge Durango SRT",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/durango.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/durango.txt"
					    }
}

list.Set( "Vehicles", "durango_sgm", V )