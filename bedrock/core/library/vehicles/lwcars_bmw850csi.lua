local V = {
			Name = "BMW 850CSi", 
			Class = "prop_vehicle_jeep",
			Category = "LW Cars",
			Author = "lonewolfie",
			Information = "Driveable fef by lonewolfie",
			Model = "models/lonewolfie/bmw_850csi.mdl",
					
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/lwcars/bmw_850csi.txt"
							}
			}
list.Set("Vehicles", "bmw_850csi_lw", V)

if SERVER then include("lwcars_partmover.lua")

	LWCPartHook( 0.02, "pop_ups", "bmw_850csi", IN_SPEED, string.lower(V.Model) ) --0.02
	LWCPartHook( 0.005, "sunroof", "bmw_850csi", IN_WALK, string.lower(V.Model) ) --0.005
	
end

-- Imola Red, 255 0 0, skin1
-- Polo Green Metallic, 9 21 22, skin0
-- Avus Blue Metallic, 5 12 46, skin0
-- Diamantschwarz Metallic, 12 12 12, skin0
-- Sterlingsilber Metallic, 109 117 117, skin2
