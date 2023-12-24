local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1990 Vauxhall Carlton Lotus",
	Model = "models/jmcars/lotus/carlton/carl.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_carlton.txt"
	}
}
list.Set( "Vehicles", "jm_carlton", V )
