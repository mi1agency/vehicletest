local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2019 Bugatti La Voiture Noire",
	Model = "models/jm_cars/bugatti/bugatti_la_voiture_noire.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_lvn.txt"
	}
}
list.Set( "Vehicles", "jm_bugatti_lvn", V )
