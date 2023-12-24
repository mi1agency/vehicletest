local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Porsche RWB 993",
	Model = "models/dk_cars/porsche/i_cant_remember_which_porsche_is_it.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "Car which made for tutorial",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_porscherwb993.txt"
	}
}
list.Set( "Vehicles", "dk_porscherwb993", V )

hook.Add("OnEntityCreated", "dk_porscherwb993FIX", function(ent)
	timer.Simple(.1, function()
		if not IsValid(ent) then return end
		if ent:GetModel() != "models/dk_cars/porsche/i_cant_remember_which_porsche_is_it.mdl" then return end
		ent:ManipulateBonePosition(ent:LookupBone("view_bone"), Vector(-1, -3, -3))
	end)
end)