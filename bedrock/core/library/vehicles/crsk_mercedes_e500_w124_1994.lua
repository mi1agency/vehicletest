local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Mercedes-Benz E 500 (W124) '94",
	Model = "models/crsk_autos/mercedes-benz/e500_w124_1994.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_mercedes_e500_w124_1994.txt"
	}
}
list.Set( "Vehicles", "crsk_mercedes_e500_w124_1994", V )