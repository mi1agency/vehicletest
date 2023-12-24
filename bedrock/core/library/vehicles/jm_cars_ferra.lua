local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "Ferrari FXXK",
	Model = "models/jm_cars/ferrari/fxxk/fxxk.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "Just the Ferrari",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_fxxk.txt"
	}
}
list.Set( "Vehicles", "jm_ferrarifxxk", V )

