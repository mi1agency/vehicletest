local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Mercedes-Benz 500 SE W140 1992",
	Model = "models/crsk_autos/mercedes-benz/500se_w140_1992.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_mercedes_500se_w140_1992.txt"
	}
}
list.Set( "Vehicles", "crsk_mercedes_500se_w140_1992", V )

