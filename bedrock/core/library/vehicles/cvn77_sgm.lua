local Category = "SGM Misc"

local V = { 	
				Name = "USS George Bush (CVN-77)", 
				Class = "prop_vehicle_airboat",
				Category = Category,

				Information = "buoyancy operated aquatic transport",
				Model = "models/sentry/cvn77.mdl",

				KeyValues = {
								vehiclescript	=	"scripts/vehicles/sentry/cvn77.txt"
							}
			}

list.Set( "Vehicles", "cvn77sgm", V )
