local V = {
			Name = "BMW i8", 
			Class = "prop_vehicle_jeep",
			Category = "LW Cars",
			Author = "lonewolfie",
			Information = "Driveable fef by lonewolfie",
			Model = "models/lonewolfie/bmw_i8.mdl",
					
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/lwcars/bmw_i8.txt"
							}
			}
list.Set("Vehicles", "bmw_i8_lw", V)

if SERVER then include("lwcars_partmover.lua")

	LWCPartHook( 0.008, "bonnet_anim", "bmw_i8", IN_SPEED, string.lower(V.Model) ) --0.02
	LWCPartHook( 0.008, "hatch_anim", "bmw_i8", IN_WALK, string.lower(V.Model) ) --0.005
	
end

-- Crystal White, 255 255 255, skin2
-- Ionic Silver, 111 111 111, skin2
-- Sophisto Grey, 24 24 24, skin0
-- Protinic Blue, 0 113 206, skin0
-- Protinic Red, 187 10 10, skin0