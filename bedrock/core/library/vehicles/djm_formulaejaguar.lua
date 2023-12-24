local PrVeh = "prop_vehicle_jeep"
local Cat = "DJ MOTORSPORTS"


local V = {
	-- Required information
	Name = "Formula E Gen 2 Jaguar I-Type",
	Model = "models/djmcars/formulae/formula01/formulae01.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CPT DJJDYLAN",
	Information = "Test model",

	KeyValues = {
		vehiclescript = "scripts/vehicles/djmcars/djm_formulae_jaguar.txt"
	}
}
list.Set( "Vehicles", "djm_formulae_jaguar", V )