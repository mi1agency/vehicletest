local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1969 Ford Mustang Boss 302",
	Model = "models/jm_cars/ford/mustangboss302/boss302.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/boss302.txt"
	}
}
list.Set( "Vehicles", "jm_fordboss302", V )
