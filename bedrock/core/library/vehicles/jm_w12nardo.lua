local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2001 Volkswagen Nardo W12 Coupe",
	Model = "models/jm_cars/vwagen/w12/w12.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_w12nardo.txt"
	}
}
list.Set( "Vehicles", "jm_w12nardo", V )
