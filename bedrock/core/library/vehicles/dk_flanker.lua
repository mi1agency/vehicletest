local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Flanker F",
	Model = "models/dk_cars/flanker/flanker_f.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_flanker.txt"
	}
}
list.Set( "Vehicles", "dk_flanker", V )