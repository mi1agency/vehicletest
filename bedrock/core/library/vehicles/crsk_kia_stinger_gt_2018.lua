local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Kia Stinger GT 2018",
	Model = "models/crsk_autos/kia/stinger_gt_2018.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_kia_stinger_gt_2018.txt"
	}
}
list.Set( "Vehicles", "crsk_kia_stinger_gt_2018", V )
