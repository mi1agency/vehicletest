local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Marussia B2 2010",
	Model = "models/dk_cars/marussia/b2.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_mb2.txt"
	}
}
list.Set( "Vehicles", "dk_marb2", V )
