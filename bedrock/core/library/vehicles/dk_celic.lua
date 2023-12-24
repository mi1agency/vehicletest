local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Toyota Celica",
	Model = "models/dk_cars/toyota/celica/toy_celica.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_celic.txt"
	}
}
list.Set( "Vehicles", "dk_toy_celica", V )

-- it will for one extra addon.Right now nevermind about that.

--CB_AddVehicle("dk_toy_celica", 100000, 80000)

if SERVER then

	hook.Add("OnEntityCreated", "Celicafix", function(ent)
		timer.Simple(.1, function()
			if !IsValid(ent) then return end
			if ent:GetModel() != "models/dk_cars/toyota/celica/toy_celica.mdl" then return end
			ent:SetBodygroup(3,0)
		end)
	end)
	--[[
	hook.Add("OnEntityCreated", "CB_Set_up_data", function(ent)
		timer.Simple(.1, function()
			if !IsValid(ent) then return end
			if ent:GetModel() == "models/dk_cars/toyota/celica/toy_celica.mdl" then
				ent.MaxEngineSize = 2.6 -- in liters
				ent:CB_HasSupport(true)
				ent.CB_WriteParts = {
					"bonnet",
					"boot",
					"frontbumper",
					"rearbumper",
					"doors",
					"spoiler",
					"lights",
					"seats",
					"engine",
					"wheels",
					"steeringwheel"
				}
				ent.CB_WritePartsBodygroupTable_Default = { -- set default car vaules(STOCK)
					Bonnet = {2, 0}, -- PartName = {bodygroup, value}
					Boot = {3, 0},
					FrontBumper = {4, 0},
					RearBumper = {5, 0},
					Doors = {6, 0},
					Spoiler = {7, 0},
					Lights = {8, 0},
					Seats = {9, 0},
					Engine = {10, 0},
					Wheels = {11, 0},
					SteeringWheel = {12, 0},
				}
				ent.CB_WritePartsBodygroupTable_Chassis = { -- set dismantled car values(CHASSIS)
					Bonnet = {2, 1}, -- PartName = {bodygroup, value}
					Boot = {3, 1},
					FrontBumper = {4, 1},
					RearBumper = {5, 1},
					Doors = {6, 1},
					Spoiler = {7, 1},
					Lights = {8, 1},
					Seats = {9, 1},
					Engine = {10, 1},
					Wheels = {11, 1},
					SteeringWheel = {12, 1},
				}
				ent.CB_WritePositions = {
					Bonnet = Vector(0,66,42),
					Boot = Vector(0,-66,52),
					FrontBumper = Vector(0,95,22),
					RearBumper = Vector(0,-95,22),
					Doors = Vector(0,0,0),
					Spoiler = Vector(0,-87,48),
					Lights = Vector(0,0,0),
					Seats = Vector(0,0,0),
					Engine = Vector(0,65,30),
					Wheels = Vector(0,0,0),
					SteeringWheel = Vector(0,0,0)
				}
			end
		end)
	end)]]
end
