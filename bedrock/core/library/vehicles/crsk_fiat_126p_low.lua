local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Fiat 126p Low",
	Model = "models/crsk_autos/fiat/126p.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_fiat_126p_low.txt"
	}
}
list.Set( "Vehicles", "crsk_fiat_126p_low", V )

