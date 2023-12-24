local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Hyundai Solaris '10",
	Model = "models/crsk_autos/hyundai/solaris_2010.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "в такси не использовался",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_hyundai_solaris_2010.txt"
	}
}
list.Set( "Vehicles", "crsk_hyundai_solaris_2010", V )

local V = {
	-- Required information
	Name = "Hyundai Solaris '10 Black Edition",
	Model = "models/crsk_autos/hyundai/solaris_2010_black.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "когда хочешь быть бандитом",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_hyundai_solaris_2010_black.txt"
	}
}
list.Set( "Vehicles", "crsk_hyundai_solaris_2010_black", V )
