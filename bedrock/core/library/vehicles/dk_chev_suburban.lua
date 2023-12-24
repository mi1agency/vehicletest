local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Chevrolet Suburban GMT400",
	Model = "models/dk_cars/chev/suburban/gmt400.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_chev_suburban.txt"
	}
}
list.Set( "Vehicles", "dk_chev_suburban", V )