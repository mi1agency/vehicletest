local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Chevrolet Camaro SS 2020",
	Model = "models/dk_cars/chevrolet/camaross2020.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_camaross2020.txt"
	}
}
list.Set( "Vehicles", "dk_camaross2020", V )

hook.Add("OnEntityCreated", "dk_camaross2020_ADaod", function(ent)
	timer.Simple(.1, function()
		if not IsValid(ent) then return end
		if ent:GetModel() != "models/dk_cars/chevrolet/camaross2020.mdl" then return end
		ent:ManipulateBonePosition(ent:LookupBone("view_bone"), Vector(0,-10,3))
	end)
end)