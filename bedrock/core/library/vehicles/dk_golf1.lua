local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Volkswagen Golf 1",
	Model = "models/dk_cars/rashkinsk/golf1/volkswagengolf1.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_golf1.txt"
	}
}
list.Set( "Vehicles", "dk_golf1", V )

if CLIENT then return end
hook.Add("OnEntityCreated","dk_golf1_BoneFix",function(ent)
	timer.Simple(.1, function()
		if not IsValid(ent) then return end
		if ent:GetModel() == "models/dk_cars/rashkinsk/golf1/volkswagengolf1.mdl" then
			ent:ManipulateBonePosition( ent:LookupBone("view_bone"), Vector(-3,0,0) )
		end
	end)
end)