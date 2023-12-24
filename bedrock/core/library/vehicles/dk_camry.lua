local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Toyota Camry",
	Model = "models/dk_cars/garrysburg/toyota/camry.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_toy_camry.txt"
	}
}
list.Set( "Vehicles", "dk_toy_camry", V )

local V = {
	-- Required information
	Name = "Toyota Camry Police",
	Model = "models/dk_cars/garrysburg/toyota/camry.mdl",
	Class = PrVeh,
	Category = "Garrysburg Emergency Cars",

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_toy_camry.txt"
	}
}
list.Set( "Vehicles", "dk_toy_polcamry", V )

local V = {
	-- Required information
	Name = "Toyota Camry Black Edition",
	Model = "models/dk_cars/garrysburg/toyota/blckcamry.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_toy_camry.txt"
	}
}
list.Set( "Vehicles", "dk_toy_blackcamry", V )

if CLIENT then return end
hook.Add("OnEntityCreated", "SetUpBGCamry", function(ent)
	timer.Simple(.2, function()
		if not IsValid(ent) then return end
		if ent:GetModel() != "models/dk_cars/garrysburg/toyota/camry.mdl" then return end
		if not ent:IsVehicle() then return end
		if ent.IsSimfphys then return end
		if ent:GetVehicleClass() == "dk_toy_camry" then
			ent:SetBodygroup(3,1)
			ent:SetSkin(1)
		else
			ent:SetBodygroup(3,0)
			ent:SetSkin(0)
		end
	end)
end)