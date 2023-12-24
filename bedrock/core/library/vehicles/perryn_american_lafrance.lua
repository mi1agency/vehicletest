local Category = "Perryn's Ported Vehicles"

local V = {
				// Required information
				Name =	"American LaFrance Firetruck",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Perryn",
				Information = "Drive Carefully",
				Model =	"models/perrynsvehicles/american_lafrance/american_lafrance.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/perryn/american_lafrance.txt"
					    }
}

list.Set( "Vehicles", "perryn_american_lafrance", V )