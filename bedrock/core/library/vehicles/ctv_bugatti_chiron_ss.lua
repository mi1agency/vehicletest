local V = {
	-- Required information
	Name = "Bugatti Chiron SS",
	Model = "models/ctvehicles/bugatti/chiron_ss.mdl",
	Class = "prop_vehicle_jeep",
	Category = "CTVehicles",

	-- Optional information
	Author = "CTV",
	Information = "not an official record",

	KeyValues = {
		vehiclescript = "scripts/vehicles/ctvehicles/ctv_bugatti_chiron_ss.txt"
	}


}

list.Set( "Vehicles", "ctv_bugatti_chiron_ss", V )

 if SERVER then
  hook.Add("Think", "chironss_stuff", function()
   for _, ent in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
   if ent:GetModel() == "models/ctvehicles/bugatti/chiron_ss.mdl" then

   				ent:SetSubMaterial(20, "models/ctvehicles/bugatti/chiron_ss/matte_plastic_dark")
				ent:SetSubMaterial(21, "models/ctvehicles/bugatti/chiron_ss/matte_plastic_dark")
   if IsValid(ent:GetDriver()) then

   				ent:SetSubMaterial(20, "models/ctvehicles/bugatti/chiron_ss/left_display")
				ent:SetSubMaterial(21, "models/ctvehicles/bugatti/chiron_ss/right_display")
   end
  end
 end
end)
end