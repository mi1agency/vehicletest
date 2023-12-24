local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Skoda Octavia vRS'18",
	Model = "models/crsk_autos/skoda/octavia_vrs_2018.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "turboperdelus vaginus",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_skoda_octavia_vrs_2018.txt"
	}
}
list.Set( "Vehicles", "crsk_skoda_octavia_vrs_2018", V )