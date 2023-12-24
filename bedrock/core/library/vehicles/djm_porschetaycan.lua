local PrVeh = "prop_vehicle_jeep"
local Cat = "DJM CARS"


local V = {
	-- Required information
	Name = "Porsche Taycan Turbo S",
	Model = "models/djm_cars/porsche/porsche_taycan/porsche_taycan.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CPT DJJDYLAN",
	Information = "Test model",

	KeyValues = {
		vehiclescript = "scripts/vehicles/djmcars/djm_porsche_taycan.txt"
	}
}
list.Set( "Vehicles", "djm_porschetaycan", V )