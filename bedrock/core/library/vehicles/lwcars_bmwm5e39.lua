local V = {
			Name = "BMW M5 E39", 
			Class = "prop_vehicle_jeep",
			Category = "LW Cars",
			Author = "lonewolfie",
			Information = "Driveable fef by lonewolfie",
			Model = "models/lonewolfie/bmw_m5e39.mdl",
					
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/LWCars/bmw_m5e39.txt"
							}
			}
list.Set("Vehicles", "bmw_m5e39_lw", V)

if SERVER then include("lwcars_partmover.lua")

	LWCPartHook( 0.005, "sunroof", "bmw_m5e39", IN_SPEED, string.lower(V.Model) ) --0.005
	
end

--Chiaretto Red, 80 17 17, Skin0
--Dakar Yellow, 255, 212, 0, Skin0
--Estroil Blue, 0 67 145, Skin0
--Bluewater, 99 136 166, Skin2