local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Skoda Rapid 2014",
	Model = "models/crsk_autos/skoda/rapid_2014.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "ВАГина для таксистов",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_skoda_rapid_2014.txt"
	}
}
list.Set( "Vehicles", "crsk_skoda_rapid_2014", V )