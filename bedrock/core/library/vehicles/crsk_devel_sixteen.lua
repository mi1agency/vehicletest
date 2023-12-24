local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Devel Sixteen 2015",
	Model = "models/crsk_autos/devel/sixteen.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_devel_sixteen.txt"
	}
}
list.Set( "Vehicles", "crsk_devel_sixteen", V )
