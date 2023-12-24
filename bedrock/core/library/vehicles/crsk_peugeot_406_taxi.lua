local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "Peugeot 406 Taxi",
	Model = "models/crsk_autos/peugeot/406_taxi.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_peugeot_406_taxi.txt"
	}
}
list.Set( "Vehicles", "crsk_peugeot_406_taxi", V )

