local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2010 Jaguar C-X75",
	Model = "models/jm_cars/jaguar/cx75/cx75.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_cx75.txt"
	}
}
list.Set( "Vehicles", "jm_cx75", V )