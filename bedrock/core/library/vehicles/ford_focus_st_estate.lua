local Category = "Perryn's Ported Vehicles"

local V = {
				// Required information
				Name =	"Ford Focus ST Estate",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Perryn",
				Information = "Drive Carefully",
				Model =	"models/perrynsvehicles/ford_focus_st_estate/ford_focus_st_estate.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/perryn/ford_focus_st_estate.txt"
					    }
}

list.Set( "Vehicles", "perryn_ford_focus_st_estate", V )