local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Aston Martin Valhalla",
	Model = "models/dk_cars/aston_martin/valhalla.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_valhalla.txt"
	}
}
list.Set( "Vehicles", "dk_valhalla", V )


if CLIENT then
    local gears = {
        {40, 6},
        {100, 3},
        {200, 1.4},
        {280, 1},
        {330, 1}
    }
	hook.Add("PostDrawTranslucentRenderables", "example", function()
		for k, ent in pairs(ents.FindByModel("models/dk_cars/aston_martin/valhalla.mdl")) do
			if ent:GetClass() == "prop_vehicle_jeep" then
            	local vel = ent:GetVelocity():Length()
				local kmh = math.Round(vel*.09, 0)

				-- Determine gear
	            ent.RPM = ent.RPM or 1000
	            ent.Gear = ent.Gear or 1
	            if not gears[ent.Gear] then ent.Gear = 1 continue end
	            local speed, ratio = gears[ent.Gear][1], gears[ent.Gear][2]
	            if not speed then ent.Gear = 1 continue end
	            if kmh > speed then
	                ent.Gear = ent.Gear + 1
	                ent.RPM = 1000
	            elseif ent.Gear > 1 and gears[ent.Gear-1][1] > kmh then
	                ent.Gear = ent.Gear - 1
	                ent.RPM = 1000
	            end
	            if kmh == 0 then ent.RPM = 1000 end
	            ent.RPM = (vel*2)*ratio

	            local rpm = (ent.RPM/7000)*270

	            ent.LERPRPM = !ent.LERPRPM and 0 or Lerp(.1, ent.LERPRPM, rpm)
				cam.Start3D2D( ent:LocalToWorld(Vector(-22,21,51)), ent:LocalToWorldAngles(Angle(0, 0, 90)), .03 )
					draw.SimpleText(kmh, "DermaLarge", 165, 65, color_white, 1, 1)
					//ent.LERPRPM
					local remap = math.Remap(ent.RPM, 0, 7000, 0, 255)
					draw.RoundedBox(0, 40, 15, 270, 28, Color(0,0,0,150))
					draw.RoundedBox(0, 40, 15, math.Clamp(ent.LERPRPM, 0, 270), 28, Color(255, 255-remap, 255-remap))

					local Timestamp = os.time()
					local TimeString = os.date( "%H:%M" , Timestamp )
					draw.SimpleText(TimeString, "DermaLarge", 170, 0, color_white, 1, 1)
				cam.End3D2D()
			end
		end
	end )
end