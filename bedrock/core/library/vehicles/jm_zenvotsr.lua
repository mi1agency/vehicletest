local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2019 Zenvo TSR-S",
	Model = "models/jm_cars/zenvo/zenvotsr/tsr.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_zenvotsr.txt"
	}
}
list.Set( "Vehicles", "jm_zenvotsr", V )
