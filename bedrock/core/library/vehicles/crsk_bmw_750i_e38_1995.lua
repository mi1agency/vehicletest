local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Autos"


local V = {
	-- Required information
	Name = "BMW 750i E38 1995",
	Model = "models/crsk_autos/bmw/750i_e38_1995.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "bumer",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_bmw_750i_e38_1995.txt"
	}
}
list.Set( "Vehicles", "crsk_bmw_750i_e38_1995", V )

