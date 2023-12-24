local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2016 Koenigsegg Regera",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "RR3",
				Information = "vroom vroom",
				Model =	"models/sentry/regera.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/regera.txt"
					    }
}

list.Set( "Vehicles", "regerasgm", V )
