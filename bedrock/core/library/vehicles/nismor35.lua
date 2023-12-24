local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2017 Nissan GT-R Nismo",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/nismor35.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/nismor35.txt"
					    }
}

list.Set( "Vehicles", "nismor35_sgm", V )