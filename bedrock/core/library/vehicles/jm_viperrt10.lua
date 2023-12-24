local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1992 Dodge Viper RT/10",
	Model = "models/jm_cars/dodge/viper/rt10.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_viperrt10.txt"
	}
}
list.Set( "Vehicles", "jm_viperrt10", V )
