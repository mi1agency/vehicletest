local Category = "PeaRadiisE's Vehicles"

local V = {
				// Required information
				Name =	"2002 Dodge Neon SE",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "PeaRadiisE, Ubisoft",
				Information = "vroom vroom",
				Model =	"models/critz/neon.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/critz/neon_critz.txt"
					    }
}

list.Set( "Vehicles", "neon_critz", V )