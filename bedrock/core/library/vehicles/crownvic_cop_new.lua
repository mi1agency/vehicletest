local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2011 Ford Crown Victoria (Cop)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/crownvic_cop_new.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/crownvic_new.txt"
					    }
}

list.Set( "Vehicles", "crownvic_cop_new_sgm", V )