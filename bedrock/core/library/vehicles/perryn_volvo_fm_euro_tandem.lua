local Category = "Perryn's Ported Vehicles"

local V = {
				// Required information
				Name =	"Volvo FM Euro Tandem",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Perryn",
				Information = "Drive Carefully",
				Model =	"models/perrynsvehicles/volvo_fm_euro_tandem/volvo_fm_euro_tandem.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/perryn/volvo_fm_euro_tandem.txt"
					    }
}

list.Set( "Vehicles", "perryn_volvo_fm_euro_tandem", V )