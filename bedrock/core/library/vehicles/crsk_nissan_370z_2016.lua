local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Nissan 370Z Nismo Z34 2016",
	Model = "models/crsk_autos/nissan/370z_2016.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_nissan_370z_2016.txt"
	}
}
list.Set( "Vehicles", "crsk_nissan_370z_2016", V )