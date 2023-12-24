if CLIENT then 

surface.CreateFont( "q8SpeedFont", {
	font = "Tahoma",
	size = 100,
	weight = 600,
	scanlines = 1,
	antialias = true,

} )

end

if SERVER then 
return 
end 
local lastRan = CurTime()
local speed = 0
hook.Add( "PostDrawOpaqueRenderables", "q8digitalspeed", function()
    local Vehicle = LocalPlayer():GetVehicle()
    if IsValid( Vehicle ) and Vehicle:GetClass() == "prop_vehicle_jeep" then
		if Vehicle:GetModel() == "models/ctvehicles/audi/q8.mdl" then
			            if CurTime() - .5 > lastRan then
                speed = math.Round( Vehicle:GetVelocity():Length() / (63360/3600), 0 )
                lastRan = CurTime()
			end
			cam.Start3D2D(Vehicle:LocalToWorld(Vector(-15.34,27.13,58.31)),Vehicle:LocalToWorldAngles(Angle(0,0,80)),0.0095) 
				surface.SetDrawColor(0,255,0)
				draw.SimpleText( speed , "q8SpeedFont", -6, -94, Color(233,233,233), TEXT_ALIGN_CENTER, 0)
			cam.End3D2D()
		end
    end
end )