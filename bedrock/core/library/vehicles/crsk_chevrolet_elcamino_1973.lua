local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"

local V = {
	-- Required information
	Name = "Chevrolet El Camino '73",
	Model = "models/crsk_autos/chevrolet/elcamino_1973.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_chevrolet_elcamino_1973.txt"
	}
}
list.Set( "Vehicles", "crsk_chevrolet_elcamino_1973", V )