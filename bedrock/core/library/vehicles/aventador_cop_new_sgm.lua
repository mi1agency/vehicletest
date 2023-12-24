local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2012 Lamborghini Aventador (Cop)(New)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/aventador_cop_new.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/aventador_new.txt"
					    }
}

list.Set( "Vehicles", "aventador_cop_new_sgm", V )