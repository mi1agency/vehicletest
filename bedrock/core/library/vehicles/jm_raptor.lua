local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2010 Saleen S5s Raptor",
	Model = "models/jm_cars/saleen/s5sraptor/raptor.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "Pog",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_raptor.txt"
	}
}
list.Set( "Vehicles", "jm_raptor", V )
