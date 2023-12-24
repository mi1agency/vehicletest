local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Porsche 911 Turbo S 2017",
	Model = "models/crsk_autos/porsche/911_turbos_2017.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_porsche_911_turbos_2017.txt"
	}
}
list.Set( "Vehicles", "crsk_porsche_911_turbos_2017", V )

