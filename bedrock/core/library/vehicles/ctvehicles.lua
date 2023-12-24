if CLIENT then 

surface.CreateFont( "SupraSpeedFont", {
	font = "Trebuchet24",
	size = 60,
	weight = 600,
	scanlines = 1,
	antialias = true,

} )

surface.CreateFont( "SupraSpeedFont2", {
	font = "Arial",
	size = 20,
	weight = 600,
	scanlines = 1,
	antialias = true,

} )

end

if SERVER then 
return 
end 

local speed = 0
hook.Add( "PostDrawOpaqueRenderables", "CTVehiclesDigitalSpeedo", function()
    local Vehicle = LocalPlayer():GetVehicle()
    if IsValid( Vehicle ) and Vehicle:GetClass() == "prop_vehicle_jeep" then
		if Vehicle:GetModel() == "models/ctvehicles/toyota/gr_supra.mdl" then
			local speed = math.Round(Vehicle:GetVelocity():Length() / (11),0)
			cam.Start3D2D(Vehicle:LocalToWorld(Vector(15.52,6.1,42.99)),Vehicle:LocalToWorldAngles(Angle(0,0,75)),0.0095) 
				surface.SetDrawColor(0,255,0)
				draw.SimpleText( speed , "SupraSpeedFont", 0, 0, Color(200,200,200), TEXT_ALIGN_CENTER, 0)
				if speed > 99 then
				draw.SimpleText( "km/h" , "SupraSpeedFont2", 60, 35, Color(200,200,200), TEXT_ALIGN_CENTER, 0)
				else
				draw.SimpleText( "km/h" , "SupraSpeedFont2", 50, 35, Color(200,200,200), TEXT_ALIGN_CENTER, 0)
				end
			cam.End3D2D()
		end
    end
end )