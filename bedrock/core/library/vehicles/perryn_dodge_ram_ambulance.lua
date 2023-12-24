local Category = "Perryn's Ported Vehicles"

local V = {
				// Required information
				Name =	"Dodge Ram Ambulance",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Perryn",
				Information = "Drive Carefully",
				Model =	"models/perrynsvehicles/dodge_ram_ambulance/dodge_ram_ambulance.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/perryn/dodge_ram_ambulance.txt"
					    }
}

list.Set( "Vehicles", "perryn_dodge_ram_ambulance", V )