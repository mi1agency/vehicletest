local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1998 Audi S8",
	Model = "models/jmcars/audi/s8/s8.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_s8.txt"
	}
}
list.Set( "Vehicles", "jm_s8", V )
