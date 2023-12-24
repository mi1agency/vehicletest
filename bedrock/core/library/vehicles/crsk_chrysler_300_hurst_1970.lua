local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"

local V = {
	-- Required information
	Name = "Chrysler 300 Hurst Edition '70",
	Model = "models/crsk_autos/chrysler/300_hurst_1970.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_chrysler_300_hurst_1970.txt"
	}
}
list.Set( "Vehicles", "crsk_chrysler_300_hurst_1970", V )

local V = {
	-- Required information
	Name = "Chrysler 300 Hurst Edition '70 Lowrider",
	Model = "models/crsk_autos/chrysler/300_hurst_1970.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_chrysler_300_hurst_1970_low.txt"
	}
}
list.Set( "Vehicles", "crsk_chrysler_300_hurst_1970_low", V )