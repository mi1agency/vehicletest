if CLIENT then 

surface.CreateFont( "c8", {
	font = "Arial",
	size = 100,
	weight = 500,
	scanlines = 1,
	antialias = true,

} )

end

if SERVER then 
return 
end 

local speed = 0
hook.Add( "PostDrawOpaqueRenderables", "CorvetteC8Speedo", function()
    local Vehicle = LocalPlayer():GetVehicle()
    if IsValid( Vehicle ) and Vehicle:GetClass() == "prop_vehicle_jeep" then
		if Vehicle:GetModel() == "models/ctvehicles/chevrolet/corvette_c8.mdl" then
			local speed = math.Round(Vehicle:GetVelocity():Length() / (17.6),0)
			cam.Start3D2D(Vehicle:LocalToWorld(Vector(-16.08,34.4,39.1)),Vehicle:LocalToWorldAngles(Angle(0,0,82)),0.0095) 
				surface.SetDrawColor(0,255,0)
				draw.SimpleText( speed , "c8", -6, -94, Color(233,233,233), TEXT_ALIGN_CENTER, 0)
			cam.End3D2D()
		end
    end
end )