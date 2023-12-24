local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "BMW 750li F02 2009",
	Model = "models/crsk_autos/bmw/750li_f02_2009.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_bmw_750li_f02_2009.txt"
	}
}
list.Set( "Vehicles", "crsk_bmw_750li_f02_2009", V )

