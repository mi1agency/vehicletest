if CLIENT then 

surface.CreateFont( "coloradoSpeedFont", {
	font = "Arial",
	size = 80,
	weight = 590,
	scanlines = 1,
	antialias = true,

} )

end

if SERVER then 
return 
end 
local lastRan = CurTime()
local speed = 0
hook.Add( "PostDrawOpaqueRenderables", "coloradodigitalspeed", function()
    local Vehicle = LocalPlayer():GetVehicle()
    if IsValid( Vehicle ) and Vehicle:GetClass() == "prop_vehicle_jeep" then
		if Vehicle:GetModel() == "models/ctvehicles/chevrolet/colorado_zr2.mdl" then
			            if CurTime() - .3 > lastRan then
                speed = math.Round( Vehicle:GetVelocity():Length() / (63360/3600), 0 )
                lastRan = CurTime()
			end
			cam.Start3D2D(Vehicle:LocalToWorld(Vector(-18.44,51.03,58.6455)),Vehicle:LocalToWorldAngles(Angle(0,0,59)),0.0095) 
				surface.SetDrawColor(0,255,0)
				draw.SimpleText( speed , "coloradoSpeedFont", -6, -94, Color(233,233,233), TEXT_ALIGN_CENTER, 0)
			cam.End3D2D()
		end
    end
end )