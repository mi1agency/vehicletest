local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2015 Dodge Charger RT (Cop)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/15charger_new_cop.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/15charger_new.txt"
					    }
}

list.Set( "Vehicles", "15charger_new_cop_sgm", V )