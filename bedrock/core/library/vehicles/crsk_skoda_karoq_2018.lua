local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Skoda Karoq 2018",
	Model = "models/crsk_autos/skoda/karoq_2018.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_skoda_karoq_2018.txt"
	}
}
list.Set( "Vehicles", "crsk_skoda_karoq_2018", V )

