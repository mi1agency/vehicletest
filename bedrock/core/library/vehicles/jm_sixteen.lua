local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2003 Cadillac Sixteen",
	Model = "models/jm_cars/cadillac/sixteen/six.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_sixteen.txt"
	}
}
list.Set( "Vehicles", "jm_sixteen", V )
