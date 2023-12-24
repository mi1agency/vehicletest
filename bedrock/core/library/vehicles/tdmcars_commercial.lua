local PrVeh = "prop_vehicle_jeep"
local Cat = "TDM Commercial"

local V = {
			Name = "Orion VII NG", 
			Class = PrVeh,
			Category = Cat,
			Author = "TheDanishMaster, Ubisoft",
			Information = "A drivable Bus by TheDanishMaster",
				Model = "models/tdmcars/bus.mdl",
							KeyValues = {
							vehiclescript	=	"scripts/vehicles/tdmcars/bus.txt"
							}
			}
list.Set("Vehicles", "bustdm", V)

local V = {
			Name = "Courier Truck", 
			Class = PrVeh,
			Category = Cat,
			Author = "TheDanishMaster, Ubisoft",
			Information = "A drivable Courier Truck by TheDanishMaster",
				Model = "models/tdmcars/courier_truck.mdl",
							KeyValues = {
							vehiclescript	=	"scripts/vehicles/tdmcars/courier_truck.txt"
							}
			}
list.Set("Vehicles", "courier_trucktdm", V)




 if SERVER then
	hook.Add("Think", "TDMOrion_BusDoors", function()
		for _, ent in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
				if ent:GetModel() == "models/tdmcars/bus.mdl" then
				local FrontDoor = 0
				local RearDoor = 0
			if IsValid(ent:GetDriver()) then
				if ent:GetDriver():KeyDown(IN_ATTACK) then 
					FrontDoor = 1 
				end
				if ent:GetDriver():KeyDown(IN_ATTACK2) then 
					RearDoor = 1 
				end
				if ent:GetDriver():KeyPressed(IN_ATTACK) or ent:GetDriver():KeyPressed(IN_ATTACK2) then ent:EmitSound("vehicles/tdmcars/bus/door_sound.mp3") end 
			end
			ent.BusDoorF = Lerp(0.02, ent.BusDoorF or 0, FrontDoor)
			ent:SetPoseParameter("doors_front", ent.BusDoorF)
			ent.BusDoorR = Lerp(0.02, ent.BusDoorR or 0, RearDoor)
			ent:SetPoseParameter("doors_rear", ent.BusDoorR)


			end
		end
	end)
end