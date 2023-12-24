local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1990 Porsche 911 Reimagined by Singer DLS",
	Model = "models/jmcars/porsche/911singer/singer.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "The most beautiful Porsche ever made",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_911singer.txt"
	}
}
list.Set( "Vehicles", "jm_911singer", V )