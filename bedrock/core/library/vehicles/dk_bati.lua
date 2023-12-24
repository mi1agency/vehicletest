local PrVeh = "prop_vehicle_jeep"
local Cat = "GPX Bikes"


local V = {
	-- Required information
	Name = "Bati",
	Model = "models/dk_cars/bati/golden_phoenix/my_first_bike__heh.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_bati.txt"
	}
}
list.Set( "Vehicles", "dk_bati", V )

if SERVER then
    hook.Add("PlayerSpawnedVehicle","dk_bati_AddProps", function( ply, vehicle )
        if vehicle:GetModel() == "models/dk_cars/bati/golden_phoenix/my_first_bike__heh.mdl" then
            vehicle:SetSubMaterial(13,"dk_cars/shared/invis")
            vehicle:ManipulateBonePosition(vehicle:LookupBone("view_bone"),Vector(-4,10,5))
            vehicle:ManipulateBoneAngles(vehicle:LookupBone("view_bone"),Angle(45,0,0))
        end
    end)
    hook.Add("Think","dk_bati_Sync",function()
        for k, v in pairs(ents.FindByClass("prop_vehicle_jeep")) do
            if v:GetModel() == "models/dk_cars/bati/golden_phoenix/my_first_bike__heh.mdl" then
                v:SetPoseParameter("vehicle_wheel_f_height",(v:GetPoseParameter("vehicle_wheel_fl_height")/2)+(v:GetPoseParameter("vehicle_wheel_fr_height")/2))
                v:SetPoseParameter("vehicle_wheel_r_height",(v:GetPoseParameter("vehicle_wheel_rl_height")/2)+(v:GetPoseParameter("vehicle_wheel_rr_height")/2))
                v:SetPoseParameter("vehicle_wheel_f_spin",v:GetPoseParameter("vehicle_wheel_fl_spin")+v:GetPoseParameter("vehicle_wheel_fr_spin"))
                v:SetPoseParameter("vehicle_wheel_r_spin",v:GetPoseParameter("vehicle_wheel_rl_spin")+v:GetPoseParameter("vehicle_wheel_rr_spin"))
            end
        end
    end)
end