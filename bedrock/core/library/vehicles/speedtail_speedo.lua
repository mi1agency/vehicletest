if CLIENT then 

surface.CreateFont( "SpeedtailSpeedFont", {
	font = "Venus Rising Rg",
	size = 155,
	weight = 100,
	scanlines = 1,
	antialias = true,

} )

end

if SERVER then 
return 
end 

local speed = 0
hook.Add( "PostDrawOpaqueRenderables", "SpeedtailDigitalSpeedo", function()
    local Vehicle = LocalPlayer():GetVehicle()
    if IsValid( Vehicle ) and Vehicle:GetClass() == "prop_vehicle_jeep" then
		if Vehicle:GetModel() == "models/ctvehicles/mclaren/speedtail.mdl" then
			local speed = math.Round(Vehicle:GetVelocity():Length() / (17.6),0)
			cam.Start3D2D(Vehicle:LocalToWorld(Vector(0.2,42.1,41.9)),Vehicle:LocalToWorldAngles(Angle(0,0,101)),0.0095) 
				surface.SetDrawColor(0,255,0)
				draw.SimpleText( speed , "SpeedtailSpeedFont", -6, -94, Color(233,233,233), TEXT_ALIGN_CENTER, 0)
			cam.End3D2D()
		end
    end
end )