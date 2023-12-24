local V = {
			Name = "Ferrari F40", 
			Class = "prop_vehicle_jeep",
			Category = "LW Cars",
			Author = "LoneWolfie",
			Information = "Driveable Ferrari F40 by LoneWolfie",
			Model = "models/LoneWolfie/ferrari_f40.mdl",
			
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/LWCars/ferrari_f40.txt"
							}
			}
list.Set("Vehicles", "ferrari_f40_lw", V)

if SERVER then include("lwcars_partmover.lua")

	LWCPartHook( 0.01, "headlights", "ferrari_f40", IN_SPEED, string.lower(V.Model) )
	
        hook.Add("KeyPress", "footbrake_appl_f40_lw", function(ply, key)
                        if ply:InVehicle() then
                                car = ply:GetVehicle()
                if car:GetModel() == "models/lonewolfie/ferrari_f40.mdl" then
                    if key == IN_BACK then                
                        car:SetPoseParameter("footbrake", 1)
                    end
                end
            end
        end)
                hook.Add("KeyRelease", "footbrake_rel_f40_lw", function(ply, key)
            if ply:InVehicle() then
                                car = ply:GetVehicle()
                if car:GetModel() == "models/lonewolfie/ferrari_f40.mdl" then
                    if key == IN_BACK then                
                        car:SetPoseParameter("footbrake", 0)
                    end
                end
            end
        end)	

        hook.Add("KeyPress", "handbrake_app_f40_lw", function(ply, key)
                        if ply:InVehicle() then
                                car = ply:GetVehicle()
                if car:GetModel() == "models/lonewolfie/ferrari_f40.mdl" then
                    if key == IN_JUMP then                
                        car:SetPoseParameter("handbrake", 1)
                    end
                end
            end
        end)
                hook.Add("KeyRelease", "handbrake_rel_f40_lw", function(ply, key)
            if ply:InVehicle() then
                                car = ply:GetVehicle()
                if car:GetModel() == "models/lonewolfie/ferrari_f40.mdl" then
                    if key == IN_JUMP then                
                        car:SetPoseParameter("handbrake", 0)
                    end
                end
            end
        end)
end