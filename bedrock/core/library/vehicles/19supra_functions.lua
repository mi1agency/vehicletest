function supraFunc(ent)	
	if SERVER then
	local driver = ent:GetDriver()
	if driver:IsValid() then
		if ent:GetPoseParameter("vehicle_on") == 0 then
		ent:SetPoseParameter("vehicle_on",1.0)
		end
		else
		if ent:GetPoseParameter("vehicle_on") != 0 then
		ent:SetPoseParameter("vehicle_on",0.0)
		end
	end
	end
end
hook.Add("Think", "SGM_Supra_Functions", function()
	for k,ent in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
		local mdl = ent:GetModel()
--		print(ent:GetModel())
			if mdl == "models/sentry/19supra.mdl" then 
			supraFunc(ent) 
			end
	end
end)