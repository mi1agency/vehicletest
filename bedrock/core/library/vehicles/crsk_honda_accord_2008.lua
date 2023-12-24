local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Honda Accord 2008",
	Model = "models/crsk_autos/honda/accord_2008.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_honda_accord_2008.txt"
	}
}
list.Set( "Vehicles", "crsk_honda_accord_2008", V )

