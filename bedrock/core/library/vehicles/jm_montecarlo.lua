local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1985 Chevrolet Monte Carlo SS",
	Model = "models/jmcars/chevy/montecarlo/edwulfsmc.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "Commission",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_montecarlo.txt"
	}
}
list.Set( "Vehicles", "jm_montecarlo", V )
