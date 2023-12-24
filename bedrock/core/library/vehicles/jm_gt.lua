local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2020 McLaren GT",
	Model = "models/jmcars/mclaren/gt/gt.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_gt.txt"
	}
}
list.Set( "Vehicles", "jm_gt", V )
