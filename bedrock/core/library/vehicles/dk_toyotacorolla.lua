local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"
local Cat2 = "Trafik Polisleri"

local V = {
	-- Required information
	Name = "Toyota Corolla 2017",
	Model = "models/dk_cars/moongaming/toyotacorolla.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy & Just.",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_toyotacorolla.txt"
	}
}
list.Set( "Vehicles", "dk_toyotacorolla", V )

local V = {
	-- Required information
	Name = "Toyota Corolla 2017 Trafik Polisi",
	Model = "models/dk_cars/moongaming/toyotacorolla.mdl",
	Class = PrVeh,
	Category = Cat2,

	-- Optional information
	Author = "DangerKiddy & Just.",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_toyotacorolla.txt"
	}
}
list.Set( "Vehicles", "dk_toyotacorolla2", V )

local V = {
	-- Required information
	Name = "Toyota Corolla 2017 Otoyol Trafik Polisi",
	Model = "models/dk_cars/moongaming/toyotacorolla.mdl",
	Class = PrVeh,
	Category = Cat2,

	-- Optional information
	Author = "DangerKiddy & Just.",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_toyotacorolla.txt"
	}
}
list.Set( "Vehicles", "dk_toyotacorolla3", V )

if CLIENT then return end
hook.Add("OnEntityCreated", "ohshitherewego_again", function(ent)
	timer.Simple(.2, function()
		if not IsValid(ent) then return end
		if ent:GetModel() != "models/dk_cars/moongaming/toyotacorolla.mdl" then return end
		if not ent:IsVehicle() then return end
		
	end)
end)


hook.Add("PlayerSpawnedVehicle", "trafikpolisskin", function(_, ent) if ent:GetVehicleClass() == "dk_toyotacorolla2" then 
ent:SetSkin(1)
ent:SetBodygroup(5,1)
end 
end)

hook.Add("PlayerSpawnedVehicle", "otoyoltrafikpolisskin", function(_, ent) if ent:GetVehicleClass() == "dk_toyotacorolla3" then 
ent:SetSkin(2)
ent:SetBodygroup(5,1)
end 
end)
