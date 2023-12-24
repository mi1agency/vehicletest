local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk — Commercial Vehicles"


local V = {
	-- Required information
	Name = "Mercedes-Benz Vito Panel Van '14",
	Model = "models/crsk_autos/mercedes-benz/vito_panel_2014.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_mercedes_vito_panel_2014.txt"
	}
}
list.Set( "Vehicles", "crsk_mercedes_vito_panel_2014", V )
