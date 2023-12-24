local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2018 Dodge Demon",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/demon.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/demon.txt"
					    }
}

list.Set( "Vehicles", "demon_sgm", V )