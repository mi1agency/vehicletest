--font list
if CLIENT then 

surface.CreateFont( "CenturySpeedoFont", { --UNIQUE font name
	font = "Digital-7 MonoItalic",
	size = 200,  
	weight = 120,
	scanlines = 1,
	antialias = true,

} )

surface.CreateFont( "CenturyBosoSpeedoFont", { --UNIQUE font name
	font = "Digital-7 MonoItalic",
	size = 200,  
	weight = 120,
	scanlines = 1,
	antialias = true,

} )


end

if SERVER then 
return 
end 

local speed = 0
hook.Add( "PostDrawOpaqueRenderables", "ctvdigitalspeedo", function() --change hook name
    local Vehicle = LocalPlayer():GetVehicle()
    if IsValid( Vehicle ) and Vehicle:GetClass() == "prop_vehicle_jeep" then
		if Vehicle:GetModel() == "models/ctvehicles/toyota/century_vg50.mdl" then --model path
			local speed = math.Round(Vehicle:GetVelocity():Length() / (39600/3600),0)
			cam.Start3D2D(Vehicle:LocalToWorld(Vector(19.5,33,41.68)),Vehicle:LocalToWorldAngles(Angle(0,0,75)),0.0095)
				surface.SetDrawColor(0,255,0)
				draw.SimpleText( speed , "CenturySpeedoFont", -50, -10, Color(200,200,200), TEXT_ALIGN_CENTER, 0)
			cam.End3D2D()
		end
    end
   if IsValid( Vehicle ) and Vehicle:GetClass() == "prop_vehicle_jeep" then
		if Vehicle:GetModel() == "models/ctvehicles/toyota/century_vg50_bosozoku.mdl" then --model path
			local speed = math.Round(Vehicle:GetVelocity():Length() / (39600/3600),0)
			cam.Start3D2D(Vehicle:LocalToWorld(Vector(19.5,33,41.68)),Vehicle:LocalToWorldAngles(Angle(0,0,75)),0.0095)
				surface.SetDrawColor(0,255,0)
				draw.SimpleText( speed , "CenturySpeedoFont", -50, -10, Color(200,200,200), TEXT_ALIGN_CENTER, 0)
			cam.End3D2D()
		end
    end
end )