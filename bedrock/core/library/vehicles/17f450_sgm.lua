local Category = "ST Cars"

local V = {
				// Required information
				Name =	"2017 Ford F-450 Superduty",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "State Trooper, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/17f450.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/17f450.txt"
					    }
}

list.Set( "Vehicles", "17f450_sgm", V )