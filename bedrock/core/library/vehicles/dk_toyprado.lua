local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Toyota Land Cruiser Prado",
	Model = "models/dk_cars/toyota/cruiser/prado.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_toyprado.txt"
	}
}
list.Set( "Vehicles", "dk_toyprado", V )
