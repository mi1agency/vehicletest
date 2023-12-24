local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2009 Dodge Grand Caravan",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/grandcaravan.mdl",

	
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/caravan.txt"
					    }
}

list.Set( "Vehicles", "caravan", V )
