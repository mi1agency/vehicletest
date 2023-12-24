local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1979 Porsche 935",
	Model = "models/jm_cars/porsche/935/fcknslaves.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_935.txt"
	}
}
list.Set( "Vehicles", "jm_935", V )
