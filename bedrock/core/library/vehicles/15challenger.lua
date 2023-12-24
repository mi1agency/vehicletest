local Category = "ST Cars"

local V = {
				// Required information
				Name =	"2015 Dodge Challenger Hellcat",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "State Trooper, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/15challenger.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/chalhellcat.txt"
					    }
}

list.Set( "Vehicles", "15challenger_sgm", V )