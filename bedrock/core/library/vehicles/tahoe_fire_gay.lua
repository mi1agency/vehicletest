AddCSLuaFile()

local VehicleName = "2006 Tahoe Fire"

local EMV = {}

EMV.Siren = 24
EMV.Skin = 1
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Body1
	{ 2, 0 }, -- Body2
	{ 3, 0 }, -- clamped1
	{ 4, 0 }, -- clamped2
}

EMV.Auto = {
	{
		ID = "Whelen Edge Red",
		Scale = 1,
		Pos = Vector( 0, 0, 80 ),
		Ang = Angle( 0, -90, 0 ),
	},
	{
	ID = "Whelen Ultra Freedom Mini",
	Scale = 0.8,
	Pos = Vector( -4, -83, 81 ),
	Ang = Angle( 0, 90, 0 ),
	Color1 = "RED",
	Color2 = "RED",
	Color3 = "WHITE",
	},
	{
	ID = "TDMP Whelen Ion Split",
	Scale = 1.2,
	Pos = Vector( -40, -90, 57.5 ),
	Ang = Angle( 0, 90, 0 ),
	Color1 = "RED",
	Color2 = "WHITE",	
	},
	{
	ID = "TDMP Whelen Ion Split",
	Scale = 1.2,
	Pos = Vector( 40, -90, 57.5 ),
	Ang = Angle( 0, -90, 0 ),
	Color1 = "WHITE",
	Color2 = "RED",
	},
	{
	ID = "Whelen 600",
	Scale = 0.5,
	Pos = Vector( 14, 112, 41 ),
	Ang = Angle( 0, 80, 0 ),
	Phase = "A",
	Color1 = "RED",
	},
	{
	ID = "Whelen 600",
	Scale = 0.5,
	Pos = Vector( -14, 112, 41 ),
	Ang = Angle( 0, 100, 0 ),
	Color1 = "RED",
	},
	
}


EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }
	}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Photon: Tokimune",
	Author = "Tokimune",
	Model = "models/tokicars/06tahoe_toki.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/tokiscars/06tahoe_toki.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
