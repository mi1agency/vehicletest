local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2019 Ferrari Monza SP2",
	Model = "models/jm_cars/ferrari/monzasp2/monza.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_monza.txt"
	}
}
list.Set( "Vehicles", "jm_monza2", V )
