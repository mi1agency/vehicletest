local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Rolls-Royce Sweptail",
	Model = "models/dk_cars/rollsroyce_sweptail/sweptail.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_sweptail.txt"
	}
}
list.Set( "Vehicles", "dk_sweptail", V )

hook.Add("OnEntityCreated","dk_sweptail_BoneFix",function(ent)
	timer.Simple(.1, function()
		if not IsValid(ent) then return end
		if ent:GetModel() == "models/dk_cars/rollsroyce_sweptail/sweptail.mdl" then
			ent:ManipulateBonePosition( ent:LookupBone("view_bone"), Vector(-1,1,5) )
		end
	end)
end)
