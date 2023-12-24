AddCSLuaFile()

local VehicleName = "2020 Ford Police Interceptor Utility [Lily]"

local EMV = {}
local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE"
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"


EMV.Siren = 23
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- car
	{ 1, 0 }, -- pushbar
	{ 2, 0 }, -- grillelights
	{ 3, 1 }, -- mirrorlights
	{ 4, 0 }, -- visorlights
	{ 5, 0 }, -- lightbar
	{ 6, 0 }, -- spotlight_l
	{ 7, 0 }, -- spotlight_r
	{ 8, 0 }, -- headlightflashers
	{ 9, 0 }, -- spoilerlights
	{ 10, 0 }, -- trunklights
	{ 11, 0 }, -- rearwindowlights
	{ 12, 0 }, -- clamped1
	{ 13, 0 }, -- clamped2
	{ 14, 0 }, -- clamped3
	{ 15, 0 }, -- clamped4
	{ 16, 0 }, -- clamped5
	{ 17, 0 }, -- clamped6
	{ 18, 0 }, -- clamped7
}

EMV.Auto = {
	-- R/B
[1] =	{
		ID = "Lilys 2020 FPIU Lightbar",
		Scale = 1.25,
		Pos = Vector( 0, 0, 87.5 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
			},
		},
[2] =	{ 
	ID = "Lilys 2020 FPIU Interior Lightbar",
	Scale = 1.25,
	Pos = Vector( 27, 27.5, 78.2 ),
	Ang = Angle( 0, 0, 0 ),
	Color1 = "RED",
	Color2 = "BLUE",
	Skin = 0,
	Bodygroups = {
		{ 1, 2 }  
		},
	},
[3] =	{ 
		ID = "Lilys 2020 FPIU Exterior Lightbar",
		Scale = 1.25,
		Pos = Vector( -0, -102.5, 79.35 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
		},
	},
[4] =	{ 
		ID = "Lilys 2020 FPIU Rear Interior Lightbar",
		Scale = 1.25,
		Pos = Vector( -0, -102.5, 79.35 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
		},
	},
[5] =	{ 
		ID = "Lilys 2020 FPIU Rear Trunk Lightbar",
		Scale = 1.25,
		Pos = Vector( -0, -102.5, 0.35 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
		},
	},
[6] =	{ 
		ID = "Lilys 2020 FPIU Mirror",
		Scale = 1.25,
		Pos = Vector( -0, 52.5, 5.35 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
		},
	},
[7] =	{ 
		ID = "Lilys 2020 FPIU Grill",
		Scale = 1.25,
		Pos = Vector( -0, 122.5, 5.35 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
		},
	},
[8] =	{ 
		ID = "Lilys 2020 FPIU Rambar Top",
		Scale = 1.25,
		Pos = Vector( -0, 127.5, 15.35 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
		},
	},
[9]	= { 
		ID = "Lilys 2020 FPIU Rambar Side",
		Scale = 1.25,
		Pos = Vector( -0, 127.5, 15.35 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
		},
	},
[10] =	{ 
		ID = "Lilys 2020 FPIU Headlight Flashers White",
		Scale = 1.25,
		Pos = Vector( -0, 122.5, 5.35 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "C_WHITE",
		Color2 = "C_WHITE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
		},
	},
[11]  =	{ 
		ID = "Lilys 2020 FPIU Headlight Flashers RB",
		Scale = 1.25,
		Pos = Vector( -0, 122.5, 5.35 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
		},
	},
[12] =	{ 
		ID = "Lilys 2020 FPIU Foglights",
		Scale = 1.25,
		Pos = Vector( -0, 122.5, 5.35 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
		},
	},
[13] =	{ 
		ID = "Lilys 2020 FPIU Interior Lightbar Stock",
		Scale = 1.25,
		Pos = Vector( 27, 27.5, 78.2 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
			},
		},
[14] =	{ 
			ID = "Lilys 2020 FPIU Exterior Lightbar Stock",
			Scale = 1.25,
			Pos = Vector( -0, -102.5, 79.35 ),
			Ang = Angle( 0, 180, 0 ),
			Color1 = "RED",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
			},
		},
		-- B/B Section
		[15] =	{
			ID = "Lilys 2020 FPIU Lightbar",
			Scale = 1.25,
			Pos = Vector( 0, 0, 87.5 ),
			Ang = Angle( 0, 0, 0 ),
			Color1 = "BLUE",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
				},
			},
	[16] =	{ 
		ID = "Lilys 2020 FPIU Interior Lightbar",
		Scale = 1.25,
		Pos = Vector( 27, 27.5, 78.2 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Skin = 0,
		Bodygroups = {
			{ 1, 2 }  
			},
		},
	[17] =	{ 
			ID = "Lilys 2020 FPIU Exterior Lightbar",
			Scale = 1.25,
			Pos = Vector( -0, -102.5, 79.35 ),
			Ang = Angle( 0, 180, 0 ),
			Color1 = "BLUE",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
			},
		},
	[18] =	{ 
			ID = "Lilys 2020 FPIU Rear Interior Lightbar",
			Scale = 1.25,
			Pos = Vector( -0, -102.5, 79.35 ),
			Ang = Angle( 0, 180, 0 ),
			Color1 = "BLUE",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
			},
		},
	[19] =	{ 
			ID = "Lilys 2020 FPIU Rear Trunk Lightbar",
			Scale = 1.25,
			Pos = Vector( -0, -102.5, 0.35 ),
			Ang = Angle( 0, 180, 0 ),
			Color1 = "BLUE",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
			},
		},
	[20] =	{ 
			ID = "Lilys 2020 FPIU Mirror",
			Scale = 1.25,
			Pos = Vector( -0, 52.5, 5.35 ),
			Ang = Angle( 0, 0, 0 ),
			Color1 = "BLUE",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
			},
		},
	[21] =	{ 
			ID = "Lilys 2020 FPIU Grill",
			Scale = 1.25,
			Pos = Vector( -0, 122.5, 5.35 ),
			Ang = Angle( 0, 0, 0 ),
			Color1 = "BLUE",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
			},
		},
	[22] =	{ 
			ID = "Lilys 2020 FPIU Rambar Top",
			Scale = 1.25,
			Pos = Vector( -0, 127.5, 15.35 ),
			Ang = Angle( 0, 0, 0 ),
			Color1 = "BLUE",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
			},
		},
	[23]	= { 
			ID = "Lilys 2020 FPIU Rambar Side",
			Scale = 1.25,
			Pos = Vector( -0, 127.5, 15.35 ),
			Ang = Angle( 0, 0, 0 ),
			Color1 = "BLUE",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
			},
		},
	[24]  =	{ 
			ID = "Lilys 2020 FPIU Headlight Flashers RB",
			Scale = 1.25,
			Pos = Vector( -0, 122.5, 5.35 ),
			Ang = Angle( 0, 0, 0 ),
			Color1 = "BLUE",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
			},
		},
	[25] =	{ 
			ID = "Lilys 2020 FPIU Foglights",
			Scale = 1.25,
			Pos = Vector( -0, 122.5, 5.35 ),
			Ang = Angle( 0, 0, 0 ),
			Color1 = "BLUE",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
			},
		},
	[26] =	{ 
			ID = "Lilys 2020 FPIU Interior Lightbar Stock",
			Scale = 1.25,
			Pos = Vector( 27, 27.5, 78.2 ),
			Ang = Angle( 0, 0, 0 ),
			Color1 = "BLUE",
			Color2 = "BLUE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
				},
			},
	[27] =	{ 
				ID = "Lilys 2020 FPIU Exterior Lightbar Stock",
				Scale = 1.25,
				Pos = Vector( -0, -102.5, 79.35 ),
				Ang = Angle( 0, 180, 0 ),
				Color1 = "BLUE",
				Color2 = "BLUE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
			[28] =	{ 
				ID = "Lilys 2020 FPIU Headlight Flashers White",
				Scale = 1.25,
				Pos = Vector( -0, 122.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "C_WHITE",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
			-- R/R

			[29] =	{
				ID = "Lilys 2020 FPIU Lightbar",
				Scale = 1.25,
				Pos = Vector( 0, 0, 87.5 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "RED",
				Color2 = "RED",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
					},
				},
		[30] =	{ 
			ID = "Lilys 2020 FPIU Interior Lightbar",
			Scale = 1.25,
			Pos = Vector( 27, 27.5, 78.2 ),
			Ang = Angle( 0, 0, 0 ),
			Color1 = "RED",
			Color2 = "RED",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
				},
			},
		[31] =	{ 
				ID = "Lilys 2020 FPIU Exterior Lightbar",
				Scale = 1.25,
				Pos = Vector( -0, -102.5, 79.35 ),
				Ang = Angle( 0, 180, 0 ),
				Color1 = "RED",
				Color2 = "RED",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[32] =	{ 
				ID = "Lilys 2020 FPIU Rear Interior Lightbar",
				Scale = 1.25,
				Pos = Vector( -0, -102.5, 79.35 ),
				Ang = Angle( 0, 180, 0 ),
				Color1 = "RED",
				Color2 = "RED",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[33] =	{ 
				ID = "Lilys 2020 FPIU Rear Trunk Lightbar",
				Scale = 1.25,
				Pos = Vector( -0, -102.5, 0.35 ),
				Ang = Angle( 0, 180, 0 ),
				Color1 = "RED",
				Color2 = "RED",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[34] =	{ 
				ID = "Lilys 2020 FPIU Mirror",
				Scale = 1.25,
				Pos = Vector( -0, 52.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "RED",
				Color2 = "RED",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[35] =	{ 
				ID = "Lilys 2020 FPIU Grill",
				Scale = 1.25,
				Pos = Vector( -0, 122.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "RED",
				Color2 = "RED",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[36] =	{ 
				ID = "Lilys 2020 FPIU Rambar Top",
				Scale = 1.25,
				Pos = Vector( -0, 127.5, 15.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "RED",
				Color2 = "RED",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[37]	= { 
				ID = "Lilys 2020 FPIU Rambar Side",
				Scale = 1.25,
				Pos = Vector( -0, 127.5, 15.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "RED",
				Color2 = "RED",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[38]  =	{ 
				ID = "Lilys 2020 FPIU Headlight Flashers RB",
				Scale = 1.25,
				Pos = Vector( -0, 122.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "RED",
				Color2 = "RED",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[39] =	{ 
				ID = "Lilys 2020 FPIU Foglights",
				Scale = 1.25,
				Pos = Vector( -0, 122.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "RED",
				Color2 = "RED",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[40] =	{ 
				ID = "Lilys 2020 FPIU Interior Lightbar Stock",
				Scale = 1.25,
				Pos = Vector( 27, 27.5, 78.2 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "RED",
				Color2 = "RED",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
					},
				},
		[41] =	{ 
					ID = "Lilys 2020 FPIU Exterior Lightbar Stock",
					Scale = 1.25,
					Pos = Vector( -0, -102.5, 79.35 ),
					Ang = Angle( 0, 180, 0 ),
					Color1 = "RED",
					Color2 = "RED",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
				[42] =	{ 
					ID = "Lilys 2020 FPIU Headlight Flashers White",
					Scale = 1.25,
					Pos = Vector( -0, 122.5, 5.35 ),
					Ang = Angle( 0, 0, 0 ),
					Color1 = "C_WHITE",
					Color2 = "C_WHITE",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},		
				-- A/A

			[43] =	{
				ID = "Lilys 2020 FPIU Lightbar",
				Scale = 1.25,
				Pos = Vector( 0, 0, 87.5 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "AMBER",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
					},
				},
		[44] =	{ 
			ID = "Lilys 2020 FPIU Interior Lightbar",
			Scale = 1.25,
			Pos = Vector( 27, 27.5, 78.2 ),
			Ang = Angle( 0, 0, 0 ),
			Color1 = "AMBER",
			Color2 = "AMBER",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
				},
			},
		[45] =	{ 
				ID = "Lilys 2020 FPIU Exterior Lightbar",
				Scale = 1.25,
				Pos = Vector( -0, -102.5, 79.35 ),
				Ang = Angle( 0, 180, 0 ),
				Color1 = "AMBER",
				Color2 = "AMBER",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[46] =	{ 
				ID = "Lilys 2020 FPIU Rear Interior Lightbar",
				Scale = 1.25,
				Pos = Vector( -0, -102.5, 79.35 ),
				Ang = Angle( 0, 180, 0 ),
				Color1 = "AMBER",
				Color2 = "AMBER",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[47] =	{ 
				ID = "Lilys 2020 FPIU Rear Trunk Lightbar",
				Scale = 1.25,
				Pos = Vector( -0, -102.5, 0.35 ),
				Ang = Angle( 0, 180, 0 ),
				Color1 = "AMBER",
				Color2 = "AMBER",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[48] =	{ 
				ID = "Lilys 2020 FPIU Mirror",
				Scale = 1.25,
				Pos = Vector( -0, 52.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "AMBER",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[49] =	{ 
				ID = "Lilys 2020 FPIU Grill",
				Scale = 1.25,
				Pos = Vector( -0, 122.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "AMBER",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[50] =	{ 
				ID = "Lilys 2020 FPIU Rambar Top",
				Scale = 1.25,
				Pos = Vector( -0, 127.5, 15.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "AMBER",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[51]	= { 
				ID = "Lilys 2020 FPIU Rambar Side",
				Scale = 1.25,
				Pos = Vector( -0, 127.5, 15.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "AMBER",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[52]  =	{ 
				ID = "Lilys 2020 FPIU Headlight Flashers RB",
				Scale = 1.25,
				Pos = Vector( -0, 122.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "AMBER",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[53] =	{ 
				ID = "Lilys 2020 FPIU Foglights",
				Scale = 1.25,
				Pos = Vector( -0, 122.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "AMBER",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[54] =	{ 
				ID = "Lilys 2020 FPIU Interior Lightbar Stock",
				Scale = 1.25,
				Pos = Vector( 27, 27.5, 78.2 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "AMBER",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
					},
				},
		[55] =	{ 
					ID = "Lilys 2020 FPIU Exterior Lightbar Stock",
					Scale = 1.25,
					Pos = Vector( -0, -102.5, 79.35 ),
					Ang = Angle( 0, 180, 0 ),
					Color1 = "AMBER",
					Color2 = "AMBER",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
				[56] =	{ 
					ID = "Lilys 2020 FPIU Headlight Flashers White",
					Scale = 1.25,
					Pos = Vector( -0, 122.5, 5.35 ),
					Ang = Angle( 0, 0, 0 ),
					Color1 = "C_WHITE",
					Color2 = "C_WHITE",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},	
			-- 	A/W

			[57] =	{
				ID = "Lilys 2020 FPIU Lightbar",
				Scale = 1.25,
				Pos = Vector( 0, 0, 87.5 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
					},
				},
		[58] =	{ 
			ID = "Lilys 2020 FPIU Interior Lightbar",
			Scale = 1.25,
			Pos = Vector( 27, 27.5, 78.2 ),
			Ang = Angle( 0, 0, 0 ),
			Color1 = "AMBER",
			Color2 = "C_WHITE",
			Skin = 0,
			Bodygroups = {
				{ 1, 2 }  
				},
			},
		[59] =	{ 
				ID = "Lilys 2020 FPIU Exterior Lightbar",
				Scale = 1.25,
				Pos = Vector( -0, -102.5, 79.35 ),
				Ang = Angle( 0, 180, 0 ),
				Color1 = "AMBER",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[60] =	{ 
				ID = "Lilys 2020 FPIU Rear Interior Lightbar",
				Scale = 1.25,
				Pos = Vector( -0, -102.5, 79.35 ),
				Ang = Angle( 0, 180, 0 ),
				Color1 = "AMBER",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[61] =	{ 
				ID = "Lilys 2020 FPIU Rear Trunk Lightbar",
				Scale = 1.25,
				Pos = Vector( -0, -102.5, 0.35 ),
				Ang = Angle( 0, 180, 0 ),
				Color1 = "AMBER",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[62] =	{ 
				ID = "Lilys 2020 FPIU Mirror",
				Scale = 1.25,
				Pos = Vector( -0, 52.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[63] =	{ 
				ID = "Lilys 2020 FPIU Grill",
				Scale = 1.25,
				Pos = Vector( -0, 122.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[64] =	{ 
				ID = "Lilys 2020 FPIU Rambar Top",
				Scale = 1.25,
				Pos = Vector( -0, 127.5, 15.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[65]	= { 
				ID = "Lilys 2020 FPIU Rambar Side",
				Scale = 1.25,
				Pos = Vector( -0, 127.5, 15.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[66]  =	{ 
				ID = "Lilys 2020 FPIU Headlight Flashers RB",
				Scale = 1.25,
				Pos = Vector( -0, 122.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[67] =	{ 
				ID = "Lilys 2020 FPIU Foglights",
				Scale = 1.25,
				Pos = Vector( -0, 122.5, 5.35 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
				},
			},
		[68] =	{ 
				ID = "Lilys 2020 FPIU Interior Lightbar Stock",
				Scale = 1.25,
				Pos = Vector( 27, 27.5, 78.2 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "AMBER",
				Color2 = "C_WHITE",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
					},
				},
		[69] =	{ 
					ID = "Lilys 2020 FPIU Exterior Lightbar Stock",
					Scale = 1.25,
					Pos = Vector( -0, -102.5, 79.35 ),
					Ang = Angle( 0, 180, 0 ),
					Color1 = "AMBER",
					Color2 = "C_WHITE",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
				[70] =	{ 
					ID = "Lilys 2020 FPIU Headlight Flashers White",
					Scale = 1.25,
					Pos = Vector( -0, 122.5, 5.35 ),
					Ang = Angle( 0, 0, 0 ),
					Color1 = "C_WHITE",
					Color2 = "C_WHITE",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},			
				-- G/G

				[71] =	{
					ID = "Lilys 2020 FPIU Lightbar",
					Scale = 1.25,
					Pos = Vector( 0, 0, 87.5 ),
					Ang = Angle( 0, 0, 0 ),
					Color1 = "GREEN",
					Color2 = "GREEN",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
						},
					},
			[72] =	{ 
				ID = "Lilys 2020 FPIU Interior Lightbar",
				Scale = 1.25,
				Pos = Vector( 27, 27.5, 78.2 ),
				Ang = Angle( 0, 0, 0 ),
				Color1 = "GREEN",
				Color2 = "GREEN",
				Skin = 0,
				Bodygroups = {
					{ 1, 2 }  
					},
				},
			[73] =	{ 
					ID = "Lilys 2020 FPIU Exterior Lightbar",
					Scale = 1.25,
					Pos = Vector( -0, -102.5, 79.35 ),
					Ang = Angle( 0, 180, 0 ),
					Color1 = "GREEN",
					Color2 = "GREEN",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
			[74] =	{ 
					ID = "Lilys 2020 FPIU Rear Interior Lightbar",
					Scale = 1.25,
					Pos = Vector( -0, -102.5, 79.35 ),
					Ang = Angle( 0, 180, 0 ),
					Color1 = "GREEN",
					Color2 = "GREEN",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
			[75] =	{ 
					ID = "Lilys 2020 FPIU Rear Trunk Lightbar",
					Scale = 1.25,
					Pos = Vector( -0, -102.5, 0.35 ),
					Ang = Angle( 0, 180, 0 ),
					Color1 = "GREEN",
					Color2 = "GREEN",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
			[76] =	{ 
					ID = "Lilys 2020 FPIU Mirror",
					Scale = 1.25,
					Pos = Vector( -0, 52.5, 5.35 ),
					Ang = Angle( 0, 0, 0 ),
					Color1 = "GREEN",
					Color2 = "GREEN",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
			[77] =	{ 
					ID = "Lilys 2020 FPIU Grill",
					Scale = 1.25,
					Pos = Vector( -0, 122.5, 5.35 ),
					Ang = Angle( 0, 0, 0 ),
					Color1 = "GREEN",
					Color2 = "GREEN",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
			[78] =	{ 
					ID = "Lilys 2020 FPIU Rambar Top",
					Scale = 1.25,
					Pos = Vector( -0, 127.5, 15.35 ),
					Ang = Angle( 0, 0, 0 ),
					Color1 = "GREEN",
					Color2 = "GREEN",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
			[79]	= { 
					ID = "Lilys 2020 FPIU Rambar Side",
					Scale = 1.25,
					Pos = Vector( -0, 127.5, 15.35 ),
					Ang = Angle( 0, 0, 0 ),
					Color1 = "GREEN",
					Color2 = "GREEN",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
			[80]  =	{ 
					ID = "Lilys 2020 FPIU Headlight Flashers RB",
					Scale = 1.25,
					Pos = Vector( -0, 122.5, 5.35 ),
					Ang = Angle( 0, 0, 0 ),
					Color1 = "GREEN",
					Color2 = "GREEN",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
			[81] =	{ 
					ID = "Lilys 2020 FPIU Foglights",
					Scale = 1.25,
					Pos = Vector( -0, 122.5, 5.35 ),
					Ang = Angle( 0, 0, 0 ),
					Color1 = "GREEN",
					Color2 = "GREEN",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
					},
				},
			[82] =	{ 
					ID = "Lilys 2020 FPIU Interior Lightbar Stock",
					Scale = 1.25,
					Pos = Vector( 27, 27.5, 78.2 ),
					Ang = Angle( 0, 0, 0 ),
					Color1 = "GREEN",
					Color2 = "GREEN",
					Skin = 0,
					Bodygroups = {
						{ 1, 2 }  
						},
					},
			[83] =	{ 
						ID = "Lilys 2020 FPIU Exterior Lightbar Stock",
						Scale = 1.25,
						Pos = Vector( -0, -102.5, 79.35 ),
						Ang = Angle( 0, 180, 0 ),
						Color1 = "GREEN",
						Color2 = "GREEN",
						Skin = 0,
						Bodygroups = {
							{ 1, 2 }  
						},
					},
					[84] =	{ 
						ID = "Lilys 2020 FPIU Headlight Flashers White",
						Scale = 1.25,
						Pos = Vector( -0, 122.5, 5.35 ),
						Ang = Angle( 0, 0, 0 ),
						Color1 = "C_WHITE",
						Color2 = "C_WHITE",
						Skin = 0,
						Bodygroups = {
							{ 1, 2 }  
						},
					},					

}

EMV.Selections = {
	{
		Name = "Preset",
		Options = {
		 -- R/B
		 { Category = "Red/Blue", Name = "Marked Custom", Auto = {1,2,3,4,5,6,7,8,9,10,11,12}, Props = {  } },
		 { Category = "Red/Blue", Name = "Marked Stock", Auto = {1,4,5,6,7,8,9,10,11,12,13,14}, Props = {  } },
		 { Category = "Red/Blue", Name = "Slicktop Stock", Auto = {4,5,6,7,8,9,10,11,12,13,14}, Props = {  } },
		 { Category = "Red/Blue", Name = "Slicktop Custom", Auto = {2,3,4,5,6,7,8,9,10,11,12}, Props = {  } },
		 -- B/B
		 { Category = "Blue/Blue", Name = "Marked Custom", Auto = {15,16,17,18,19,20,21,22,23,24,25,28}, Props = {  } },
		 { Category = "Blue/Blue", Name = "Marked Stock", Auto = {15,26,27,18,19,20,21,22,23,24,25,28}, Props = {  } },
		 { Category = "Blue/Blue", Name = "Slicktop Custom", Auto = {16,17,18,19,20,21,22,23,24,25,28}, Props = {  } },
		 { Category = "Blue/Blue", Name = "Slicktop Stock", Auto = {26,27,18,19,20,21,22,23,24,25,28}, Props = {  } },
		 -- R/R
		 { Category = "Red/Red", Name = "Marked Custom", Auto = {29,30,31,32,33,34,35,36,37,38,39,42}, Props = {  } },
		 { Category = "Red/Red", Name = "Marked Stock", Auto = {29,41,40,32,33,34,35,36,37,38,39,42}, Props = {  } },
		 { Category = "Red/Red", Name = "Slicktop Custom", Auto = {30,31,32,33,34,35,36,37,38,39,42}, Props = {  } },
		 { Category = "Red/Red", Name = "Slicktop Stock", Auto = {41,40,32,33,34,35,36,37,38,39,42}, Props = {  } },
		 -- A/A
		 { Category = "Amber/Amber", Name = "Marked Custom", Auto = {43,44,45,46,47,48,49,50,51,52,53}, Props = {  } },
		 { Category = "Amber/Amber", Name = "Marked Stock", Auto = {43,54,55,46,47,48,49,50,51,52,53}, Props = {  } },
		 { Category = "Amber/Amber", Name = "Slicktop Custom", Auto = {44,45,46,47,48,49,50,51,52,53}, Props = {  } },
		 { Category = "Amber/Amber", Name = "Slicktop Stock", Auto = {54,55,46,47,48,49,50,51,52,53}, Props = {  } },
		 -- A/W
		 { Category = "Amber/White", Name = "Marked Custom", Auto = {57,58,59,60,61,62,63,64,65,66,67,70}, Props = {  } },
		 { Category = "Amber/White", Name = "Marked Stock", Auto = {57,68,69,60,61,62,63,64,65,66,67,70}, Props = {  } },
		 { Category = "Amber/White", Name = "Slicktop Custom", Auto = {58,59,60,61,62,63,64,65,66,67,70}, Props = {  } },
		 { Category = "Amber/White", Name = "Slicktop Stock", Auto = {68,69,60,61,62,63,64,65,66,67,70}, Props = {  } },
		 -- G/G
		 { Category = "Green/Green", Name = "Marked Custom", Auto = {71,72,73,74,75,76,77,78,79,80,81,84}, Props = {  } },
		 { Category = "Green/Green", Name = "Marked Stock", Auto = {71,82,83,74,75,76,77,78,79,80,81,84}, Props = {  } },
		 { Category = "Green/Green", Name = "Slicktop Custom", Auto = {72,73,74,75,76,77,78,79,80,81,84}, Props = {  } },
		 { Category = "Green/Green", Name = "Slicktop Stock", Auto = {82,83,74,75,76,77,78,79,80,81,84}, Props = {  } },
		 -- Nothing
		 { Name = "Stock", Auto = {}, Props = {  } },


		},
	},
	{
		Name = "Lightbar",
		Options = {
		 { Name = "None", Auto = {}, Props = {  } },
		 {  Name = "Red/Blue", Auto = {1}, Props = {  } },
		 {  Name = "Blue/Blue", Auto = {15}, Props = {  } },
		 {  Name = "Red/Red", Auto = {29}, Props = {  } },
		 {  Name = "Amber/Amber", Auto = {43}, Props = {  } },
		 {  Name = "Amber/White", Auto = {57}, Props = {  } },
		 {  Name = "Green/Green", Auto = {71}, Props = {  } },
		},
	},
	{
		Name = "Visor Lights",
		Options = {
		 { Name = "None", Auto = {}, Props = {  } },
		 -- R/B
		 { Category = "Red/Blue", Name = "Custom", Auto = {2}, Props = {  } },
		 { Category = "Red/Blue", Name = "Stock", Auto = {13}, Props = {  } },
		 -- B/B
		 { Category = "Blue/Blue", Name = "Custom", Auto = {16}, Props = {  } },
		 { Category = "Blue/Blue", Name = "Stock", Auto = {26}, Props = {  } },
		 -- R/R
		 { Category = "Red/Red", Name = "Custom", Auto = {30}, Props = {  } },
		 { Category = "Red/Red", Name = "Stock", Auto = {41}, Props = {  } },
		 -- A/A
		 { Category = "Amber/Amber", Name = "Custom", Auto = {44}, Props = {  } },
		 { Category = "Amber/Amber", Name = "Stock", Auto = {54}, Props = {  } },
		 -- A/W
		 { Category = "Amber/White", Name = "Custom", Auto = {58}, Props = {  } },
		 { Category = "Amber/White", Name = "Stock", Auto = {68}, Props = {  } },
		 -- G/G
		 { Category = "Green/Green", Name = "Custom", Auto = {72}, Props = {  } },
		},
	},
	{
		Name = "Spoiler Lights",
		Options = {
		 { Name = "None", Auto = {}, Props = {  } },
		 -- R/B
		 { Category = "Red/Blue", Name = "Custom", Auto = {3}, Props = {  } },
		 { Category = "Red/Blue", Name = "Stock", Auto = {14}, Props = {  } },
		 -- B/B
		 { Category = "Blue/Blue", Name = "Custom", Auto = {17}, Props = {  } },
		 { Category = "Blue/Blue", Name = "Stock", Auto = {27}, Props = {  } },
		 -- R/R
		 { Category = "Red/Red", Name = "Custom", Auto = {31}, Props = {  } },
		 { Category = "Red/Red", Name = "Stock", Auto = {40}, Props = {  } },
		 -- A/A
		 { Category = "Amber/Amber", Name = "Custom", Auto = {45}, Props = {  } },
		 { Category = "Amber/Amber", Name = "Stock", Auto = {55}, Props = {  } },
		-- A/W
		{ Category = "Amber/White", Name = "Custom", Auto = {59}, Props = {  } },
		{ Category = "Amber/White", Name = "Stock", Auto = {69}, Props = {  } },
		-- G/G
		{ Category = "Green/Green", Name = "Custom", Auto = {73}, Props = {  } },
		},
	},
	{
		Name = "Rear Upper Deck",
		Options = {
		 {  Name = "None", Auto = {}, Props = {  } },
		 {  Name = "Red/Blue", Auto = {4}, Props = {  } },
		 {  Name = "Blue/Blue", Auto = {18}, Props = {  } },
		 {  Name = "Red/Red", Auto = {32}, Props = {  } },
		 {  Name = "Amber/Amber", Auto = {46}, Props = {  } },
		 {  Name = "Amber/White", Auto = {60}, Props = {  } },
		 {  Name = "Green/Green", Auto = {74}, Props = {  } },
		},
	},
	{
		Name = "Trunk Lights",
		Options = {
		 { Name = "None", Auto = {}, Props = {  } },
		 { Name = "Red/Blue", Auto = {5}, Props = {  } },
		 { Name = "Blue/Blue", Auto = {19}, Props = {  } },
		 { Name = "Red/Red", Auto = {33}, Props = {  } },
		 { Name = "Amber/Amber", Auto = {47}, Props = {  } },
		 { Name = "Amber/White", Auto = {61}, Props = {  } },
		 { Name = "Green/Green", Auto = {75}, Props = {  } },
		},
	},
	{
		Name = "Mirror Lights",
		Options = {
		 {  Name = "None", Auto = {}, Props = {  } },
		 {  Name = "Red/Blue", Auto = {6}, Props = {  } },
		 {  Name = "Blue/Blue", Auto = {20}, Props = {  } },
		 {  Name = "Red/Red", Auto = {34}, Props = {  } },
		 {  Name = "Amber/Amber", Auto = {48}, Props = {  } },
		 {  Name = "Amber/White", Auto = {62}, Props = {  } },
		 {  Name = "Green/Green", Auto = {76}, Props = {  } },
		},
	},
	{
		Name = "Grill Lights",
		Options = {
		 { Name = "None", Auto = {}, Props = {  } },
		 { Name = "Red/Blue", Auto = {7}, Props = {  } },
		 { Name = "Blue/Blue", Auto = {21}, Props = {  } },
		 { Name = "Red/Red", Auto = {35}, Props = {  } },
		 { Name = "Amber/Amber", Auto = {49}, Props = {  } },
		 { Name = "Amber/White", Auto = {63}, Props = {  } },
		 { Name = "Green/Green", Auto = {77}, Props = {  } },
		},
	},
	{
		Name = "Pushbar Lights",
		Options = {
		 { Name = "None", Auto = {}, Props = {  } },
		 -- R/B
		 { Category = "Red/Blue", Name = "Top", Auto = {9}, Props = {  } },
		 { Category = "Red/Blue", Name = "Side", Auto = {8}, Props = {  } },
		 { Category = "Red/Blue", Name = "Both", Auto = {8,9}, Props = {  } },
		 -- B/B
		 { Category = "Blue/Blue", Name = "Top", Auto = {22}, Props = {  } },
		 { Category = "Blue/Blue", Name = "Side", Auto = {23}, Props = {  } },
		 { Category = "Blue/Blue", Name = "Both", Auto = {22,23}, Props = {  } },
		 -- R/R
		 { Category = "Red/Red", Name = "Top", Auto = {36}, Props = {  } },
		 { Category = "Red/Red", Name = "Side", Auto = {37}, Props = {  } },
		 { Category = "Red/Red", Name = "Both", Auto = {36,37}, Props = {  } },
		 -- A/A
		 { Category = "Amber/Amber", Name = "Top", Auto = {50}, Props = {  } },
		 { Category = "Amber/Amber", Name = "Side", Auto = {51}, Props = {  } },
		 { Category = "Amber/Amber", Name = "Both", Auto = {50,51}, Props = {  } },
		 -- A/W
		 { Category = "Amber/White", Name = "Top", Auto = {64}, Props = {  } },
		 { Category = "Amber/White", Name = "Side", Auto = {65}, Props = {  } },
		 { Category = "Amber/White", Name = "Both", Auto = {64,65}, Props = {  } },
		 -- G/G
		 { Category = "Green/Green", Name = "Top", Auto = {78}, Props = {  } },
		 { Category = "Green/Green", Name = "Side", Auto = {79}, Props = {  } },
		 { Category = "Green/Green", Name = "Both", Auto = {78,79}, Props = {  } },
		},
	},
	{
		Name = "Headlight Side Warning Lights",
		Options = {
		 { Name = "None", Auto = {}, Props = {  } },
		 -- W/W
		 { Category = "White", Name = "White", Auto = {10}, Props = {  } },
		 -- R/B
		 { Category = "Red/Blue", Name = "R/B", Auto = {11}, Props = {  } },
		 { Category = "Red/Blue", Name = "W/R/B", Auto = {11,10}, Props = {  } },
		 -- B/B
		 { Category = "Blue/Blue", Name = "B/B", Auto = {24}, Props = {  } },
		 { Category = "Blue/Blue", Name = "W/B/B", Auto = {24,28}, Props = {  } },
		 -- R/R
		 { Category = "Red/Red", Name = "R/R", Auto = {38}, Props = {  } },
		 { Category = "Red/Red", Name = "W/R/R", Auto = {38,42}, Props = {  } },
		 -- A/A
		 { Category = "Amber/Amber", Name = "A/A", Auto = {52}, Props = {  } },
		 { Category = "Amber/Amber", Name = "W/A/A", Auto = {52,56}, Props = {  } },
		 -- A/W
		 { Category = "Amber/White", Name = "A/W", Auto = {66}, Props = {  } },
		 { Category = "Amber/White", Name = "W/A/W", Auto = {66,70}, Props = {  } },
		 -- G/G
		 { Category = "Green/Green", Name = "G/G", Auto = {80}, Props = {  } },
		 { Category = "Green/Green", Name = "W/G/G", Auto = {80,84}, Props = {  } },
		},
	},
	{
		Name = "Fog Lights",
		Options = {
		 { Name = "None", Auto = {}, Props = {  } },
		 { Name = "R/B", Auto = {12}, Props = {  } },
		 { Name = "B/B", Auto = {25}, Props = {  } },
		 { Name = "R/R", Auto = {39}, Props = {  } },
		 { Name = "A/A", Auto = {53}, Props = {  } },
		 { Name = "A/W", Auto = {67}, Props = {  } },
		 { Name = "G/G", Auto = {81}, Props = {  } },
		},
	},	
}

EMV.Meta = {
    Spotlight = {
        AngleOffset = -90,
        W = 12,
        H = 12,
        Sprite = "sprites/emv/whelen_spotlight",
        Scale = 4.5
	},
	reverse_l = {
        AngleOffset = 90,
        W = 10,
        H = 10,
        Sprite = "sprites/emv/fpiu20_reverse",
		--SubmatID = 22,
		--SubmatMaterial = "sentry/20explorer/running_on",
        Scale = 1.0
	},
	reverse_r = {
        AngleOffset = 90,
        W = 10,
        H = 10,
        Sprite = "sprites/emv/fpiu20_reverse",
		--SubmatID = 23,
		--SubmatMaterial = "sentry/20explorer/running_on",
        Scale = 1.0
	},
	tail_l = {
        AngleOffset = 90,
        W = 24,
        H = 19,
        Sprite = "sprites/emv/blank",
		SubmatID = 23,
		SubmatMaterial = "sentry/20explorer/running_on",
        Scale = 1.5,
		WMult = 1
	},
	tail_r = {
        AngleOffset = 90,
        W = 24,
        H = 19,
        Sprite = "sprites/emv/blank",
		SubmatID = 22,
		SubmatMaterial = "sentry/20explorer/running_on",
        Scale = 1.5,
		WMult = 1
	},
	headlight = {
		AngleOffset = -90,
		W = 8.2,
		H = 8,
		Sprite = "sprites/emv/fpiu20_headlight",
		Scale = .5,
		WMult = 1
	},
}

EMV.Positions = {
     
	[1] = { Vector( -44.65, 57.63, 68.5 ), Angle(0,0,0), "Spotlight" },
	[2] = { Vector( -35.3, -109.47, 48.81 ), Angle( 180, -26.1, 180-5 ), "reverse_l" },
	[3] = { Vector( 35.3, -109.47, 48.81 ), Angle( 0, 26.1, 5 ), "reverse_r" },
	[4] = { Vector( 29.1, 110.6, 47.7 ), Angle( 0, 0, 0 ), "headlight" },
	[5] = { Vector( -29.1, 110.6, 47.7 ), Angle( 0, 0, 0 ), "headlight" },
	[6] = { Vector( 37.1, 105.6, 48.25 ), Angle( 0, 0, 0 ), "headlight" },
	[7] = { Vector( -37.1, 105.6, 48.25 ), Angle( 0, 0, 0 ), "headlight" },
	[8] = { Vector( -39.4, -108.57, 54.01 ), Angle( 180, -26.1, 180-0.5 ), "tail_l" },
	[9] = { Vector( 39.4, -108.57, 54.01 ), Angle( 0, 26.1, 0.5 ), "tail_r" },
}

EMV.Sections = {
    ["Spotlight"] = {
        [1] = {
        { 1, CW }
		},
	},
	["reverse"] = {
        [1] = {
        { 2, CW }
		},
		[2] = {
		{ 3, CW }
		},
	},
	["headlight"] = {
        [1] = {
        { 4, CW }, { 6, CW }
		},
		[2] = {
		{ 5, CW }, { 7, CW }
		},
	},
	["taillights"] = {
        [1] = {
        { 8, R }
		},
		[2] = {
		{ 9, R }
		},
	},
}

EMV.Patterns = {
    ["Spotlight"] = {  
         ["Spotlight"] = {
          1
        },
	},
	["reverse"] = {  
		["on"] = {
			1,1,2,2,1,0,1,1,2,2,1,1,2,2,1,1,2,2,1,1,0,2,2,1,1,2,2,1,1,2,2,0
	   },
   },
   ["headlight"] = {  
	["on"] = {
		1,1,2,2,1,0,1,1,2,2,1,1,2,2,1,1,2,2,1,1,0,2,2,1,1,2,2,1,1,2,2,0
   		},
   },
    ["taillights"] = {  
         ["on"] = {
          1,1,1,1,2,2,2,2
        },
	},
}


EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {["reverse"] = "on",["headlight"] = "on",["taillights"] = "on", }, Disconnect = {} }
	},
	Traffic = {
        { Name = "CRUISE", Stage = "C", Components = {}, Disconnect = {} },
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} },
    },
    Illumination = {
        {
            Name = "Left",
            Icon = "alley",
            Stage = "L",
            Components = {},
            BG_Components = {},
            Preset_Components = {},
            Lights = {
                { Vector( -30, -2.5, 87.5 ), Angle( 0, -180, 0  ), "Left" },
            },
            Disconnect = {}
		},
		{
            Name = "Right",
            Icon = "alley",
            Stage = "R",
            Components = {},
            BG_Components = {},
            Preset_Components = {},
            Lights = {
                { Vector( 30, -2.5, 87.5 ), Angle( 0, 0, 0  ), "Right" },
            },
            Disconnect = {}
		},
		{
            Name = "Front",
            Icon = "takedown",
            Stage = "F",
            Components = {},
            BG_Components = {},
            Preset_Components = {},
            Lights = {
				{ Vector( 2, 5, 87.5 ), Angle( 0, 90, 0  ), "Front" },
				{ Vector( -2, 5, 87.5 ), Angle( 0, 90, 0  ), "Front" },
            },
            Disconnect = {}
		},
		{
            Name = "Spotlight",
            Icon = "takedown",
            Stage = "S",
			Components = {
				{1, CW},
			},
            BG_Components = {},
            Preset_Components = {},
            Lights = {
				{ Vector( -44.65, 57.5, 68.5 ), Angle( 0, 90, 0  ), "Spotlight" },
            },
            Disconnect = {}
		},
		{
            Name = "All",
            Icon = "takedown",
            Stage = "T",
            Components = {	{1, CW},},
            BG_Components = {},
            Preset_Components = {},
            Lights = {
				{ Vector( 2, 5, 87.5 ), Angle( 0, 90, 0  ), "Front" },
				{ Vector( -2, 5, 87.5 ), Angle( 0, 90, 0  ), "Front" },
				{ Vector( 30, -2.5, 87.5 ), Angle( 0, 0, 0  ), "Right" },
				{ Vector( -30, -2.5, 87.5 ), Angle( 0, -180, 0  ), "Left" },
				{ Vector( -44.65, 57.5, 68.5 ), Angle( 0, 90, 0  ), "Spotlight" },
            },
            Disconnect = {}
        },
    },
}


EMV.Lamps = {
    ["Left"] = {
        Color = Color(215,225,255,255),
        Texture = "effects/flashlight001",
        Near = 220,
        FOV = 135,
        Distance = 5000,
	},
	["Right"] = {
        Color = Color(215,225,255,255),
        Texture = "effects/flashlight001",
        Near = 220,
        FOV = 135,
        Distance = 5000,
	},
	["Front"] = {
        Color = Color(215,225,255,255),
        Texture = "effects/flashlight001",
        Near = 220,
        FOV = 135,
        Distance = 5000,
	},
	["Spotlight"] = {
        Color = Color(215,225,255,255),
        Texture = "effects/flashlight001",
        Near = 320,
        FOV = 105,
        Distance = 2000,
	},
} 

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "SGM Cars (Photon Support)",
	Author = "Lily",
	Model = "models/sentry/20explorer.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/20explorer.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "sgm_fpiu20"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

