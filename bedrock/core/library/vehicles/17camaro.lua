local Category = "ST Cars"

local V = {
				// Required information
				Name =	"2017 Chevrolet Camaro ZL1",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "State Trooper",
				Information = "vroom vroom",
				Model =	"models/sentry/17camaro.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/17camaro.txt"
					    }
}

list.Set( "Vehicles", "17camaro_sgm", V )