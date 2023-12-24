local V = {
	-- Required information
	Name = "Rolls-Royce Cullinan",
	Model = "models/ctvehicles/rolls_royce/cullinan.mdl",
	Class = "prop_vehicle_jeep",
	Category = "CTVehicles",

	-- Optional information
	Author = "CTV",
	Information = "bmw",

	KeyValues = {
		vehiclescript = "scripts/vehicles/ctvehicles/ctv_rr_cullinan.txt"

	}
}
list.Set( "Vehicles", "ctv_rr_cullinan", V )

if SERVER then
	hook.Add("Think", "cullinanpowerreserve", function()
		for _, ent in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
			if ent:GetModel() == "models/ctvehicles/rolls_royce/cullinan.mdl" then
							ent:SetSubMaterial(23, "models/ctvehicles/shared/vmt/black_void")
							ent:SetSubMaterial(28, "models/ctvehicles/shared/vmt/black_void")
				local Rsv = 0
					if IsValid(ent:GetDriver()) then
									ent:SetSubMaterial(23, "models/ctvehicles/rolls_royce/cullinan/illuminated_screens")
							ent:SetSubMaterial(28, "models/ctvehicles/shared/vmt/whiteillum_on")
						if ent:GetDriver():KeyDown(IN_FORWARD) and ent:GetVelocity():Length() > 2
                                                or ent:GetDriver():KeyDown(IN_BACK) and ent:GetVelocity():Length() < 0 then Rsv = 1 end
					end
				ent.reserve = Lerp(0.03, ent.reserve or 0, Rsv)
				ent:SetPoseParameter("reserve", ent.reserve)
			end
		end
	end)
end