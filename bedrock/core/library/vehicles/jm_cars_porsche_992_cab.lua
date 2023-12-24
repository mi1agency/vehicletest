local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "Porsche 911 Turbo S Cabrio (992)",
	Model = "models/jm_cars/porsche/911turbo_cab/porsche_911_cab992.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "Just the porsche",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jm_cars/jm_porsche992_cab.txt"
	}
}
list.Set( "Vehicles", "jm_porsche992_cab", V )

