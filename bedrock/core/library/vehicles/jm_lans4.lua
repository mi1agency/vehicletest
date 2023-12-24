local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1985 Lancia Delta S4 Stradale",
	Model = "models/jm_cars/lancia/s4/lans4.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_lans4.txt"
	}
}
list.Set( "Vehicles", "jm_lans4", V )
