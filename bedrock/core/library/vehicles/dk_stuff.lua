hook.Add("OnEntityCreated","DK_CarFix",function(ent)
	timer.Simple(.1, function()
		if not IsValid(ent) then return end
		if not ent:IsVehicle() then return end
		if not ent:GetModel():find("/dk_") then return end
		local phy = ent:GetPhysicsObject()
		if not IsValid(phy) then return end
		phy:SetMaterial("metalvehicle")
	end)
end)