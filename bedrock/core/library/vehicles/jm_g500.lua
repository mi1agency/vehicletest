local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2016 Mercedes-Benz G500 4x4²",
	Model = "models/jm_cars/brabus/g500/g500.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "Ed Wulf's G500",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_g500.txt"
	}
}
list.Set( "Vehicles", "jm_g500", V )
