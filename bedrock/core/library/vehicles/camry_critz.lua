local Category = "PeaRadiisE's Vehicles"

local V = {
				// Required information
				Name =	"2007 Toyota Camry",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "PeaRadiisE, SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/critz/camry.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/critz/camry.txt"
					    }
}

list.Set( "Vehicles", "camry_critz", V )