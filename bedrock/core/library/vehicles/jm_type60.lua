local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1959 Maserati Tipo 60",
	Model = "models/jmcars/maserati/type60/type60.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_type60.txt"
	}
}
list.Set( "Vehicles", "jm_type60", V )
