local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2018 TVR Griffith",
	Model = "models/jmcars/tvr/griffith/grif.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_grif.txt"
	}
}
list.Set( "Vehicles", "jm_grif", V )
