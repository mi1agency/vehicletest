local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1991 BMW Nazca C2",
	Model = "models/jm_cars/bmw/nazca/c2.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_nazcac2.txt"
	}
}
list.Set( "Vehicles", "jm_nazcac2", V )
