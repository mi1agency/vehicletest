local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Land Rover Range Rover Evoque",
	Model = "models/dk_cars/rangerover/rover_evoq.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_evoq.txt"
	}
}
list.Set( "Vehicles", "dk_revoq", V )
