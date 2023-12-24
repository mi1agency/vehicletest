local V = {
	-- Required information
	Name = "McLaren Speedtail",
	Model = "models/ctvehicles/mclaren/speedtail.mdl",
	Class = "prop_vehicle_jeep",
	Category = "CTVehicles",

	-- Optional information
	Author = "CTV",
	Information = "doors",

	KeyValues = {
		vehiclescript = "scripts/vehicles/ctvehicles/ctv_mclaren_speedtail.txt"
	}


}

list.Set( "Vehicles", "ctv_mclaren_speedtail", V )

 if SERVER then
  hook.Add("Think", "speedtail_stuff", function()
   for _, ent in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
   if ent:GetModel() == "models/ctvehicles/mclaren/speedtail.mdl" then

   				ent:SetSubMaterial(24, "models/ctvehicles/shared/vmt/black")
				ent:SetSubMaterial(28, "models/ctvehicles/mclaren/speedtail/symbols")
   if IsValid(ent:GetDriver()) then

   				ent:SetSubMaterial(24, "models/ctvehicles/mclaren/speedtail/digital_screens")
				ent:SetSubMaterial(28, "models/ctvehicles/mclaren/speedtail/symbols_on")
   end
  end
 end
end)
end