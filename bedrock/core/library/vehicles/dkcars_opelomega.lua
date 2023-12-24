local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Opel Omega A 2.0i",
	Model = "models/dk_cars/opel/omega20/ooo_vosmiklasnica.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dkopelonega.txt"
	}
}
list.Set( "Vehicles", "dkcars_opelomega", V )
