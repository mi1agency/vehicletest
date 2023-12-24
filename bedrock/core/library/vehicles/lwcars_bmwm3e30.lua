local V = {
			Name = "BMW M3 E30 Sport Evolution", 
			Class = "prop_vehicle_jeep",
			Category = "LW Cars",
			Author = "lonewolfie",
			Information = "Driveable fef by lonewolfie",
			Model = "models/lonewolfie/bmw_m3_e30.mdl",
					
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/LWCars/bmw_m3_e30.txt"
							}
			}
list.Set("Vehicles", "bmw_m3_e30_lw", V)

-- Crystal White, 255 255 255, skin2
-- Misano Red, 153 16 14, skin0

if SERVER then include("lwcars_partmover.lua")

	LWCPartHook( 0.015, "boot_anim", "bmw_m3_e30", IN_SPEED, string.lower(V.Model) ) --0.02

        i = 0
        hook.Add("KeyPress", "e30accellw", function(ply, key)
                        if ply:InVehicle() then
                                car = ply:GetVehicle()
                if car:GetModel() == "models/lonewolfie/bmw_m3_e30.mdl" then
                    if key == IN_FORWARD then                
                        car:SetPoseParameter("pedal_accel", 1)
                    end
                end
            end
        end)
                hook.Add("KeyRelease", "e30accellwrelease", function(ply, key)
            if ply:InVehicle() then
                                car = ply:GetVehicle()
                if car:GetModel() == "models/lonewolfie/bmw_m3_e30.mdl" then
                    if key == IN_FORWARD then                
                        car:SetPoseParameter("pedal_accel", 0)
                    end
                end
            end
        end)			
		
		
        hook.Add("KeyPress", "e30brakelw2", function(ply, key)
                        if ply:InVehicle() then
                                car = ply:GetVehicle()
                if car:GetModel() == "models/lonewolfie/bmw_m3_e30.mdl" then
                    if key == IN_BACK then                
                        car:SetPoseParameter("pedal_brake", 1)
                    end
                end
            end
        end)
                hook.Add("KeyRelease", "e30brakelwrelease2", function(ply, key)
            if ply:InVehicle() then
                                car = ply:GetVehicle()
                if car:GetModel() == "models/lonewolfie/bmw_m3_e30.mdl" then
                    if key == IN_BACK then                
                        car:SetPoseParameter("pedal_brake", 0)
                    end
                end
            end
        end)	

        hook.Add("KeyPress", "e30handbrake2", function(ply, key)
                        if ply:InVehicle() then
                                car = ply:GetVehicle()
                if car:GetModel() == "models/lonewolfie/bmw_m3_e30.mdl" then
                    if key == IN_JUMP then                
                        car:SetPoseParameter("handbrake", 1)
                    end
                end
            end
        end)
                hook.Add("KeyRelease", "e30handbrakerelease2", function(ply, key)
            if ply:InVehicle() then
                                car = ply:GetVehicle()
                if car:GetModel() == "models/lonewolfie/bmw_m3_e30.mdl" then
                    if key == IN_JUMP then                
                        car:SetPoseParameter("handbrake", 0)
                    end
                end
            end
        end)

	hook.Add("KeyPress", "e30wiperslw2", function(ply, key)
		if ply:InVehicle() then
			car = ply:GetVehicle()
			if car:GetModel() == "models/lonewolfie/bmw_m3_e30.mdl" then
					if key == IN_ZOOM then
						if toggle == 1 then toggle = 0
							timer.Create( "wipers", 0.004, 0, function()
								i = i + 1
								if i == 180 then i = 0 end
								car:SetPoseParameter("wipers", 1 - math.sin(math.rad(i)))
							end)
						else toggle = 1 
							car:SetPoseParameter("wipers", 0)
							timer.Destroy("wipers")
						end
					end		
				end
			end
		end)
end