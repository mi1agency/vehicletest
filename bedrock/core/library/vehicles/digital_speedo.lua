if CLIENT then 

surface.CreateFont( "RimacSpeedFont", {
	font = "Trebuchet24",
	size = 167,
	weight = 600,
	scanlines = 1,
	antialias = true,

} )

end

if SERVER then 
return 
end 

local speed = 0
hook.Add( "PostDrawOpaqueRenderables", "RimacDigitalSpeedo", function()
    local Vehicle = LocalPlayer():GetVehicle()
    if IsValid( Vehicle ) and Vehicle:GetClass() == "prop_vehicle_jeep" then
		if Vehicle:GetModel() == "models/ctvehicles/rimac/concept_two.mdl" then
			local speed = math.Round(Vehicle:GetVelocity():Length() / (11),0)
			cam.Start3D2D(Vehicle:LocalToWorld(Vector(-18.7,30.2,41.6)),Vehicle:LocalToWorldAngles(Angle(0,0,85)),0.0095) 
				surface.SetDrawColor(0,255,0)
				draw.SimpleText( speed , "RimacSpeedFont", -6, -94, Color(233,233,233), TEXT_ALIGN_CENTER, 0)
			cam.End3D2D()
		end
    end
end )