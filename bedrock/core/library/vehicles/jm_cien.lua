local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2002 Cadillac Cien",
	Model = "models/jm_cars/cadillac/cien/cien.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_cien.txt"
	}
}
list.Set( "Vehicles", "jm_cien", V )
