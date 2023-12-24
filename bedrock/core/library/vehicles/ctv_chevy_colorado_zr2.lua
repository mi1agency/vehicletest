local V = {
	-- Required information
	Name = "Chevrolet Colorado ZR2",
	Model = "models/ctvehicles/chevrolet/colorado_zr2.mdl",
	Class = "prop_vehicle_jeep",
	Category = "CTVehicles",

	-- Optional information
	Author = "CTV",
	Information = "ran out of ideas",

	KeyValues = {
		vehiclescript = "scripts/vehicles/ctvehicles/ctv_colorado_zr2.txt"
	}
}
list.Set( "Vehicles", "ctv_colorado_zr2", V )

 if SERVER then
  hook.Add("Think", "zr2_stuff", function()
   for _, ent in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
   if ent:GetModel() == "models/ctvehicles/chevrolet/colorado_zr2.mdl" then

   				ent:SetSubMaterial(15, "models/ctvehicles/shared/vmt/black")
   if IsValid(ent:GetDriver()) then

   				ent:SetSubMaterial(15, "models/ctvehicles/chevrolet/colorado_zr2/digital_screen_on")
   end
  end
 end
end)
end