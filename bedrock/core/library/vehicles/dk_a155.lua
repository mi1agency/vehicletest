local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Alfa Romeo 155",
	Model = "models/dk_cars/rashkinsk/alfa/alfa155.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "For rashkinsk",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_a155.txt"
	}
}
list.Set( "Vehicles", "dk_a155", V )

hook.Add("OnEntityCreated","dk_a155_BoneFix",function(ent)
	timer.Simple(.1, function()
		if not IsValid(ent) then return end
		if ent:GetModel() == "models/dk_cars/rashkinsk/alfa/alfa155.mdl" then
			ent:ManipulateBonePosition( ent:LookupBone("view_bone"), Vector(0,2,2) )
		end
	end)
end)