local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Mercedes-Maybach S 650 2018",
	Model = "models/dk_cars/mercedes/benzw222/maybach.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_maybach.txt"
	}
}
list.Set( "Vehicles", "dk_merc_maybach", V )
