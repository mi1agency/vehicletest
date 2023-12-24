local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Ferrari Portofino 2018",
	Model = "models/dk_cars/ferrari/portofino/fer_port.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_portofino.txt"
	}
}
list.Set( "Vehicles", "dk_ferportofino", V )
