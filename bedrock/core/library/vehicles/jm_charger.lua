local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1971 Dodge Charger Super Bee",
	Model = "models/jmcars/dodge/chargersb/chargersb.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_charger.txt"
	}
}
list.Set( "Vehicles", "jm_charger", V )
