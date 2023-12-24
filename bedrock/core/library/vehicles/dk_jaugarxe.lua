local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Jaugar XE S",
	Model = "models/dk_cars/jaguar/xe/jag_xe.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_jxe.txt"
	}
}
list.Set( "Vehicles", "dk_jaugarxe", V )
