local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "Audi RS6 2020",
	Model = "models/jm_cars/audi/rs6/rs6.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jmcars_audi_rs6_2020.txt"
	}
}
list.Set( "Vehicles", "jm_audi_rs6", V )
