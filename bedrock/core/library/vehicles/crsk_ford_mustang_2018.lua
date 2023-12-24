local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Ford Mustang GT '18",
	Model = "models/crsk_autos/ford/mustang_gt_2018.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_ford_mustang_gt_2018.txt"
	}
}
list.Set( "Vehicles", "crsk_ford_mustang_gt_2018", V )

local V = {
	-- Required information
	Name = "Ford Mustang RTR '18",
	Model = "models/crsk_autos/ford/mustang_rtr_2018.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_ford_mustang_rtr_2018.txt"
	}
}
list.Set( "Vehicles", "crsk_ford_mustang_rtr_2018", V )