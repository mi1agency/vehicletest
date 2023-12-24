local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1999 Mercedes-Benz E420 W210",
	Model = "models/jmcars/m-b/e420/w210.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_e420.txt"
	}
}
list.Set( "Vehicles", "jm_e420", V )
