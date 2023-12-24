local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Aston Martin V8 Vantage V600 1998",
	Model = "models/crsk_autos/aston_martin/vantagev600_1998.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_aston_vantagev600_1998.txt"
	}
}
list.Set( "Vehicles", "crsk_aston_vantagev600_1998", V )

