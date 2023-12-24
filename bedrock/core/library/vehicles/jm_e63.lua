local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2021 Mercedes-AMG E63 S 4Matic+ (W213)",
	Model = "models/jm_cars/mercedes-benz/e62020/e63.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JusyMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_e63.txt"
	}
}
list.Set( "Vehicles", "jm_e63", V )
