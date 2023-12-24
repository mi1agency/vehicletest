local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Cadillac Eldorado 1978",
	Model = "models/dk_cars/rashkinsk/eldorado/eldorado1978.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "For rashkinsk",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_eldorado.txt"
	}
}
list.Set( "Vehicles", "dk_eldorado", V )