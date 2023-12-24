local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2018 BMW X7",
	Model = "models/jmcars/bmw/x7/fatherscar.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_x7.txt"
	}
}
list.Set( "Vehicles", "jm_x7", V )
