AddCSLuaFile()

EMV_Debug = false

local VehicleName = "Mercedes-Benz E63 Unmarked"

local EMV = {}

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

EMV.Siren = 6
EMV.Color = Color(15, 15, 15)

EMV.Props = {
	{
		Model = "models/tdmcars/emergency/equipment/fedsig_viper_dual.mdl",
		Pos = Vector(0, 45, 49.75),
		Ang = Angle(0, 90, 0),
		BodyGroups = {{1, 1}},
	},
	{
		Model = "models/tdmcars/emergency/equipment/whelen_700s.mdl",
		Pos = Vector(-35.5, -52, 53),
		Ang = Angle(1, 90, -80),
	},
	{
		Model = "models/tdmcars/emergency/equipment/whelen_700s.mdl",
		Pos = Vector(-35.52, -52, 53),
		Ang = Angle(1, 90, -80),
		Scale = .99,
		Material = "models/props_c17/frostedglass_01a_dx60"
	},
	{
		Model = "models/hunter/plates/plate1x2.mdl",
		Pos = Vector(-36, -52, 51.8),
		Ang = Angle(91, 100, -80),
		Scale = .02,
		Material = "phoenix_storms/iron_rails",
		Color = Color( 1, 1, 1, 255 ),
	},
	{
		Model = "models/tdmcars/emergency/equipment/whelen_700s.mdl",
		Pos = Vector(35.5, -52, 53),
		Ang = Angle(-1, -90, -80),
	},
	{
		Model = "models/tdmcars/emergency/equipment/whelen_700s.mdl",
		Pos = Vector(35.52, -52, 53),
		Ang = Angle(-1, -90, -80),
		Scale = .99,
		Material = "models/props_c17/frostedglass_01a_dx60"
	},
	{
		Model = "models/hunter/plates/plate1x2.mdl",
		Pos = Vector(36, -52, 51.8),
		Ang = Angle(-91, -100, -80),
		Scale = .02,
		Material = "phoenix_storms/iron_rails",
		Color = Color( 0, 0, 0, 255 ),
	},
	{
		Model = "models/tdmcars/emergency/equipment/fedsig_viper.mdl",
		Pos = Vector(-23, -59.9, 62.8),
		Ang = Angle(0, -90, 0),
		BodyGroups = {{1, 1}},
	},
	{
		Model = "models/tdmcars/emergency/equipment/fedsig_viper.mdl",
		Pos = Vector(23, -59.9, 62.8),
		Ang = Angle(0, -90, 0),
		BodyGroups = {{1, 1}},
	},
	{
		Model = "models/tdmcars/emergency/equipment/int_5led.mdl",
		Pos = Vector(0, -81.5, 56),
		Ang = Angle(0, 90, 180),
		Scale = 1.2,
	},
	{
		--What is this model doing here? Well, TDM left a nice big fuckin' hole in the
		--E63's rear window where the brake light is, so sooooomebody had to fix it.
		Model = "models/hunter/plates/plate025x8.mdl",
		Pos = Vector(0, -83.95, 54.2),
		Ang = Angle(90, 90, 0),
		Scale = .065,
		Material = "models/tdmcars/shared/interior_leather2_dark",
	},
}

EMV.Meta = {
	front_led_1 = {
		AngleOffset = -90,
		W = 3,
		H = 3,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1.4
	},
	front_led_2 = {
		AngleOffset = -90,
		W = 2.2,
		H = 3,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1.4
	},
	front_led_3 = {
		AngleOffset = -90,
		W = 2.67,
		H = 3,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1.4
	},
	front_led_4 = {
		AngleOffset = -90,
		W = 2.215,
		H = 3,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1.4
	},
	front_led_5 = {
		AngleOffset = -90,
		W = 2.5,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1.4
	},
	front_led_6 = {
		AngleOffset = -90,
		W = 2.5,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1.4
	},
	vindue_blink = {
		AngleOffset = -90,
		W = 3.8,
		H = 4.4,
		Sprite = "sprites/emv/fs_valor",
		WMult = 2,
		Scale = 1.4
	},
	forlygter = {
		AngleOffset = -90,
		W = 3.3,
		H = 3.3,
		Sprite = "sprites/emv/light_circle",
		Scale = 3
	},
	sidevindue = {
		AngleOffset = -90,
		W =5,
		H =5.3,
		Sprite = "sprites/emv/tdm_grille_leds",
		WMult = 1.4,
		Scale = 1.6,
	},
	baglygte_1 = {
		AngleOffset = -90,
		W =5,
		H =5.1,
		Sprite = "sprites/emv/e63_baglygte",
		WMult = 1.4,
		Scale = 1.6,
	},
	baglygte_2 = {
		AngleOffset = -90,
		W =5,
		H =5.1,
		Sprite = "sprites/emv/e63_baglygte2",
		WMult = 1.4,
		Scale = 1.6,
	},
	trafikbar = {
		AngleOffset = -90,
		W =4.5,
		H =3.5,
		Sprite = "sprites/emv/led_1x4",
		WMult = 1.5,
		Scale = 1,
	},
}

