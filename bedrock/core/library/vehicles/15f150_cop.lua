local Category = "ST Cars"

local V = {
				// Required information
				Name =	"2015 Ford F-150 (Cop)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "StateTrooper, Turn 10",
				Information = "vroom vroom",
				Model =	"models/stcars/15f150_cop.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/stcars/15f150_cop.txt"
					    }
}

list.Set( "Vehicles", "15f150_cop", V )