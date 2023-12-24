local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2020 Mercedes-AMG GT Black Series",
	Model = "models/jm_cars/mercedes-benz/amg_gtbs/gtbs.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_mbamggtbl.txt"
	}
}
list.Set( "Vehicles", "jm_mbamggtbl", V )