EMV.Positions = {
	--Front LED, venstre
	 [1] = { Vector(-27.13, 109.38, 18.5), Angle(20,-5,-20), "front_led_1" },
	 [2] = { Vector(-29.58, 108.84, 18.5), Angle(22.3,22.4,-1), "front_led_2" },
	 [3] = { Vector(-31.75, 107.91, 18.5), Angle(16.2,23.7,-1), "front_led_3" },
	 [4] = { Vector(-33.91, 106.91, 18.5), Angle(14.3,25.22,-3), "front_led_4" },
	 [5] = { Vector(-35.94, 105.88, 18.5), Angle(14.3,27.3,-3), "front_led_5" },
	 [6] = { Vector(-37.96, 104.82, 19), Angle(15,28.5,-4.5), "front_led_6" },

	--Front LED, højre
	 [7] = { Vector(27.13, 109.38, 18.5), Angle(-20,5,-20), "front_led_1" },
	 [8] = { Vector(29.58, 108.84, 18.5), Angle(-22.3,-22.4,-1), "front_led_2" },
	 [9] = { Vector(31.75, 107.91, 18.5), Angle(-16.2,-23.7,-1), "front_led_3" },
	 [10] = { Vector(33.91, 106.91, 18.5), Angle(-14.3,-25.22,-3), "front_led_4" },
	 [11] = { Vector(35.94, 105.88, 18.5), Angle(-14.3,-27.3,-3), "front_led_5" },
	 [12] = { Vector(37.96, 104.82, 19), Angle(-15,-28.5,-4.5), "front_led_6" },
	 
	 --Forrude
	 [13] = { Vector(-2.09, 45.62, 50.515), Angle(0,0,0), "vindue_blink" },
	 [14] = { Vector(2.09, 45.62, 50.515), Angle(0,0,0), "vindue_blink" },
	 
	 --Forlygter
	 [15] = { Vector(-35.49, 101.12, 33.23), Angle(0,-2,-4), "forlygter" },
	 [16] = { Vector(35.49, 101.12, 33.23), Angle(0,2,-4), "forlygter" },	

	 --Sidevindue
	 [17] = { Vector(-35.96, -52.03, 53.17), Angle(1,90,10), "sidevindue" },
	 [18] = { Vector(35.96, -51.96, 53.17), Angle(-1,-90,10), "sidevindue" },

	 --Bagvindue
	 [19] = { Vector(-23, -60.6, 63.57), Angle(0,180,0), "vindue_blink" },
	 [20] = { Vector(23, -60.6, 63.57), Angle(0,180,0), "vindue_blink" },
	  
	 --Baglygter
	 [21] = { Vector(26.97, -111.21, 41.52), Angle(-1,194.2,13.6), "baglygte_1" },
	 [22] = { Vector(-26.97, -111.21, 41.52), Angle(1,-194.2,13.6), "baglygte_2" },
	 
	 --Trafikbar
	 [23] = { Vector(-8.85, -83, 55.27), Angle(0,180,0), "trafikbar" },
	 [24] = { Vector(-4.44, -83, 55.27), Angle(0,180,0), "trafikbar" },
	 [25] = { Vector(0, -83, 55.27), Angle(0,180,0), "trafikbar" },
	 [26] = { Vector(4.44, -83, 55.27), Angle(0,180,0), "trafikbar" },
	 [27] = { Vector(8.85, -83, 55.27), Angle(0,180,0), "trafikbar" },
	 
}

EMV.Sections = {
	["front_led"] = {
		{{1,B},{2,B},{3,B},{4,B},{5,B},{6,B},{7,B},{8,B},{9,B},{10,B},{11,B},{12,B},},
		{{1,B},{2,B},{3,B},{4,B},{5,B},{6,B},},
		{{7,B},{8,B},{9,B},{10,B},{11,B},{12,B},},
		{{1,CW},{2,CW},{3,CW},{4,CW},{5,CW},{6,CW},},
		{{7,CW},{8,CW},{9,CW},{10,CW},{11,CW},{12,CW},},
		{{1,CW},{2,CW},{3,CW},{4,CW},{5,CW},{6,CW},{7,CW},{8,CW},{9,CW},{10,CW},{11,CW},{12,CW},},
	},
	["vindue_blink"] = {
		{{13,B},{14,B},{19,B},{20,B},},
		{{13,B},{20,B},},
		{{14,B},{19,B},},
	},
	["forlygter"] = {
		{ { 15, CW, { 16, .2, 10 } }, { 16, CW, { 16, .2, 0 } }, }
	},
	["sidevindue"] = {
		{{17,B},{18,B},},
		{{17,B},},
		{{18,B},},
	},
	["baglygter"] = {
		{{21,B},{22,B},},
		{{21,B},},
		{{22,B},},
		{{21,CW},},
		{{22,CW},},
	},
	["trafikbar"] = {
		{{23,A},{24,A},{25,A},{26,A},{27,A},},
		{{23,A},},
		{{23,A},{24,A},},
		{{23,A},{24,A},{25,A},},
		{{23,A},{24,A},{25,A},{26,A},},
		{{23,A},{24,A},{25,A},{26,A},{27,A},},
		{{27,A},},
		{{27,A},{26,A},},
		{{27,A},{26,A},{25,A},},
		{{27,A},{26,A},{25,A},{24,A},},
		{{27,A},{26,A},{25,A},{24,A},{23,A},},
		{{25,A},},
		{{24,A},{25,A},{26,A},},
	},
}

