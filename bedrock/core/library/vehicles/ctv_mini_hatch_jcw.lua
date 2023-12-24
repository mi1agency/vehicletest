local V = {
	-- Required information
	Name = "MINI JCW Convertible",
	Model = "models/ctvehicles/mini/hatch_jcw_convertible.mdl",
	Class = "prop_vehicle_jeep",
	Category = "CTVehicles",

	-- Optional information
	Author = "CTV",
	Information = "SMTK",

	KeyValues = {
		vehiclescript = "scripts/vehicles/ctvehicles/ctv_mini_hatch_jcw_convertible.txt"
	}
}
list.Set( "Vehicles", "ctv_mini_hatch_jcw_convertible", V )

 if SERVER then
  hook.Add("Think", "jcw_mini_convertible_stuff", function()
   for _, ent in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
   if ent:GetModel() == "models/ctvehicles/mini/hatch_jcw_convertible.mdl" then

   				ent:SetSubMaterial(19, "models/ctvehicles/shared/vmt/black")
   if IsValid(ent:GetDriver()) then

   				ent:SetSubMaterial(19, "models/ctvehicles/mini/hatch_jcw_convertible/hud")
   end
  end
 end
end)
end