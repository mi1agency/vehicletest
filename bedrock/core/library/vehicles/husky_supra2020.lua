AddCSLuaFile()

local front = Color(240,240,255)
local front_marker = Color(255,175,0)
local rear = Color(215,50,0)
local brake = Color(255,75,0)
local turn_front = Color(255,175,0)

local colors = {Color(205,205,205),Color(145,145,145),Color(100,100,100),
				Color(175,0,0),Color(175,131,0),Color(30,30,30),
				Color(10,30,88)}
local Model = "models/ctvehicles/toyota/gr_supra.mdl"
local list_name = "husky_supra2020"

local light_table = {
	ModernLights = true, -- грубо говоря, ксенон или старые фары. True - ксенон, false - старые
	L_HeadLampPos = Vector(-33.531,74.582,31.278), -- рассположение обычных фар (левых - L)
	L_HeadLampAng = Angle(180,-90,0), -- угол поворота фар

	R_HeadLampPos = Vector(33.531,74.582,31.278), -- рассположение обычных фар (правых - R)
	R_HeadLampAng = Angle(180,-90,0), -- угол поворота фар

	L_RearLampPos = Vector(-16.82,-95.749,36.785), -- расположение задних фар
	L_RearLampAng = Angle(0,-90,0), -- угол поворота фар

	R_RearLampPos = Vector(16.82,-95.749,36.785), -- расположение задних фар
	R_RearLampAng = Angle(0,-90,0), -- угол поворота фар

	Headlight_sprites = { -- Обычные фары
		{pos = Vector(-33.531,74.582,31.278),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(-33.707,76.881,29.4),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(-29.993,78.839,28.931),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(-30.054,77.855,30.861),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(-26.626,80.494,30.561),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(-26.68,81.857,28.573),size = 20,material="sprites/light_ignorez",color=front},
		
		{pos = Vector(-24.106,87.85,29.407),size = 6,material="sprites/light_ignorez",color=front},
		{pos = Vector(24.106,87.85,29.407),size = 6,material="sprites/light_ignorez",color=front},
		
		{pos = Vector(33.531,74.582,31.278),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(33.707,76.881,29.4),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(29.993,78.839,28.931),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(30.054,77.855,30.861),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(26.626,80.494,30.561),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(26.68,81.857,28.573),size = 20,material="sprites/light_ignorez",color=front},
		
		{pos = Vector(-38.045,74.452,30.024),size = 6,material="sprites/light_ignorez",color=front_marker},
		{pos = Vector(38.045,74.452,30.024),size = 6,material="sprites/light_ignorez",color=front_marker},
	},
	Headlamp_sprites = { -- дальние
		{pos = Vector(-33.707,76.881,29.4),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(-29.993,78.839,28.931),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(-26.68,81.857,28.573),size = 20,material="sprites/light_ignorez",color=front},
		
		{pos = Vector(33.707,76.881,29.4),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(29.993,78.839,28.931),size = 20,material="sprites/light_ignorez",color=front},
		{pos = Vector(26.68,81.857,28.573),size = 20,material="sprites/light_ignorez",color=front},
	},
	FogLight_sprites = { -- противотуманки
			{pos = Vector(-14.801,94.996,25.429),size=2,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-15.095,94.862,25.459),size=2.1,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-15.389,94.728,25.488),size=2.2,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-15.683,94.594,25.518),size=2.3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-15.977,94.46,25.547),size=2.4,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-16.27,94.326,25.577),size=2.5,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-16.564,94.192,25.606),size=2.6,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-16.858,94.058,25.636),size=2.7,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-17.152,93.924,25.665),size=2.8,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-17.446,93.79,25.695),size=2.9,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-17.74,93.657,25.724),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-18.034,93.523,25.754),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-18.328,93.389,25.783),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-18.622,93.255,25.813),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-18.916,93.121,25.842),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-19.209,92.987,25.872),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-19.503,92.853,25.901),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-19.797,92.719,25.931),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-20.091,92.585,25.96),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(-20.385,92.451,25.99),size=4,color=front,material="sprites/light_ignorez"},
			
			--{pos = Vector(-22.494,91.435,26.261),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-22.193,91.58,26.222),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-21.891,91.725,26.184),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-21.59,91.87,26.145),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-21.289,92.016,26.106),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-20.988,92.161,26.067),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-20.686,92.306,26.029),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-20.385,92.451,25.99),size=3,color=front,material="sprites/light_ignorez"},

			{pos = Vector(-22.494,91.435,26.261),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-22.792,91.285,26.289),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-23.09,91.135,26.317),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-23.388,90.985,26.345),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-23.687,90.835,26.374),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-23.985,90.685,26.402),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-24.283,90.535,26.43),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-24.581,90.385,26.458),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(-24.879,90.235,26.486),size=3,color=front,material="sprites/light_ignorez"},

			--{pos = Vector(-27.31,88.812,26.722),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-27.006,88.99,26.693),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-26.702,89.168,26.663),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-26.398,89.346,26.634),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-26.094,89.524,26.604),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-25.791,89.701,26.574),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-25.487,89.879,26.545),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-25.183,90.057,26.516),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-24.879,90.235,26.486),size=3,color=front,material="sprites/light_ignorez"},

			{pos = Vector(-27.31,88.812,26.722),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-27.578,88.626,26.752),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-27.846,88.439,26.782),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-28.115,88.253,26.811),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-28.383,88.066,26.841),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-28.651,87.88,26.871),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-28.92,87.694,26.9),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-29.188,87.507,26.93),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(-29.456,87.321,26.96),size=3,color=front,material="sprites/light_ignorez"},

			--{pos = Vector(-31.238,85.665,27.14),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-30.941,85.941,27.11),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-30.644,86.217,27.08),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-30.347,86.493,27.05),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-30.05,86.769,27.02),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-29.753,87.045,26.99),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-29.456,87.321,26.96),size=3,color=front,material="sprites/light_ignorez"},

			{pos = Vector(-31.238,85.665,27.14),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-31.489,85.387,27.169),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-31.74,85.109,27.197),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-31.991,84.831,27.226),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-32.242,84.553,27.254),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-32.493,84.275,27.283),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-32.743,83.996,27.311),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-32.994,83.718,27.34),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-33.245,83.44,27.368),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-33.496,83.162,27.397),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-33.747,82.884,27.425),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(-33.998,82.606,27.454),size=3,color=front,material="sprites/light_ignorez"},

			--{pos = Vector(-35.144,81.02,27.773),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-34.915,81.337,27.709),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-34.686,81.654,27.645),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-34.456,81.972,27.582),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-34.227,82.289,27.518),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-33.998,82.606,27.454),size=3,color=front,material="sprites/light_ignorez"},

			{pos = Vector(-35.144,81.02,27.773),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-35.302,80.693,27.915),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-35.46,80.365,28.056),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(-35.618,80.038,28.198),size=3,color=front,material="sprites/light_ignorez"},

			--{pos = Vector(-37.22,74.751,31.049),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-37.147,74.991,30.919),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-37.074,75.232,30.79),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-37.002,75.472,30.66),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.929,75.712,30.531),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.856,75.953,30.401),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.783,76.193,30.271),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.71,76.433,30.142),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.637,76.674,30.012),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.565,76.914,29.883),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.492,77.154,29.753),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.419,77.394,29.624),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.346,77.635,29.494),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.273,77.875,29.364),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.201,78.115,29.235),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.128,78.356,29.105),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-36.055,78.596,28.976),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-35.982,78.836,28.846),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-35.909,79.077,28.716),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-35.836,79.317,28.587),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-35.764,79.557,28.457),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-35.691,79.798,28.328),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-35.618,80.038,28.198),size=3,color=front,material="sprites/light_ignorez"},

			{pos = Vector(-37.22,74.751,31.049),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-37.367,74.52,31.112),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-37.515,74.288,31.175),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-37.662,74.056,31.239),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(-37.809,73.825,31.302),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(-37.957,73.593,31.365),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(-38.104,73.362,31.428),size=3,color=front,material="sprites/light_ignorez"},

			
			{pos = Vector(14.801,94.996,25.429),size=2,color=front,material="sprites/light_ignorez"},
			{pos = Vector(15.095,94.862,25.459),size=2.1,color=front,material="sprites/light_ignorez"},
			{pos = Vector(15.389,94.728,25.488),size=2.2,color=front,material="sprites/light_ignorez"},
			{pos = Vector(15.683,94.594,25.518),size=2.3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(15.977,94.46,25.547),size=2.4,color=front,material="sprites/light_ignorez"},
			{pos = Vector(16.27,94.326,25.577),size=2.5,color=front,material="sprites/light_ignorez"},
			{pos = Vector(16.564,94.192,25.606),size=2.6,color=front,material="sprites/light_ignorez"},
			{pos = Vector(16.858,94.058,25.636),size=2.7,color=front,material="sprites/light_ignorez"},
			{pos = Vector(17.152,93.924,25.665),size=2.8,color=front,material="sprites/light_ignorez"},
			{pos = Vector(17.446,93.79,25.695),size=2.9,color=front,material="sprites/light_ignorez"},
			{pos = Vector(17.74,93.657,25.724),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(18.034,93.523,25.754),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(18.328,93.389,25.783),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(18.622,93.255,25.813),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(18.916,93.121,25.842),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(19.209,92.987,25.872),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(19.503,92.853,25.901),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(19.797,92.719,25.931),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(20.091,92.585,25.96),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(20.385,92.451,25.99),size=4,color=front,material="sprites/light_ignorez"},
			
			--{pos = Vector(22.494,91.435,26.261),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(22.193,91.58,26.222),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(21.891,91.725,26.184),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(21.59,91.87,26.145),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(21.289,92.016,26.106),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(20.988,92.161,26.067),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(20.686,92.306,26.029),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(20.385,92.451,25.99),size=3,color=front,material="sprites/light_ignorez"},

			{pos = Vector(22.494,91.435,26.261),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(22.792,91.285,26.289),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(23.09,91.135,26.317),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(23.388,90.985,26.345),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(23.687,90.835,26.374),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(23.985,90.685,26.402),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(24.283,90.535,26.43),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(24.581,90.385,26.458),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(24.879,90.235,26.486),size=3,color=front,material="sprites/light_ignorez"},

			--{pos = Vector(27.31,88.812,26.722),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(27.006,88.99,26.693),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(26.702,89.168,26.663),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(26.398,89.346,26.634),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(26.094,89.524,26.604),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(25.791,89.701,26.574),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(25.487,89.879,26.545),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(25.183,90.057,26.516),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(24.879,90.235,26.486),size=3,color=front,material="sprites/light_ignorez"},

			{pos = Vector(27.31,88.812,26.722),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(27.578,88.626,26.752),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(27.846,88.439,26.782),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(28.115,88.253,26.811),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(28.383,88.066,26.841),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(28.651,87.88,26.871),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(28.92,87.694,26.9),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(29.188,87.507,26.93),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(29.456,87.321,26.96),size=3,color=front,material="sprites/light_ignorez"},

			--{pos = Vector(31.238,85.665,27.14),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(30.941,85.941,27.11),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(30.644,86.217,27.08),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(30.347,86.493,27.05),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(30.05,86.769,27.02),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(29.753,87.045,26.99),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(29.456,87.321,26.96),size=3,color=front,material="sprites/light_ignorez"},

			{pos = Vector(31.238,85.665,27.14),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(31.489,85.387,27.169),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(31.74,85.109,27.197),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(31.991,84.831,27.226),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(32.242,84.553,27.254),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(32.493,84.275,27.283),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(32.743,83.996,27.311),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(32.994,83.718,27.34),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(33.245,83.44,27.368),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(33.496,83.162,27.397),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(33.747,82.884,27.425),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(33.998,82.606,27.454),size=3,color=front,material="sprites/light_ignorez"},

			--{pos = Vector(35.144,81.02,27.773),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(34.915,81.337,27.709),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(34.686,81.654,27.645),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(34.456,81.972,27.582),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(34.227,82.289,27.518),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(33.998,82.606,27.454),size=3,color=front,material="sprites/light_ignorez"},

			{pos = Vector(35.144,81.02,27.773),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(35.302,80.693,27.915),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(35.46,80.365,28.056),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(35.618,80.038,28.198),size=3,color=front,material="sprites/light_ignorez"},

			--{pos = Vector(37.22,74.751,31.049),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(37.147,74.991,30.919),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(37.074,75.232,30.79),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(37.002,75.472,30.66),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.929,75.712,30.531),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.856,75.953,30.401),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.783,76.193,30.271),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.71,76.433,30.142),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.637,76.674,30.012),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.565,76.914,29.883),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.492,77.154,29.753),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.419,77.394,29.624),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.346,77.635,29.494),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.273,77.875,29.364),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.201,78.115,29.235),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.128,78.356,29.105),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(36.055,78.596,28.976),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(35.982,78.836,28.846),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(35.909,79.077,28.716),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(35.836,79.317,28.587),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(35.764,79.557,28.457),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(35.691,79.798,28.328),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(35.618,80.038,28.198),size=3,color=front,material="sprites/light_ignorez"},

			{pos = Vector(37.22,74.751,31.049),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(37.367,74.52,31.112),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(37.515,74.288,31.175),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(37.662,74.056,31.239),size=3,color=front,material="sprites/light_ignorez"},
			{pos = Vector(37.809,73.825,31.302),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(37.957,73.593,31.365),size=3,color=front,material="sprites/light_ignorez"},
			--{pos = Vector(38.104,73.362,31.428),size=3,color=front,material="sprites/light_ignorez"},

	},
	Rearlight_sprites = { -- задние фары
		{pos = Vector(-16.82,-95.749,36.785),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-17.4202,-95.6362,36.7945),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-18.0204,-95.5234,36.804),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-18.6206,-95.4106,36.8135),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-19.2208,-95.2978,36.823),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-19.821,-95.185,36.8325),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-20.4212,-95.0722,36.842),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-21.0214,-94.9594,36.8515),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-21.6216,-94.8466,36.861),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-22.2218,-94.7338,36.8705),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-22.822,-94.621,36.88),size = 6,material="sprites/light_ignorez",color=rear},
	
		{pos = Vector(16.82,-95.749,36.785),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(17.4202,-95.6362,36.7945),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(18.0204,-95.5234,36.804),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(18.6206,-95.4106,36.8135),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(19.2208,-95.2978,36.823),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(19.821,-95.185,36.8325),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(20.4212,-95.0722,36.842),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(21.0214,-94.9594,36.8515),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(21.6216,-94.8466,36.861),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(22.2218,-94.7338,36.8705),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(22.822,-94.621,36.88),size = 6,material="sprites/light_ignorez",color=rear},

        {pos = Vector(-24.933,-94.133,37.175),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-25.5324,-93.9481,37.1971),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-26.1318,-93.7632,37.2192),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-26.7311,-93.5784,37.2414),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-27.3305,-93.3935,37.2635),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-27.9299,-93.2086,37.2856),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-28.5293,-93.0237,37.3077),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-29.1286,-92.8389,37.3299),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-29.728,-92.654,37.352),size = 6,material="sprites/light_ignorez",color=rear},
		
        {pos = Vector(-30.35,-92.467,37.278),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-30.972,-92.27,37.122),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-31.485,-92.055,36.838),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-31.9354,-91.7572,36.4168),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-32.3858,-91.4594,35.9956),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-32.8362,-91.1616,35.5744),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-33.2866,-90.8638,35.1532),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-33.737,-90.566,34.732),size = 6,material="sprites/light_ignorez",color=rear},
		
        {pos = Vector(-33.544,-90.689,34.19),size = 6,material="sprites/light_ignorez",color=rear},
		
        {pos = Vector(-33.009,-90.973,34.131),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-32.4226,-91.215 - 0.1,34.2389),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-31.8363,-91.457 - 0.15,34.3468),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-31.2499,-91.699 - 0.2,34.4547),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-30.6635,-91.941 - 0.25,34.5626),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-30.0772,-92.183 - 0.3,34.6705),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-29.4908,-92.425 - 0.3,34.7785),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-28.9045,-92.667 - 0.25,34.8864),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-28.3181,-92.909 - 0.2,34.9943),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-27.7317,-93.151 - 0.15,35.1022),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-27.1454,-93.393 - 0.1,35.2101),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-26.559,-93.635,35.318),size = 6,material="sprites/light_ignorez",color=rear},
		
        {pos = Vector(-25.969,-93.76,35.484),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-25.437,-93.901,35.754),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-24.987,-94.118,36.075),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-24.584,-94.165,36.476),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(-24.348,-94.195,36.977),size = 6,material="sprites/light_ignorez",color=rear},

		{pos = Vector(24.933,-94.133,37.175),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(25.5324,-93.9481,37.1971),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(26.1318,-93.7632,37.2192),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(26.7311,-93.5784,37.2414),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(27.3305,-93.3935,37.2635),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(27.9299,-93.2086,37.2856),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(28.5293,-93.0237,37.3077),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(29.1286,-92.8389,37.3299),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(29.728,-92.654,37.352),size = 6,material="sprites/light_ignorez",color=rear},

        {pos = Vector(30.35,-92.467,37.278),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(30.972,-92.27,37.122),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(31.485,-92.055,36.838),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(31.9354,-91.7572,36.4168),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(32.3858,-91.4594,35.9956),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(32.8362,-91.1616,35.5744),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(33.2866,-90.8638,35.1532),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(33.737,-90.566,34.732),size = 6,material="sprites/light_ignorez",color=rear},

		{pos = Vector(33.544,-90.689,34.19),size = 6,material="sprites/light_ignorez",color=rear},
		
        {pos = Vector(33.009,-90.973,34.131),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(32.4226,-91.215 - 0.1,34.2389),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(31.8363,-91.457 - 0.15,34.3468),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(31.2499,-91.699 - 0.2,34.4547),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(30.6635,-91.941 - 0.25,34.5626),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(30.0772,-92.183 - 0.3,34.6705),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(29.4908,-92.425 - 0.3,34.7785),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(28.9045,-92.667 - 0.25,34.8864),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(28.3181,-92.909 - 0.2,34.9943),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(27.7317,-93.151 - 0.15,35.1022),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(27.1454,-93.393 - 0.1,35.2101),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(26.559,-93.635,35.318),size = 6,material="sprites/light_ignorez",color=rear},
		
        {pos = Vector(25.969,-93.76,35.484),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(25.437,-93.901,35.754),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(24.987,-94.118,36.075),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(24.584,-94.165,36.476),size = 6,material="sprites/light_ignorez",color=rear},
        {pos = Vector(24.348,-94.195,36.977),size = 6,material="sprites/light_ignorez",color=rear},

	},
	Brakelight_sprites = { -- тормозные огни
        {pos = Vector(7.281,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(6.58757,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(5.89414,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(5.20071,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(4.50729,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(3.81386,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(3.12043,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(2.427,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(1.73357,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(1.04014,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(0.346714,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(-0.346714,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(-1.04014,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(-1.73357,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(-2.427,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(-3.12043,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(-3.81386,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(-4.50729,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(-5.20071,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(-5.89414,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(-6.58757,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
        {pos = Vector(-7.281,-52.19,55.004),size = 7,material="sprites/light_ignorez",color=brake},
	
	},
	Reverselight_sprites = { -- фары заднего хода
        {pos = Vector(-1.942,-103.047,14.893),size = 5,material="sprites/light_ignorez"},
        {pos = Vector(-2.13,-103.094,15.91),size = 5,material="sprites/light_ignorez"},
        {pos = Vector(-2.331,-103.271,16.905),size = 5,material="sprites/light_ignorez"},
        {pos = Vector(-2.553,-103.336,17.982),size = 5,material="sprites/light_ignorez"},
        {pos = Vector(-0.973,-102.977,14.891),size = 5,material="sprites/light_ignorez"},
        {pos = Vector(0,-102.96,14.879),size = 5,material="sprites/light_ignorez"},
        {pos = Vector(0.973,-102.977,14.891),size = 5,material="sprites/light_ignorez"},
        {pos = Vector(2.553,-103.336,17.982),size = 5,material="sprites/light_ignorez"},
        {pos = Vector(2.331,-103.271,16.905),size = 5,material="sprites/light_ignorez"},
        {pos = Vector(2.13,-103.094,15.91),size = 5,material="sprites/light_ignorez"},
		{pos = Vector(1.942,-103.047,14.893),size = 5,material="sprites/light_ignorez"},

	},
	Turnsignal_sprites = { -- поворотники
		Left = {
			{pos = Vector(-14.801,94.996,25.429),size=2,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-15.095,94.862,25.459),size=2.1,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-15.389,94.728,25.488),size=2.2,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-15.683,94.594,25.518),size=2.3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-15.977,94.46,25.547),size=2.4,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-16.27,94.326,25.577),size=2.5,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-16.564,94.192,25.606),size=2.6,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-16.858,94.058,25.636),size=2.7,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-17.152,93.924,25.665),size=2.8,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-17.446,93.79,25.695),size=2.9,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-17.74,93.657,25.724),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-18.034,93.523,25.754),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-18.328,93.389,25.783),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-18.622,93.255,25.813),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-18.916,93.121,25.842),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-19.209,92.987,25.872),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-19.503,92.853,25.901),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-19.797,92.719,25.931),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-20.091,92.585,25.96),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(-20.385,92.451,25.99),size=4,color=turn_front,material="sprites/light_ignorez"},
			
			--{pos = Vector(-22.494,91.435,26.261),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-22.193,91.58,26.222),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-21.891,91.725,26.184),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-21.59,91.87,26.145),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-21.289,92.016,26.106),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-20.988,92.161,26.067),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-20.686,92.306,26.029),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-20.385,92.451,25.99),size=3,color=turn_front,material="sprites/light_ignorez"},

			{pos = Vector(-22.494,91.435,26.261),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-22.792,91.285,26.289),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-23.09,91.135,26.317),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-23.388,90.985,26.345),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-23.687,90.835,26.374),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-23.985,90.685,26.402),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-24.283,90.535,26.43),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-24.581,90.385,26.458),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(-24.879,90.235,26.486),size=3,color=turn_front,material="sprites/light_ignorez"},

			--{pos = Vector(-27.31,88.812,26.722),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-27.006,88.99,26.693),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-26.702,89.168,26.663),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-26.398,89.346,26.634),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-26.094,89.524,26.604),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-25.791,89.701,26.574),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-25.487,89.879,26.545),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-25.183,90.057,26.516),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-24.879,90.235,26.486),size=3,color=turn_front,material="sprites/light_ignorez"},

			{pos = Vector(-27.31,88.812,26.722),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-27.578,88.626,26.752),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-27.846,88.439,26.782),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-28.115,88.253,26.811),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-28.383,88.066,26.841),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-28.651,87.88,26.871),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-28.92,87.694,26.9),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-29.188,87.507,26.93),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(-29.456,87.321,26.96),size=3,color=turn_front,material="sprites/light_ignorez"},

			--{pos = Vector(-31.238,85.665,27.14),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-30.941,85.941,27.11),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-30.644,86.217,27.08),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-30.347,86.493,27.05),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-30.05,86.769,27.02),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-29.753,87.045,26.99),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-29.456,87.321,26.96),size=3,color=turn_front,material="sprites/light_ignorez"},

			{pos = Vector(-31.238,85.665,27.14),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-31.489,85.387,27.169),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-31.74,85.109,27.197),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-31.991,84.831,27.226),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-32.242,84.553,27.254),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-32.493,84.275,27.283),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-32.743,83.996,27.311),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-32.994,83.718,27.34),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-33.245,83.44,27.368),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-33.496,83.162,27.397),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-33.747,82.884,27.425),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(-33.998,82.606,27.454),size=3,color=turn_front,material="sprites/light_ignorez"},

			--{pos = Vector(-35.144,81.02,27.773),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-34.915,81.337,27.709),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-34.686,81.654,27.645),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-34.456,81.972,27.582),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-34.227,82.289,27.518),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-33.998,82.606,27.454),size=3,color=turn_front,material="sprites/light_ignorez"},

			{pos = Vector(-35.144,81.02,27.773),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-35.302,80.693,27.915),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-35.46,80.365,28.056),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(-35.618,80.038,28.198),size=3,color=turn_front,material="sprites/light_ignorez"},

			--{pos = Vector(-37.22,74.751,31.049),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-37.147,74.991,30.919),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-37.074,75.232,30.79),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-37.002,75.472,30.66),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.929,75.712,30.531),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.856,75.953,30.401),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.783,76.193,30.271),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.71,76.433,30.142),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.637,76.674,30.012),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.565,76.914,29.883),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.492,77.154,29.753),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.419,77.394,29.624),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.346,77.635,29.494),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.273,77.875,29.364),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.201,78.115,29.235),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.128,78.356,29.105),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-36.055,78.596,28.976),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-35.982,78.836,28.846),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-35.909,79.077,28.716),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-35.836,79.317,28.587),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-35.764,79.557,28.457),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-35.691,79.798,28.328),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-35.618,80.038,28.198),size=3,color=turn_front,material="sprites/light_ignorez"},

			{pos = Vector(-37.22,74.751,31.049),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-37.367,74.52,31.112),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-37.515,74.288,31.175),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-37.662,74.056,31.239),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(-37.809,73.825,31.302),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(-37.957,73.593,31.365),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(-38.104,73.362,31.428),size=3,color=turn_front,material="sprites/light_ignorez"},

		},
		TurnBrakeLeft = { -- левый
			{pos = Vector(-24.933,-94.133,37.175),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-25.5324,-93.9481,37.1971),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-26.1318,-93.7632,37.2192),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-26.7311,-93.5784,37.2414),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-27.3305,-93.3935,37.2635),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-27.9299,-93.2086,37.2856),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-28.5293,-93.0237,37.3077),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-29.1286,-92.8389,37.3299),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-29.728,-92.654,37.352),size = 6,material="sprites/light_ignorez",color=brake},
			
			{pos = Vector(-30.35,-92.467,37.278),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-30.972,-92.27,37.122),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-31.485,-92.055,36.838),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-31.9354,-91.7572,36.4168),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-32.3858,-91.4594,35.9956),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-32.8362,-91.1616,35.5744),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-33.2866,-90.8638,35.1532),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-33.737,-90.566,34.732),size = 6,material="sprites/light_ignorez",color=brake},
			
			{pos = Vector(-33.544,-90.689,34.19),size = 6,material="sprites/light_ignorez",color=brake},
			
			{pos = Vector(-33.009,-90.973,34.131),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-32.4226,-91.215 - 0.1,34.2389),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-31.8363,-91.457 - 0.15,34.3468),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-31.2499,-91.699 - 0.2,34.4547),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-30.6635,-91.941 - 0.25,34.5626),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-30.0772,-92.183 - 0.3,34.6705),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-29.4908,-92.425 - 0.3,34.7785),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-28.9045,-92.667 - 0.25,34.8864),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-28.3181,-92.909 - 0.2,34.9943),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-27.7317,-93.151 - 0.15,35.1022),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-27.1454,-93.393 - 0.1,35.2101),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-26.559,-93.635,35.318),size = 6,material="sprites/light_ignorez",color=brake},
			
			{pos = Vector(-25.969,-93.76,35.484),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-25.437,-93.901,35.754),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-24.987,-94.118,36.075),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-24.584,-94.165,36.476),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(-24.348,-94.195,36.977),size = 6,material="sprites/light_ignorez",color=brake},

		},
		TurnBrakeRight = { -- правый
			{pos = Vector(24.933,-94.133,37.175),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(25.5324,-93.9481,37.1971),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(26.1318,-93.7632,37.2192),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(26.7311,-93.5784,37.2414),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(27.3305,-93.3935,37.2635),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(27.9299,-93.2086,37.2856),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(28.5293,-93.0237,37.3077),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(29.1286,-92.8389,37.3299),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(29.728,-92.654,37.352),size = 6,material="sprites/light_ignorez",color=brake},

			{pos = Vector(30.35,-92.467,37.278),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(30.972,-92.27,37.122),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(31.485,-92.055,36.838),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(31.9354,-91.7572,36.4168),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(32.3858,-91.4594,35.9956),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(32.8362,-91.1616,35.5744),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(33.2866,-90.8638,35.1532),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(33.737,-90.566,34.732),size = 6,material="sprites/light_ignorez",color=brake},

			{pos = Vector(33.544,-90.689,34.19),size = 6,material="sprites/light_ignorez",color=brake},
			
			{pos = Vector(33.009,-90.973,34.131),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(32.4226,-91.215 - 0.1,34.2389),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(31.8363,-91.457 - 0.15,34.3468),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(31.2499,-91.699 - 0.2,34.4547),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(30.6635,-91.941 - 0.25,34.5626),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(30.0772,-92.183 - 0.3,34.6705),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(29.4908,-92.425 - 0.3,34.7785),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(28.9045,-92.667 - 0.25,34.8864),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(28.3181,-92.909 - 0.2,34.9943),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(27.7317,-93.151 - 0.15,35.1022),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(27.1454,-93.393 - 0.1,35.2101),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(26.559,-93.635,35.318),size = 6,material="sprites/light_ignorez",color=brake},
			
			{pos = Vector(25.969,-93.76,35.484),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(25.437,-93.901,35.754),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(24.987,-94.118,36.075),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(24.584,-94.165,36.476),size = 6,material="sprites/light_ignorez",color=brake},
			{pos = Vector(24.348,-94.195,36.977),size = 6,material="sprites/light_ignorez",color=brake},
		},
		Right = {
			{pos = Vector(14.801,94.996,25.429),size=2,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(15.095,94.862,25.459),size=2.1,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(15.389,94.728,25.488),size=2.2,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(15.683,94.594,25.518),size=2.3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(15.977,94.46,25.547),size=2.4,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(16.27,94.326,25.577),size=2.5,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(16.564,94.192,25.606),size=2.6,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(16.858,94.058,25.636),size=2.7,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(17.152,93.924,25.665),size=2.8,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(17.446,93.79,25.695),size=2.9,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(17.74,93.657,25.724),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(18.034,93.523,25.754),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(18.328,93.389,25.783),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(18.622,93.255,25.813),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(18.916,93.121,25.842),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(19.209,92.987,25.872),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(19.503,92.853,25.901),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(19.797,92.719,25.931),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(20.091,92.585,25.96),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(20.385,92.451,25.99),size=4,color=turn_front,material="sprites/light_ignorez"},
			
			--{pos = Vector(22.494,91.435,26.261),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(22.193,91.58,26.222),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(21.891,91.725,26.184),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(21.59,91.87,26.145),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(21.289,92.016,26.106),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(20.988,92.161,26.067),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(20.686,92.306,26.029),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(20.385,92.451,25.99),size=3,color=turn_front,material="sprites/light_ignorez"},

			{pos = Vector(22.494,91.435,26.261),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(22.792,91.285,26.289),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(23.09,91.135,26.317),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(23.388,90.985,26.345),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(23.687,90.835,26.374),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(23.985,90.685,26.402),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(24.283,90.535,26.43),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(24.581,90.385,26.458),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(24.879,90.235,26.486),size=3,color=turn_front,material="sprites/light_ignorez"},

			--{pos = Vector(27.31,88.812,26.722),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(27.006,88.99,26.693),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(26.702,89.168,26.663),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(26.398,89.346,26.634),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(26.094,89.524,26.604),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(25.791,89.701,26.574),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(25.487,89.879,26.545),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(25.183,90.057,26.516),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(24.879,90.235,26.486),size=3,color=turn_front,material="sprites/light_ignorez"},

			{pos = Vector(27.31,88.812,26.722),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(27.578,88.626,26.752),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(27.846,88.439,26.782),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(28.115,88.253,26.811),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(28.383,88.066,26.841),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(28.651,87.88,26.871),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(28.92,87.694,26.9),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(29.188,87.507,26.93),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(29.456,87.321,26.96),size=3,color=turn_front,material="sprites/light_ignorez"},

			--{pos = Vector(31.238,85.665,27.14),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(30.941,85.941,27.11),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(30.644,86.217,27.08),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(30.347,86.493,27.05),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(30.05,86.769,27.02),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(29.753,87.045,26.99),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(29.456,87.321,26.96),size=3,color=turn_front,material="sprites/light_ignorez"},

			{pos = Vector(31.238,85.665,27.14),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(31.489,85.387,27.169),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(31.74,85.109,27.197),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(31.991,84.831,27.226),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(32.242,84.553,27.254),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(32.493,84.275,27.283),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(32.743,83.996,27.311),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(32.994,83.718,27.34),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(33.245,83.44,27.368),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(33.496,83.162,27.397),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(33.747,82.884,27.425),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(33.998,82.606,27.454),size=3,color=turn_front,material="sprites/light_ignorez"},

			--{pos = Vector(35.144,81.02,27.773),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(34.915,81.337,27.709),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(34.686,81.654,27.645),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(34.456,81.972,27.582),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(34.227,82.289,27.518),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(33.998,82.606,27.454),size=3,color=turn_front,material="sprites/light_ignorez"},

			{pos = Vector(35.144,81.02,27.773),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(35.302,80.693,27.915),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(35.46,80.365,28.056),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(35.618,80.038,28.198),size=3,color=turn_front,material="sprites/light_ignorez"},

			--{pos = Vector(37.22,74.751,31.049),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(37.147,74.991,30.919),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(37.074,75.232,30.79),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(37.002,75.472,30.66),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.929,75.712,30.531),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.856,75.953,30.401),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.783,76.193,30.271),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.71,76.433,30.142),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.637,76.674,30.012),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.565,76.914,29.883),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.492,77.154,29.753),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.419,77.394,29.624),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.346,77.635,29.494),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.273,77.875,29.364),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.201,78.115,29.235),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.128,78.356,29.105),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(36.055,78.596,28.976),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(35.982,78.836,28.846),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(35.909,79.077,28.716),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(35.836,79.317,28.587),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(35.764,79.557,28.457),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(35.691,79.798,28.328),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(35.618,80.038,28.198),size=3,color=turn_front,material="sprites/light_ignorez"},

			{pos = Vector(37.22,74.751,31.049),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(37.367,74.52,31.112),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(37.515,74.288,31.175),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(37.662,74.056,31.239),size=3,color=turn_front,material="sprites/light_ignorez"},
			{pos = Vector(37.809,73.825,31.302),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(37.957,73.593,31.365),size=3,color=turn_front,material="sprites/light_ignorez"},
			--{pos = Vector(38.104,73.362,31.428),size=3,color=turn_front,material="sprites/light_ignorez"},
		},
	},
	SubMaterials = {
        off = {
            Base = {
				[27] = "models/ctvehicles/toyota/gr_supra/symbols",
            },
        },
        on_lowbeam = {
            Base = {
				[27] = "husky_supra2020/symbols",
            },
        },
        on_highbeam = {
            Base = {
				[27] = "husky_supra2020/symbols",
            },
        },
    },
}
list.Set( "simfphys_lights", list_name, light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local V = {
	Name = "Toyota GR Supra 2020", -- название машины в меню
	Model = Model, -- модель машины (в вкладке дополнения и проп авто)
	Category = "HUSKY's Cars", -- категория в которой будет машина

	Members = {
		Mass = 1541, -- масса авто

		OnSpawn = function(ent)
			ent:SetColor(colors[math.random(#colors)])
		end,

		OnTick = function(ent)
			if ent:EngineActive() then
				ent:SetSubMaterial(18, "husky_supra2020/dash")
			else
				ent:SetSubMaterial(18, "models/ctvehicles/shared/vmt/black_void")
			end
		end,

		ModelInfo = {
			Color=Color(255,255,255),
			--Bodygroups = {0,0,1}
		},

		LightsTable = list_name, -- название light_table

		AirFriction = -300000,

		FrontWheelRadius = 14.6, --радиус переднего колеса
		RearWheelRadius = 14.7,--радиус заднего колеса

		CustomMassCenter = Vector(0,0,0),
		EnginePos = Vector(0,85,40),

		FirstPersonViewPos = Vector(0,-10,8),
		SeatOffset = Vector(-6,0,-7), -- положение водительского сидения
		SeatPitch = 0,

		SpeedoMax = -1, -- какая максималка на спидометре(может работать криво)

		PassengerSeats = { -- пассажирские места
			{
				pos = Vector(-20,-15,10),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
		},

		ExhaustPositions = { -- позиция выхлопа
        	{
                pos = Vector(-24.426,-99.65,13.701),
                ang = Angle(-90,90,0),
        	},
			{
                pos = Vector(24.426,-99.65,13.701),
                ang = Angle(-90,90,0),
        	},

        },

		StrengthenSuspension = true, -- жесткая подвеска.

		FrontHeight = 9.5, -- высота передней подвески
		FrontConstant = 43000,
		FrontDamping = 3000,
		FrontRelativeDamping = 3000,

		RearHeight = 9.5, -- высота задней подвески
		RearConstant = 43000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,

		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,

		TurnSpeed = 8,

		MaxGrip = 80,
		Efficiency = 1,
		GripOffset = -3,
		BrakePower = 70, -- сила торможения

		IdleRPM = 850, -- мин. кол-во оборотов
		LimitRPM = 7000, -- макс. кол-во оборотов
		Revlimiter = true, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 250, -- крутящий момент
		PowerbandStart = 600, -- какие обороты на нейтральной передаче
		PowerbandEnd = 6500, -- ограничение по оборотам
		Turbocharged = true, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = true, -- стреляющий выхлоп

		FuelFillPos = Vector(40.442,-50.388,37.753), -- положение заправки
		FuelType = FUELTYPE_PETROL, -- тип топлива
		FuelTankSize = 80, -- размер бака

		PowerBias = 1, -- привод. 1 - задний, 0 - полный, -1 - передний

		EngineSoundPreset = -1,
		snd_pitch = 0.8,
		snd_idle = "vehicles/"..list_name.."/startup.wav",

		snd_low = "vehicles/"..list_name.."/low.wav",
		snd_low_revdown = "vehicles/"..list_name.."/low.wav", -- это всё звук
		snd_low_pitch = 0.8,

		snd_mid = "vehicles/"..list_name.."/mid.wav",
		snd_mid_gearup = "vehicles/"..list_name.."/second.wav",
		snd_mid_geardown = "vehicles/"..list_name.."/second.wav",
		snd_mid_pitch = 0.8,

		snd_backfire = "vehicles/"..list_name.."/backfire.wav",
		snd_blowoff = "vehicles/"..list_name.."/blowoff.wav",
		snd_horn = "simulated_vehicles/horn_7.wav",

		DifferentialGear = 0.35,
		Gears = {-0.22,0,0.18,0.265,0.405,0.5,0.635,0.84,1.3,1.7} -- кол-во передач и "мощность"
	}
}
if (file.Exists( Model, "GAME" )) then -- путь модели (".mdl")
	list.Set( "simfphys_vehicles", list_name, V ) -- изменить на люброе название(например sim_fphys_lalala)
end
