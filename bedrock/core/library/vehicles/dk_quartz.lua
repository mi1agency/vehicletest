local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Quartz Regalia",
	Model = "models/dk_cars/quartz/regalia.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_quartz.txt"
	}
}
list.Set( "Vehicles", "dk_quartz", V )