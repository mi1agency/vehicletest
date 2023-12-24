local V = {
			Name = "Ferrari 365 GTS/4", 
			Class = "prop_vehicle_jeep",
			Category = "LW Cars",
			Author = "LoneWolfie",
			Information = "Driveable fef by LoneWolfie",
			Model = "models/LoneWolfie/ferrari_365gts.mdl",
					
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/LWCars/ferrari_365gts.txt"
							}
			}
list.Set("Vehicles", "ferrari_365gts_lw", V)

if SERVER then include("lwcars_partmover.lua")

	LWCPartHook( 0.01, "pop_ups", "ferrari_365gts", IN_SPEED, string.lower(V.Model) )
	
end