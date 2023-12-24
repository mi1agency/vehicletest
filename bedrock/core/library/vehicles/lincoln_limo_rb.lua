AddCSLuaFile()

local VehicleName = "Lincoln Limo Presidential (RB)"

local EMV = {}

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

EMV.Siren = 6

EMV.Props = {
	{
		--Grill lys
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = 0.8,
		Pos = Vector(-9, 165.031, 33),
		Ang = Angle( -10, 97, 0)
	},
		{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = 0.8,
		Pos = Vector(9, 165.031, 33),
		Ang = Angle( -10, 83, 0)
	},	
		{
		--Antenne
		Model = "models/lonewolfie/ariel.mdl",
		Scale = 0.8,
		Pos = Vector(48, -115, 15),
		Ang = Angle( 0, 0, 20)
	},
		{
		--Spejl
		Model = "models/hunter/blocks/cube2x8x05.mdl",
		Scale = .02,
		Pos = Vector(0.62, 68.92, 57.1),
		Ang = Angle( 90, 90, 10),
		Material = "phoenix_storms/fender_white",
		Color = Color( 50, 50, 50, 255 )
	},
		{
		Model = "models/hunter/blocks/cube2x4x05.mdl",
		Scale = .02,
		Pos = Vector(-3.592, 69.663, 57.1),
		Ang = Angle( 90, 90, 10),
		Material = "phoenix_storms/fender_white",
		Color = Color( 50, 50, 50, 255 )
	},
}

EMV.Meta = {
	grill_light = {
		AngleOffset = -90,
		W =5,
		H =5,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		WMult = 1.6,
		Scale = 2,
	},
	window_lights = {
		AngleOffset = -90,
		W =5.5,
		H =4,
		Sprite = "sprites/emv/whelen_freedom_main",
		WMult = 1.6,
		Scale = 2,
	},
}

EMV.Positions = {

	[1] = { Vector(-9, 165.34, 33.05), Angle(0,7,10), "grill_light" },
	[2] = { Vector(9, 165.34, 33.05), Angle(0,-7,10), "grill_light" },

	[3] = { Vector(21.61, -109.5, 60.4), Angle(0,180,0), "window_lights" },
	[4] = { Vector(-21.61, -109.5, 60.4), Angle(0,180,0), "window_lights" },
	
	[5] = { Vector(3, 69.3, 60), Angle(0,0,0), "window_lights" },
	[6] = { Vector(-3, 69.3, 60), Angle(0,0,0), "window_lights" },

}

EMV.Sections = {
	["grill_lights"] = {
		{{1,R},{2,B},},
		{{1,R},},
		{{2,B},},
		{{1,R},{2,B},},
	},
	["rear_window"] = {
		{{3,B},{4,R},},
		{{3,B},},
		{{4,R},},
		{{3,B},{4,R},},
	},	
	["front_window"] = {
		{{5,B},{6,R},},
		{{6,R},},
		{{5,B},},
		{{6,R},{5,B},},
	}
}

EMV.Patterns = {
	["grill_lights"] = {
		["flash"] = {
			2,2,0,2,2,0,3,3,0,3,3,0
		}
    },
	["rear_window"] = {
		["flash"] = {
			2,2,0,2,2,0,3,3,0,3,3,0
		}
	},
	["front_window"] = {
		["flash"] = {
			3,3,0,3,3,0,2,2,0,2,2,0
		}
	}
}

EMV.Sequences = {
	Sequences = {
		{ 
			Name = "NIVEAU 1",
			Components = {
				["grill_lights"] = "flash",
				["rear_window"] = "flash",			
			},
            Disconnect = {} 
        },	
		{
			Name = "NIVEAU 2",
			Components = {
				["grill_lights"] = "flash",
				["front_window"] = "flash",
				["rear_window"] = "flash",		
			},
			Disconnect = {}
		},
	}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Emergency Vehicles",
	Author = "Metro",
	Model = "models/sentry/static/lincolntclimo.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/towncarlimo.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end