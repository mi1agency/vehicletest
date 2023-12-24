local Category = "Marcus' Cars"

local V = {
				// Required information
				Name =	"2016 Ford Shelby 350",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Marcus",
				Information = "vroom vroom",
				Model =	"models/marcuscars/forshel3502.mdl",
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/marcuscars/shelby.txt"
					    }
}

list.Set( "Vehicles", "forshelmc350", V )
local V = {
				// Required information
				Name =	"2016 Ford Shelby 350 STANCED edition",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Marcus",
				Information = "vroom vroom",
				Model =	"models/marcuscars/forshel350_stance.mdl",
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/marcuscars/shel_stance.txt"
					    }
}

list.Set( "Vehicles", "formus", V )
