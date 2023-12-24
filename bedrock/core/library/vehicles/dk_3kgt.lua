local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Mitsubishi 3000GT",
	Model = "models/dk_cars/mitsubishi/3kgt/m3kgt.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_3kgt.txt"
	}
}
list.Set( "Vehicles", "dk_mits_3kgt", V )
