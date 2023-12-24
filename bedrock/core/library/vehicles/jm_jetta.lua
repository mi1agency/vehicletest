local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "2020 Volkswagen Jetta R-Line",
	Model = "models/jmcars/vw/passatr/rline.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_jetta.txt"
	}
}
list.Set( "Vehicles", "jm_jetta", V )
