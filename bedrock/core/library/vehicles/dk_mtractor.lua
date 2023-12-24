local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "МТЗ 80",
	Model = "models/dk_cars/rashkinsk/tractor/tractor_stock.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_mtractor.txt"
	}
}
list.Set( "Vehicles", "dk_mtractor", V )

local V = {
	-- Required information
	Name = "BELARUS GT 2019",
	Model = "models/dk_cars/rashkinsk/tractor/tractor_tune.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_mtractor2.txt"
	}
}
list.Set( "Vehicles", "dk_mtractor2", V )