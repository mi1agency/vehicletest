local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Toyota Chaser Tourer V X100 1998",
	Model = "models/crsk_autos/toyota/chaservtourerx100_1998.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_toyota_chaservtourerx100.txt"
	}
}
list.Set( "Vehicles", "crsk_toyota_chaservtourerx100", V )

