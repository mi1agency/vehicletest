local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2019 Aston Martin Vantage AMR",
	Model = "models/jm_cars/aston-martin/vantage/fatcock.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_vantageamr.txt"
	}
}
list.Set( "Vehicles", "jm_vantageamr", V )
