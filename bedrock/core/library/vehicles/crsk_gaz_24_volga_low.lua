local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "GAZ-24 Volga Low",
	Model = "models/crsk_autos/gaz/24_volga.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_gaz_24_volga_low.txt"
	}
}
list.Set( "Vehicles", "crsk_gaz_24_volga_low", V )

