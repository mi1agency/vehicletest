local Category = "Marcus' Cars"

local V = {
				// Required information
				Name =	"2011 BMW X5M",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Marcus",
				Information = "vroom vroom",
				Model =	"models/marcuscars/bmwx5.mdl",
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/marcuscars/x5m.txt"
					    }
}

list.Set( "Vehicles", "marcuscars_bmwx5m", V )
