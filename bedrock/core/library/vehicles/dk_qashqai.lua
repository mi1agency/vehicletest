local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Nissan Qashqai",
	Model = "models/dk_cars/nissan/qashqai.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_qashqai.txt"
	}
}
list.Set( "Vehicles", "dk_qashqai", V )