local PrVeh = "prop_vehicle_jeep"
local Cat = "DJM CARS"


local V = {
	-- Required information
	Name = "Formula E Gen 2 Standard",
	Model = "models/djmcars/formulae/formula/formulaebasic.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CPT DJJDYLAN",
	Information = "Test model",

	KeyValues = {
		vehiclescript = "scripts/vehicles/djmcars/djm_formulae_standard.txt"
	}
}
list.Set( "Vehicles", "djm_formulae_standard", V )