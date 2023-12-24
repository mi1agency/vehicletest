local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Audi A4 Quattro 2016",
	Model = "models/crsk_autos/audi/a4_quattro_2016.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_audi_a4_quattro_2016.txt"
	}
}
list.Set( "Vehicles", "crsk_audi_a4_quattro_2016", V )