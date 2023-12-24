local V = {
	-- Required information
	Name = "Pontiac Bonneville Coupe",
	Model = "models/ctvehicles/pontiac/1958_bonneville_coupe.mdl",
	Class = "prop_vehicle_jeep",
	Category = "CTVehicles",

	-- Optional information
	Author = "CTV",
	Information = "Made for HurricaneRocker.",

	KeyValues = {
		vehiclescript = "scripts/vehicles/ctvehicles/ctv_1958_pontiac_bonneville.txt"
	}
}
list.Set( "Vehicles", "ctv_1958_pontiac_bonneville_coupe", V )

local V = {
	-- Required information
	Name = "Pontiac Bonneville Convertible",
	Model = "models/ctvehicles/pontiac/1958_bonneville_convertible.mdl",
	Class = "prop_vehicle_jeep",
	Category = "CTVehicles",

	-- Optional information
	Author = "CTV",
	Information = "Made for HurricaneRocker.",

	KeyValues = {
		vehiclescript = "scripts/vehicles/ctvehicles/ctv_1958_pontiac_bonneville.txt"
	}
}
list.Set( "Vehicles", "ctv_1958_pontiac_bonneville_convertible", V )

local function DoTime(ent)

	if StormFox and GetConVarNumber("ctv_usestormfoxtime") == 1 then
		cur_time = math.Round(StormFox.GetTime() / 1440 * 86400)
	else
		cur_time = ((tonumber(os.date("%H"),10)*3600 + tonumber(os.date("%M"),10)*60 + tonumber(os.date("%S"),10)) % 86400)
	end 
	
	if cur_time/120 < (ent.hour or 0) then 
		ent.hour = cur_time/120
	else
		ent.hour = Lerp(0.6, ent.hour or 0, (cur_time/120) or 0)
	end
	if (cur_time%3600)/10 < (ent.minute or 0) then 
		ent.minute = (((cur_time%3600)/10) or 0)
	else
		ent.minute = Lerp(0.6, ent.minute or 0, ((cur_time%3600)/10) or 0)
	end
	if (cur_time%60)*6 < (ent.second or 0) then 
		ent.second = ((cur_time%60)*6 or 0)
	else
		ent.second = Lerp(0.6, ent.second or 0, (cur_time%60)*6 or 0)
	end

	ent:ManipulateBoneAngles(ent:LookupBone("hour"), Angle(0, 0, -ent.hour))
	ent:ManipulateBoneAngles(ent:LookupBone("minute"), Angle(0, 0, -ent.minute))
	ent:ManipulateBoneAngles(ent:LookupBone("second"), Angle(0, 0, -ent.second))
end

hook.Add( "Think", "CTV_PONTIAC_BONNEVILLE_CLOCK",
	function()
		for k,v in pairs(ents.FindByModel("models/ctvehicles/pontiac/1958_bonneville_convertible.mdl")) do
			if IsValid(v) then
				DoTime(v)
			end
		end
		for k,v in pairs(ents.FindByModel("models/ctvehicles/pontiac/1958_bonneville_coupe.mdl")) do
			if IsValid(v) then
				DoTime(v)
			end
		end
	end
)