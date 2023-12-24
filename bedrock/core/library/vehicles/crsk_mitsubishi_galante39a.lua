local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Mitsubishi Galant VR-4 E39A 1987",
	Model = "models/crsk_autos/mitsubishi/galante39a_1987.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_mitsubishi_galante39a.txt"
	}
}
list.Set( "Vehicles", "crsk_mitsubishi_galante39a", V )

