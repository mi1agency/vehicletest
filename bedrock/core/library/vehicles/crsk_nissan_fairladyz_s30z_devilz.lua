local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Nissan Fairlady Z S30Z 'Devil Z'",
	Model = "models/crsk_autos/nissan/fairladyz_s30z_devilz.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "zetto",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_nissan_fairladyz_s30z_devilz.txt"
	}
}
list.Set( "Vehicles", "crsk_nissan_fairladyz_s30z_devilz", V )