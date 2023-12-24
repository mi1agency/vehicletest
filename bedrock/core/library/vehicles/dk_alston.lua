local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Lamborghini SC18 Alston 2019",
	Model = "models/dk_cars/lamborghini_alston/alston2019ebat.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_alston.txt"
	}
}
list.Set( "Vehicles", "dk_alston", V )
