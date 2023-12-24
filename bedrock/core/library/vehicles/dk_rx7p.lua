local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Emergency Cars"


local V = {
	-- Required information
	Name = "Mazda RX7 Police",
	Model = "models/dk_cars/mazda/rx7p/a4c.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_rx7police.txt"
	}
}
list.Set( "Vehicles", "dk_rx7police", V )