EMV.Patterns = {
	["front_led"] = {
		["alle"] = {
			1
		},
		["code1"] = {
			2,2,0,2,2,0,3,3,0,3,3,
		},
		["code2"] = {
			2,2,3,3,2,2,3,3,2,2,3,3,2,2,3,3,
			2,2,3,3,2,2,3,3,2,2,3,3,2,2,3,3,
		},
		["code3"] = {
			2,2,3,3,2,2,3,3,2,2,3,3,2,2,3,3,
			2,2,3,3,2,2,3,3,2,2,3,3,2,2,3,3,
			4,4,5,5,4,4,5,5,4,4,5,5,4,4,5,5,
			4,4,5,5,4,4,5,5,4,4,5,5,4,4,5,5,
			1,1,0,6,6,0,1,1,0,6,6,0,1,1,0,6,6,0,1,1,0,6,6,0,
			1,1,0,6,6,0,1,1,0,6,6,0,1,1,0,6,6,0,1,1,0,6,6,0,
		},
	},
	["vindue_blink"] = {
		["alle"] = {
			1
		},
		["code1"] = {
			3,3,0,3,3,0,2,2,0,2,2,
		},
		["code3"] = {

		},
	},
	["forlygter"] = {
		["alle"] = {
			1
		}
	},
	["sidevindue"] = {
		["alle"] = {
			1
		},
		["code1"] = {
			3,3,0,3,3,0,2,2,0,2,2,
		},
		["code3"] = {

		},
	},
	["baglygter"] = {
		["alle"] = {
			1
		},
		["code2"] = {
			3,3,0,3,3,0,2,2,0,2,2,
		},
		["code3"] = {
			2,2,3,3,2,2,3,3,2,2,3,3,2,2,3,3,
			2,2,3,3,2,2,3,3,2,2,3,3,2,2,3,3,
			4,4,5,5,4,4,5,5,4,4,5,5,4,4,5,5,
			4,4,5,5,4,4,5,5,4,4,5,5,4,4,5,5,
		},
	},
	["trafikbar"] = {
		["alle"] = {
			1
		},
		["left"] = {
			7,7,7,8,8,8,9,9,9,10,10,10,11,11,11,0,
		},
		["diverge"] = {
			12,12,12,12,13,13,13,13,1,1,1,1,0
		},
		["right"] = {
			2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,0,
		},
		--This is needed for the traffic bar to work. Thanks to SuperMighty for helping me with it!
		["standy"] = {}
	},
}

EMV.Sequences = {
		Sequences = {
		{
			Name = "CODE 1",
			Components = {
				["front_led"] = "code1",
				["vindue_blink"] = "code1",	
                ["trafikbar"] = "standy",
			},
			Disconnect = {}
		},
		{
			Name = "CODE 2",
			Components = {
				["front_led"] = "code2",
				["vindue_blink"] = "code1",
				["sidevindue"] = "code1",
				["baglygter"] = "code2",
                ["trafikbar"] = "standy",
			},
			Disconnect = {}
		},
		{
			Name = "CODE 3",
			Components = {
				["front_led"] = "code3",
				["vindue_blink"] = "code1",
				["forlygter"] = "alle",
				["sidevindue"] = "code1",
				["baglygter"] = "code3",
                ["trafikbar"] = "standy",
			},
			Disconnect = {}
		},
	},
	Traffic = {
		{
			Name = "Left",
			Components = {
				["trafikbar"] = "left",
			},
			Disconnect = {}
		},
		{
			Name = "Diverge",
			Components = {
				["trafikbar"] = "diverge",
			},
			Disconnect = {}
		},
		{
			Name = "Right",
			Components = {
				["trafikbar"] = "right",
			},
			Disconnect = {}
		},
	},
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Emergency Vehicles",
	Author = "Metro",
	Model = "models/tdmcars/mer_e63.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/tdmcars/mere63.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
