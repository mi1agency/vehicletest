local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "BMW Z4 E89 sDrive28i 2012",
	Model = "models/crsk_autos/bmw/z4e89_2012.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_bmw_z4e89.txt"
	}
}
list.Set( "Vehicles", "crsk_bmw_z4e89", V )

