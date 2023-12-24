local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1998 Shelby Series 1",
	Model = "models/jmcars/shelby/series1/s1.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_shelbys1.txt"
	}
}
list.Set( "Vehicles", "jm_shelbys1", V )
