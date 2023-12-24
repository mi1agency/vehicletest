local PrVeh = "prop_vehicle_jeep"
local Cat = "DJ MOTORSPORTS"


local V = {
	-- Required information
	Name = "Formula E Gen 2 NIO 333 Racing",
	Model = "models/djmcars/formulae/formula03/formulae03.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CPT DJJDYLAN",
	Information = "Test model",

	KeyValues = {
		vehiclescript = "scripts/vehicles/djmcars/djm_formulae_nio.txt"
	}
}
list.Set( "Vehicles", "djm_formulae_nio", V )