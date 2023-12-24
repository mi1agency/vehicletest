local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Honda Prelude Type SH 1996",
	Model = "models/crsk_autos/honda/prelude_1996.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_honda_prelude_1996.txt"
	}
}
list.Set( "Vehicles", "crsk_honda_prelude_1996", V )

