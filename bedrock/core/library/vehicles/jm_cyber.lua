local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "Porsche 911 GT2 Yasiddesign Style",
	Model = "models/jm_cars/porsche/cyber911/cyber.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_cyberporsche.txt"
	}
}
list.Set( "Vehicles", "jm_cyberporsche", V )
