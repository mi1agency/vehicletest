local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Lotus Evija",
	Model = "models/dk_cars/lotus/evija.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_evija.txt"
	}
}
list.Set( "Vehicles", "dk_evija", V )

if CLIENT then
    local gears = {
        {40, 6},
        {100, 3},
        {140, 1.25}
    }
	hook.Add("PostDrawTranslucentRenderables", "example", function()
		for k, ent in pairs(ents.FindByModel("models/dk_cars/lotus/evija.mdl")) do
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

	            local rpm = (ent.RPM/7000)*170

	            ent.LERPRPM = !ent.LERPRPM and 0 or Lerp(.1, ent.LERPRPM, rpm)
				cam.Start3D2D( ent:LocalToWorld(Vector(-20,38,53.5)), ent:LocalToWorldAngles(Angle(0, 0, 90)), .03 )
					draw.SimpleText(kmh, "DermaLarge", 0, 0, color_white, 1, 1)

					draw.SimpleText("D", "DermaLarge", 40, 0, Color(254, 139, 39), 1, 1)
					draw.RoundedBox(0, 90, -10, math.Clamp(ent.LERPRPM, 0, 170), 28, Color(254, 139, 39))

					local Timestamp = os.time()
					local TimeString = os.date( "%H:%M" , Timestamp )
					draw.SimpleText(TimeString, "DermaLarge", 170, -90, color_white, 1, 1)
				cam.End3D2D()
				cam.Start3D2D( ent:LocalToWorld(Vector(-20,38,53.5)), ent:LocalToWorldAngles(Angle(0, 0, 90)), .015 )
					draw.SimpleText("KMPH", "DermaLarge", 0, -50, color_white, 1, 1)
				cam.End3D2D()
			end
		end
	end )
end