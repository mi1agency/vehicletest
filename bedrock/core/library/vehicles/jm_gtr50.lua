local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2018 Nissan GT-R50 Concept",
	Model = "models/jm_cars/nissan/gtr50/gtr50.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_gtr50.txt"
	}
}
list.Set( "Vehicles", "jm_gtr50", V )
