local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2004 Chrysler ME Four-Twelve",
	Model = "models/jm_cars/chrysler/me412/me412.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_me412.txt"
	}
}
list.Set( "Vehicles", "jm_me412", V )
