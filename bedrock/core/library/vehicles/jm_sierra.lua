local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1986 Ford Escort RS Turbo",
	Model = "models/jmcars/ford/sierra/sierra.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_escort.txt"
	}
}
list.Set( "Vehicles", "jm_escort", V )
