local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Mitsubishi Starion",
	Model = "models/dk_cars/mitsubishi/starion/mits_star.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_star.txt"
	}
}
list.Set( "Vehicles", "dk_mits_stalin", V )

-- Don't take it mind all hided code, it will added after I release another addon ;)

--CB_AddVehicle("dk_mits_stalin", 100000, 80000)

if SERVER then
	--[[ hook.Add("Think", "DK_Mits_Starion_Sync", function()
		for k, ent in pairs(ents.GetAll()) do
			if ent:GetModel() == "models/dk_cars/mitsubishi/starion/mits_star.mdl" then
				-- sync for bodygroups
				ent:SetBodygroup(6,ent:GetBodygroup(5))
				ent:SetBodygroup(7,ent:GetBodygroup(5))
			end
		end
	end)--]] 
	--[[
	hook.Add("OnEntityCreated", "CB_Set_up_data_starion", function(ent)
		timer.Simple(.1, function()
			if !IsValid(ent) then return end
			if ent:GetModel() == "models/dk_cars/mitsubishi/starion/mits_star.mdl" then
				ent.SpawnBuilded = true
				ent.MaxEngineSize = 2.6 -- in liters
				ent:CB_HasSupport(true)
				ent.CB_WriteParts = {
					"bonnet",
					"boot",
					"frontbumper",
					"rearbumper",
					"doors",
					"seats",
					"engine",
					"lights",
					"wheels",
					"steeringwheel"
				}
				ent.CB_WritePartsBodygroupTable_Default = { -- set default car vaules(STOCK)
					Bonnet = {8, 0}, -- PartName = {bodygroup, value}
					Boot = {9, 0},
					FrontBumper = {10, 0},
					RearBumper = {11, 0},
					Doors = {12, 0},
					Seats = {13, 0},
					Engine = {5, 0},
					Wheels = {14, 0},
					SteeringWheel = {15, 0},
					Lights = {4, 0},
				}
				ent.CB_WritePartsBodygroupTable_Chassis = { -- set dismantled car values(CHASSIS)
					Bonnet = {8, 1}, -- PartName = {bodygroup, value}
					Boot = {9, 1},
					FrontBumper = {10, 1},
					RearBumper = {11, 1},
					Doors = {12, 1},
					Seats = {13, 1},
					Engine = {5, 1},
					Wheels = {14, 1},
					SteeringWheel = {15, 1},
					Lights = {4, 1},
				}
				ent.CB_WritePositions = {
					Bonnet = Vector(0,62.9,50),
					Boot = Vector(0,-71.4, 49.9),
					FrontBumper = Vector(0,95,22),
					RearBumper = Vector(0,-111.7,22.1),
					Doors = Vector(-58.7,30.4,21.9),
					Seats = Vector(-58.7,30.4,21.9),
					Engine = Vector(0,57.5,30.1),
					Wheels = Vector(-58.7,30.4,21.9),
					SteeringWheel = Vector(-26.8,16.7,34.3)
				}
			end
		end)
	end)]]
end
