local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Peugeot 206 RC '03",
	Model = "models/crsk_autos/peugeot/206rc_2003.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_peugeot_206rc_2003.txt"
	}
}
list.Set( "Vehicles", "crsk_peugeot_206rc_2003", V )

