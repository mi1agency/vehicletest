local PrVeh = "prop_vehicle_jeep"
local Cat = "DJM CARS"


local V = {
	-- Required information
	Name = "Audi E-Tron GT Concept",
	Model = "models/djmcars/audi/etron/etrongtconcept.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CPT DJJDYLAN",
	Information = "Test model",

	KeyValues = {
		vehiclescript = "scripts/vehicles/djmcars/audi_etrongt.txt"
	}
}
list.Set( "Vehicles", "audi_etrongt", V )