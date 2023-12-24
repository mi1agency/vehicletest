local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"
local mdl = "models/dk_cars/mercedes_x_class/x_class_2019.mdl" -- actually it 2018 but why not

local V = {
	-- Required information
	Name = "Mercedes-Benz X-Class",
	Model = mdl,
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_xclass.txt"
	}
}
list.Set( "Vehicles", "dk_xclass", V )
