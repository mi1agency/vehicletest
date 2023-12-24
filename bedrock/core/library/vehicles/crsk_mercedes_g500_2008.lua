local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Mercedes-Benz G 500 2008",
	Model = "models/crsk_autos/mercedes-benz/g500_2008.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_mercedes_g500_2008.txt"
	}
}
list.Set( "Vehicles", "crsk_mercedes_g500_2008", V )

