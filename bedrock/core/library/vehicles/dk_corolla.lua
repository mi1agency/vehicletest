local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Toyota Corolla Sedan 2001",
	Model = "models/dk_cars/toyota/corolla/korova_catana.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_corolla.txt"
	}
}
list.Set( "Vehicles", "dk_torolla", V )


