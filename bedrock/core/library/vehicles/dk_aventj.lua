local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Lamborghini Aventador J",
	Model = "models/dk_cars/lamborghini/aventador/lam_avj.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_lam_avj.txt"
	}
}
list.Set( "Vehicles", "dk_lam_avj", V )
