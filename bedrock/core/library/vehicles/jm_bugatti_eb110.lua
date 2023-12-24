local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2020 Bugatti Centodieci EB110",
	Model = "models/jm_cars/bugatti/centodieci/centodiecieb110.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "lol",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_bugattieb110.txt"
	}
}
list.Set( "Vehicles", "jm_bugeb110", V )
