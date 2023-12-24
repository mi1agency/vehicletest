local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Honda NSX '17",
	Model = "models/crsk_autos/honda/nsx_2017.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_honda_nsx_2017.txt"
	}
}
list.Set( "Vehicles", "crsk_honda_nsx_2017", V )
