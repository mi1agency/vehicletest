local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Jaguar F-Pace S 2016",
	Model = "models/crsk_autos/jaguar/fpace_2016.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_jaguar_fpace_2016.txt"
	}
}
list.Set( "Vehicles", "crsk_jaguar_fpace_2016", V )
