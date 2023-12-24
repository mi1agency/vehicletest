local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk — Military Vehicles"


local V = {
	-- Required information
	Name = "Mercedes-Benz 250 GD Wolf",
	Model = "models/crsk_autos/mercedes-benz/wolf.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_mercedes_250gd_wolf.txt"
	}
}
list.Set( "Vehicles", "crsk_mercedes_250gd_wolf", V )

