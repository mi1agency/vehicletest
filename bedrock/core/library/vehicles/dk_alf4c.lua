local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Alfa Romeo 4C",
	Model = "models/dk_cars/alfa/4c/a4c.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_a4c.txt"
	}
}
list.Set( "Vehicles", "dk_alf4c", V )
