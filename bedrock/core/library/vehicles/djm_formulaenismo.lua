local PrVeh = "prop_vehicle_jeep"
local Cat = "DJ MOTORSPORTS"


local V = {
	-- Required information
	Name = "Formula E Gen 2 Nissan Motorsports",
	Model = "models/djmcars/formulae/formula04/formulae04.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CPT DJJDYLAN",
	Information = "Test model",

	KeyValues = {
		vehiclescript = "scripts/vehicles/djmcars/djm_formulae_nismo.txt"
	}
}
list.Set( "Vehicles", "djm_formulae_nismo", V )