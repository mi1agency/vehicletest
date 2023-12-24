local Category = "SGM Misc"

local V = { 	
				Name = "USS Essex (LHD-2)", 
				Class = "prop_vehicle_airboat",
				Category = Category,

				Information = "buoyancy operated aquatic transport",
				Model = "models/sentry/wasp.mdl",

				KeyValues = {
								vehiclescript	=	"scripts/vehicles/sentry/wasp.txt"
							}
			}

list.Set( "Vehicles", "waspsgm", V )
