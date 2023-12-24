local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Peugeot 308 GTi 2011",
	Model = "models/crsk_autos/peugeot/308gti_2011.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_peugeot_308gti_2011.txt"
	}
}
list.Set( "Vehicles", "crsk_peugeot_308gti_2011", V )

