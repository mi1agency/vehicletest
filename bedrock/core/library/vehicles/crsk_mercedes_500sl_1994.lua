local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Mercedes-Benz 500 SL R129 1994",
	Model = "models/crsk_autos/mercedes-benz/500sl_1994.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_mercedes_500sl_1994.txt"
	}
}
list.Set( "Vehicles", "crsk_mercedes_500sl_1994", V )

