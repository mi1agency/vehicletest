local PrVeh = "prop_vehicle_jeep"
local Cat = "DJ MOTORSPORTS"


local V = {
	-- Required information
	Name = "Formula E Gen 2 DS Automobiles",
	Model = "models/djmcars/formulae/formula02/formulae02.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CPT DJJDYLAN",
	Information = "Test model",

	KeyValues = {
		vehiclescript = "scripts/vehicles/djmcars/djm_formulae_ds_automobiles.txt"
	}
}
list.Set( "Vehicles", "djm_formulae_ds_automobiles", V )