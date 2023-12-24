local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "SEAT Leon Cupra R 1M 2003",
	Model = "models/crsk_autos/seat/leon_cupra_r_2003.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_seat_leon_cupra_r_2003.txt"
	}
}
list.Set( "Vehicles", "crsk_seat_leon_cupra_r_2003", V )