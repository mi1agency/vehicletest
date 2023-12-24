local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Alfa Romeo Giulia Quadrifoglio 2017",
	Model = "models/crsk_autos/alfaromeo/giulia_quadrifoglio_2017.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_alfa_giulia_quadrifoglio_2017.txt"
	}
}
list.Set( "Vehicles", "crsk_alfa_giulia_quadrifoglio_2017", V )