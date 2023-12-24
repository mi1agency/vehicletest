local V = {
	-- Required information
	Name = "Toyota Century",
	Model = "models/ctvehicles/toyota/century_vg50.mdl",
	Class = "prop_vehicle_jeep",
	Category = "CTVehicles",

	-- Optional information
	Author = "CTV",
	Information = "toyotas only v12",

	KeyValues = {
		vehiclescript = "scripts/vehicles/ctvehicles/ctv_toyota_century.txt"
	}
}
list.Set( "Vehicles", "ctv_stock_century", V )