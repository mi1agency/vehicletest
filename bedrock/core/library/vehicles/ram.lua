local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Dodge Ram 3500 Laramie Mega Cab",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Criterion",
				Information = "vroom vroom",
				Model =	"models/sentry/ram3500.mdl",

			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/ram3500.txt"
					    }
}

list.Set( "Vehicles", "ram3500", V )
