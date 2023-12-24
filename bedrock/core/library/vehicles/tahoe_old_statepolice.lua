AddCSLuaFile()

local VehicleName = "2006 Tahoe State Police"

local EMV = {}

EMV.Siren = 42
EMV.Skin = 2
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
	ID = "TDMP Code3 MX7000",
		Scale = 1,
		Pos = Vector( 0, 0, 80 ),
		Ang = Angle( 0, -90, 0 ),
	},
	{
	ID = "Whelen Ion Trio",
	Scale = 0.8,
	Pos = Vector( -40, -62.3, 57.3 ),
	Ang = Angle( 0, 90, 0 ),
	Color1 = "BLUE",
	Color2 = "RED",	
	Color3 = "AMBER",	
	Phase = "A",
	},
	{
	ID = "Whelen Ion Trio",
	Scale = 0.8,
	Pos = Vector( 40, -62.3, 57.3 ),
	Ang = Angle( 0, -90, 0 ),
	Color1 = "RED",
	Color2 = "BLUE",
	Color3 = "AMBER",
	Phase = "B",	
	},
	{
	ID = "Whelen 600",
	Scale = 0.5,
	Pos = Vector( 18, 111.5, 33.5 ),
	Ang = Angle( 0, 80, 0 ),
	Color1 = "BLUE",
	},
	{
	ID = "Whelen 600",
	Scale = 0.5,
	Pos = Vector( -18, 111.5, 33.5 ),
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
