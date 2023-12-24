local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Maserati Alfieri 2020",
	Model = "models/crsk_autos/maserati/alfieri_concept_2014.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_maserati_alfieri_concept.txt"
	}
}
list.Set( "Vehicles", "crsk_maserati_alfieri_concept", V )
