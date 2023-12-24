local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "BMW 1er M135i F21 2012",
	Model = "models/crsk_autos/bmw/m135i_f21_2012.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_bmw_m135i_f21_2012.txt"
	}
}
list.Set( "Vehicles", "crsk_bmw_m135i_f21_2012", V )

