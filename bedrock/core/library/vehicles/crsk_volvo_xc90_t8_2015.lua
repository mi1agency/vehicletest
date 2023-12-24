local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Volvo XC90 T8 2018",
	Model = "models/crsk_autos/volvo/xc90_t8_2015.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_volvo_xc90_t8_2015.txt"
	}
}
list.Set( "Vehicles", "crsk_volvo_xc90_t8_2015", V )

