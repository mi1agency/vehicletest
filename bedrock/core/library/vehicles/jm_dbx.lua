local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2019 Aston Martin DBX",
	Model = "models/jm_cars/aston_martin/dbx/dbx.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_dbx.txt"
	}
}
list.Set( "Vehicles", "jm_dbx", V )
