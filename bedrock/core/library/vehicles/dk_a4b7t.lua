local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Audi A4 3.0 TDI quattro",
	Model = "models/dk_cars/audi/b7/a_b7.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_a4b7.txt"
	}
}
list.Set( "Vehicles", "dk_a4b7", V )
