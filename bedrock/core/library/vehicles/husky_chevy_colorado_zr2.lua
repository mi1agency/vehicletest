AddCSLuaFile()

local hood = Color(220,205,160)
local front_turn = Color(255,140,0)
local front_marker = Color(255,120,0,190)
local old = Color(220,205,160)
local turn = Color(255,150,0)
local brake = Color(220,10,0)
local brake_bulb = Color(220,60,0)
local rear = Color(255,10,0)
local front_aux = Color(220,225,255)
local reverse = Color(220,205,160)

local Model = "models/ctvehicles/chevrolet/colorado_zr2.mdl"
local list_name = "husky_chevy_colorado_zr2"

local light_table = {
	ModernLights = false, -- грубо говоря, ксенон или старые фары. True - ксенон, false - старые
	L_HeadLampPos = Vector(-37.307,104.54,38.502), -- рассположение обычных фар (левых - L)
	L_HeadLampAng = Angle(10,90,0), -- угол поворота фар

	R_HeadLampPos = Vector(37.307,104.54,38.502), -- рассположение обычных фар (правых - R)
	R_HeadLampAng = Angle(10,90,0), -- угол поворота фар

	L_RearLampPos = Vector(-37.101,-119.106 - 1,60.204), -- расположение задних фар
	L_RearLampAng = Angle(40,-90,0), -- угол поворота фар

	R_RearLampPos = Vector(37.101,-119.106 - 1,60.204), -- расположение задних фар
	R_RearLampAng = Angle(40,-90,0), -- угол поворота фар

	Headlight_sprites = { -- Обычные фары
		{pos = Vector(-35.88,113.865,49.393),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-35.88,113.865,49.393),size = 30,material="sprites/light_ignorez_new2",color=front},
		{pos = Vector(35.88,113.865,49.393),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(35.88,113.865,49.393),size = 30,material="sprites/light_ignorez_new2",color=front},

		{pos = Vector(-14.113,-126.442,32.925),size = 10,material="sprites/light_ignorez_new",color=old},
		{pos = Vector(14.113,-126.442,32.925),size = 10,material="sprites/light_ignorez_new",color=old},

		{pos = Vector(-32.227,119,44.823),size=20,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(-31.26,119.67,44.764),size=21,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(-30.293,120.341,44.705),size=22,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.326,121.011,44.646),size=23,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(-28.36,121.681,44.587),size=24,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.393,122.351,44.528),size=25,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(-26.426,123.022,44.469),size=25,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(-25.459,123.692,44.41),size=25,color=front_marker,material="sprites/light_ignorez_new"},

		{pos = Vector(32.227,119,44.823),size=20,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(31.26,119.67,44.764),size=21,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(30.293,120.341,44.705),size=22,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(29.326,121.011,44.646),size=23,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(28.36,121.681,44.587),size=24,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(27.393,122.351,44.528),size=25,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(26.426,123.022,44.469),size=25,color=front_marker,material="sprites/light_ignorez_new"},
		{pos = Vector(25.459,123.692,44.41),size=25,color=front_marker,material="sprites/light_ignorez_new"},
	},
	Headlamp_sprites = { -- дальние
		{pos = Vector(-29.12,119,49.409),size = 70,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-29.12,119,49.409),size = 50,material="sprites/light_ignorez_new2",color=front},
		{pos = Vector(29.12,119,49.409),size = 70,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(29.12,119,49.409),size = 50,material="sprites/light_ignorez_new2",color=front},
	},
	FogLight_sprites = { -- противотуманки
		{pos = Vector(-17.679,127.806,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		{pos = Vector(-16.273,127.931,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[6]={1}}},
		{pos = Vector(-14.867,128.056,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		--{pos = Vector(-13.46,128.18,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		{pos = Vector(-12.054,128.305,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		{pos = Vector(-10.648,128.43,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[6]={1}}},
		{pos = Vector(-9.242,128.555,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		--{pos = Vector(-7.836,128.68,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		{pos = Vector(-6.429 - 0.25,128.804,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		{pos = Vector(-5.023 - 0.25,128.929,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[6]={1}}},
		{pos = Vector(-3.617 - 0.25,129.054,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},

		{pos = Vector(17.679,127.806,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		{pos = Vector(16.273,127.931,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[6]={1}}},
		{pos = Vector(14.867,128.056,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		--{pos = Vector(13.46,128.18,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		{pos = Vector(12.054,128.305,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		{pos = Vector(10.648,128.43,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[6]={1}}},
		{pos = Vector(9.242,128.555,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		--{pos = Vector(7.836,128.68,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		{pos = Vector(6.429 + 0.25,128.804,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		{pos = Vector(5.023 + 0.25,128.929,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[6]={1}}},
		{pos = Vector(3.617 + 0.25,129.054,30.081),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},

		{pos = Vector(1.609,129.047,30.042),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},
		{pos = Vector(0,129.047,30.042),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[6]={1}}},
		{pos = Vector(-1.609,129.047,30.042),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[6]={1}}},

		{pos = Vector(11.676,126.356,58.311),size=40,color=hood,material="sprites/light_ignorez_new2",OnBodyGroups={[18]={1}}},
		{pos = Vector(11.676,126.356,58.311),size=40,color=hood,OnBodyGroups={[18]={1}}},
		{pos = Vector(3.892,126.356,58.311),size=40,color=hood,material="sprites/light_ignorez_new2",OnBodyGroups={[18]={1}}},
		{pos = Vector(3.892,126.356,58.311),size=40,color=hood,OnBodyGroups={[18]={1}}},
		{pos = Vector(-3.892,126.356,58.311),size=40,color=hood,material="sprites/light_ignorez_new2",OnBodyGroups={[18]={1}}},
		{pos = Vector(-3.892,126.356,58.311),size=40,color=hood,OnBodyGroups={[18]={1}}},
		{pos = Vector(-11.676,126.356,58.311),size=40,color=hood,material="sprites/light_ignorez_new2",OnBodyGroups={[18]={1}}},
		{pos = Vector(-11.676,126.356,58.311),size=40,color=hood,OnBodyGroups={[18]={1}}},


		{pos = Vector(23.094,37.208,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},
		{pos = Vector(25.061,36.931,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[10]={2}}},
		{pos = Vector(27.028,36.654,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},

		{pos = Vector(16.941,37.971,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},
		{pos = Vector(18.856,37.748,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[10]={2}}},
		{pos = Vector(20.77,37.526,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},

		{pos = Vector(10.215,38.684,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},
		{pos = Vector(12.354,38.415,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[10]={2}}},
		{pos = Vector(14.492,38.146,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},

		{pos = Vector(4.558,38.926,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},
		{pos = Vector(6.396,38.791,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[10]={2}}},
		{pos = Vector(8.233,38.656,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},

		{pos = Vector(1.958,38.967,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},
		{pos = Vector(0,38.967,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[10]={2}}},
		{pos = Vector(-1.958,38.967,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},

		{pos = Vector(-23.094,37.208,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},
		{pos = Vector(-25.061,36.931,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[10]={2}}},
		{pos = Vector(-27.028,36.654,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},

		{pos = Vector(-16.941,37.971,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},
		{pos = Vector(-18.856,37.748,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[10]={2}}},
		{pos = Vector(-20.77,37.526,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},

		{pos = Vector(-10.215,38.684,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},
		{pos = Vector(-12.354,38.415,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[10]={2}}},
		{pos = Vector(-14.492,38.146,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},

		{pos = Vector(-4.558,38.926,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},
		{pos = Vector(-6.396,38.791,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[10]={2}}},
		{pos = Vector(-8.233,38.656,87.917),size=30,color=front_aux,material="sprites/light_ignorez_new",OnBodyGroups={[10]={2}}},

		{pos = Vector(-16.544,-45.389,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(-15.245,-45.398,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(-13.946,-45.407,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(-12.647,-45.417,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(-11.348,-45.426,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(-10.049,-45.435,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(-16.544,-45.389,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(-15.245,-45.398,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(-13.946,-45.407,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(-12.647,-45.417,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(-11.348,-45.426,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(-10.049,-45.435,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},

		{pos = Vector(16.544,-45.389,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(15.245,-45.398,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(13.946,-45.407,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(12.647,-45.417,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(11.348,-45.426,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(10.049,-45.435,91.35),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(16.544,-45.389,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(15.245,-45.398,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(13.946,-45.407,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(12.647,-45.417,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(11.348,-45.426,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
		{pos = Vector(10.049,-45.435,90.137),size=10,color=front_aux,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={1}}},
	},
	Rearlight_sprites = { -- задние фары
		{pos = Vector(-37.101,-119.106 - 1,60.204),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.101,-119.106 - 1,59.454),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.101,-119.106 - 1,58.704),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.101,-119.106 - 1,57.954),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.101,-119.106 - 1,57.204),size=40,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-37.305,-119.574 - 0.5,50.467),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.305,-119.574 - 0.5,49.8),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.305,-119.574 - 0.5,49.134),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.305,-119.574 - 0.5,48.467),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.305,-119.574 - 0.5,47.8),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.305,-119.574 - 0.5,47.134),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.305,-119.574 - 0.5,46.467),size=40,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(37.101,-119.106 - 1,60.204),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.101,-119.106 - 1,59.454),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.101,-119.106 - 1,58.704),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.101,-119.106 - 1,57.954),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.101,-119.106 - 1,57.204),size=40,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(37.305,-119.574 - 0.5,50.467),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.305,-119.574 - 0.5,49.8),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.305,-119.574 - 0.5,49.134),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.305,-119.574 - 0.5,48.467),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.305,-119.574 - 0.5,47.8),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.305,-119.574 - 0.5,47.134),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.305,-119.574 - 0.5,46.467),size=40,color=rear,material="sprites/light_ignorez_new"},

	},
	Brakelight_sprites = { -- тормозные огни
		{pos = Vector(-2.237,-40.944,85.487),size=30,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},
		{pos = Vector(-1.118,-40.944,85.487),size=30,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},
		{pos = Vector(0,-40.944,85.487),size=30,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},
		{pos = Vector(0,-40.944,85.487),size=20,color=brake_bulb,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={0}}},
		{pos = Vector(1.118,-40.944,85.487),size=30,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},
		{pos = Vector(2.237,-40.944,85.487),size=30,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},

		{pos = Vector(-5.599,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(-5.01,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(-4.42,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(-3.831,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(-3.242,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(-2.652,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(-2.063,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(-1.473,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(-0.884,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(-0.295,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(0.295,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(0.884,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(1.473,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(2.063,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(2.652,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(3.242,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(3.831,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(4.42,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(5.01,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
		{pos = Vector(5.599,-50.904,86.192),size=15,color=brake,material="sprites/light_ignorez_new",OnBodyGroups={[8]={1}}},
	},
	Reverselight_sprites = { -- фары заднего хода
		{pos = Vector(-35.753,-121.087 - 0.8,54.123),size=15,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-36.536,-121.078 - 0.6,54.099),size=15,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.32,-121.07 - 0.4,54.076),size=15,color=reverse,material="sprites/light_ignorez_new2"},
		{pos = Vector(-38.103,-121.062 - 0.2,54.052),size=15,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-38.886,-121.053,54.028),size=15,color=reverse,material="sprites/light_ignorez_new"},

		{pos = Vector(35.753,-121.087 - 0.8,54.123),size=15,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(36.536,-121.078 - 0.6,54.099),size=15,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(37.32,-121.07 - 0.4,54.076),size=15,color=reverse,material="sprites/light_ignorez_new2"},
		{pos = Vector(38.103,-121.062 - 0.2,54.052),size=15,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(38.886,-121.053,54.028),size=15,color=reverse,material="sprites/light_ignorez_new"},

		{pos = Vector(-6.636,-40.448,85.9),size=15,color=reverse,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},
		{pos = Vector(-5.889,-40.448,85.9),size=15,color=reverse,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},
		{pos = Vector(-5.141,-40.448,85.9),size=15,color=reverse,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={0}}},
		{pos = Vector(-4.393,-40.448,85.9),size=15,color=reverse,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},
		{pos = Vector(-3.646,-40.448,85.9),size=15,color=reverse,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},

		{pos = Vector(6.636,-40.448,85.9),size=15,color=reverse,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},
		{pos = Vector(5.889,-40.448,85.9),size=15,color=reverse,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},
		{pos = Vector(5.141,-40.448,85.9),size=15,color=reverse,material="sprites/light_ignorez_new2",OnBodyGroups={[8]={0}}},
		{pos = Vector(4.393,-40.448,85.9),size=15,color=reverse,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},
		{pos = Vector(3.646,-40.448,85.9),size=15,color=reverse,material="sprites/light_ignorez_new",OnBodyGroups={[8]={0}}},
	},
	Turnsignal_sprites = { -- поворотники
		Left = { -- левый
			{pos = Vector(-32.227,119,44.823),size=20,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-31.26,119.67,44.764),size=21,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-30.293,120.341,44.705),size=22,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-29.326,121.011,44.646),size=23,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-28.36,121.681,44.587),size=24,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-27.393,122.351,44.528),size=25,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.426,123.022,44.469),size=25,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-25.459,123.692,44.41),size=25,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(-39.507,109.089,50.436),size=15,color=front_turn,material="sprites/light_ignorez_new2"},
			{pos = Vector(-39.46,109.832,50.39),size=15,color=front_turn,material="sprites/light_ignorez_new2"},
			{pos = Vector(-39.413,110.574,50.343),size=15,color=front_turn,material="sprites/light_ignorez_new2"},
		},
		TurnBrakeLeft = {
			{pos = Vector(-37.101,-119.106 - 1,60.204),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(-37.101,-119.106 - 1,59.454),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(-37.101,-119.106 - 1,58.704),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(-37.101,-119.106 - 1,57.954),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(-37.101,-119.106 - 1,57.204),size=40,color=brake,material="sprites/light_ignorez_new"},

			{pos = Vector(-37.305,-119.574 - 0.5,50.467),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(-37.305,-119.574 - 0.5,49.8),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(-37.305,-119.574 - 0.5,49.134),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(-37.305,-119.574 - 0.5,48.467),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(-37.305,-119.574 - 0.5,47.8),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(-37.305,-119.574 - 0.5,47.134),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(-37.305,-119.574 - 0.5,46.467),size=40,color=brake,material="sprites/light_ignorez_new"},
		},
		Right = { -- правый
			{pos = Vector(32.227,119,44.823),size=20,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(31.26,119.67,44.764),size=21,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(30.293,120.341,44.705),size=22,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(29.326,121.011,44.646),size=23,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(28.36,121.681,44.587),size=24,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(27.393,122.351,44.528),size=25,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.426,123.022,44.469),size=25,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(25.459,123.692,44.41),size=25,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(39.507,109.089,50.436),size=15,color=front_turn,material="sprites/light_ignorez_new2"},
			{pos = Vector(39.46,109.832,50.39),size=15,color=front_turn,material="sprites/light_ignorez_new2"},
			{pos = Vector(39.413,110.574,50.343),size=15,color=front_turn,material="sprites/light_ignorez_new2"},
		},
		TurnBrakeRight = {
			{pos = Vector(37.101,-119.106 - 1,60.204),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(37.101,-119.106 - 1,59.454),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(37.101,-119.106 - 1,58.704),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(37.101,-119.106 - 1,57.954),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(37.101,-119.106 - 1,57.204),size=40,color=brake,material="sprites/light_ignorez_new"},

			{pos = Vector(37.305,-119.574 - 0.5,50.467),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(37.305,-119.574 - 0.5,49.8),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(37.305,-119.574 - 0.5,49.134),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(37.305,-119.574 - 0.5,48.467),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(37.305,-119.574 - 0.5,47.8),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(37.305,-119.574 - 0.5,47.134),size=40,color=brake,material="sprites/light_ignorez_new"},
			{pos = Vector(37.305,-119.574 - 0.5,46.467),size=40,color=brake,material="sprites/light_ignorez_new"},
		},
	},
}
list.Set( "simfphys_lights", list_name, light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local V = {
	Name = "Chevrolet Colorado ZR2", -- название машины в меню
	Model = Model, -- модель машины (в вкладке дополнения и проп авто)
	Category = "HUSKY's Cars", -- категория в которой будет машина

	Members = {
		Mass = 2500, -- масса авто

		OnSpawn = function(ent)
			ent.hood = 0
			ent.trunk = 0
		end,

		OnTick = function(ent)
			local angle = ent:GetAngles()["y"]

			if angle <= -67.5 and angle >= -112.5 then
				ent:SetNWString("compass", "N")
			elseif angle < -112.5 and angle > -157.5 then
				ent:SetNWString("compass", "NE")
			elseif (angle <= -157.5 and angle >= -180) or (angle >= 157.5 and angle <= 180) then
				ent:SetNWString("compass", "E")
			elseif angle > 112.5 and angle < 157.5 then
				ent:SetNWString("compass", "SE")
			elseif angle >= 67.5 and angle <= 112.5 then
				ent:SetNWString("compass", "S")
			elseif angle > 22.5 and angle < 67.5 then
				ent:SetNWString("compass", "SW")
			elseif angle >= -22.5 and angle <= 22.5 then
				ent:SetNWString("compass", "W")
			else
				ent:SetNWString("compass", "NW")
			end

			local speed = math.min((ent:GetVelocity():Length() / 14.5 / 1.6) / 140, 1) * 272
			local rpm = ent:GetRPM()/8000 * (190) - 21

			if speed > 7.5 then
				ent.trunk = 0
				ent.hood = 0
			end

			if ent:GetBodygroup(7) == 0 then
				ent:SetBodygroup(18,0)
			else
				ent:SetBodygroup(18,1 - (math.Round((ent.hoodang or 0)*100)/100))
			end

			if (!ent:EngineActive()) then
				fuel = 0
			else
				fuel = ent:GetFuel()/ent:GetMaxFuel()
			end

			if ent:GetLightsEnabled() or ent:EngineActive() then
				ent:SetSubMaterial(15,"husky_chevy_colorado_zr2/digital")
				ent:SetNWBool("enable_dashboard", true)
			else
				ent:SetSubMaterial(15,"models/ctvehicles/shared/vmt/black")
				ent:SetNWBool("enable_dashboard", false)
			end

			if ent:GetLightsEnabled() then
				ent:SetSubMaterial(12,"models/ctvehicles/chevrolet/colorado_zr2/symbols_on")
				ent:SetSubMaterial(16,"models/ctvehicles/chevrolet/colorado_zr2/speed_tach_on")
			else
				ent:SetSubMaterial(12,"models/ctvehicles/chevrolet/colorado_zr2/symbols")
				ent:SetSubMaterial(16,"models/ctvehicles/chevrolet/colorado_zr2/speed_tach")
			end

			ent.rpmang = Lerp(0.09, ent.rpmang or 0, rpm or 0)
			ent.fuelgauge = Lerp(0.02, ent.fuelgauge or 0, fuel or 0)
			ent.hoodang = Lerp(0.1, ent.hoodang or 0, ent.hood or 0)
			ent.trunkang = Lerp(0.1, ent.trunkang or 0, ent.trunk or 0)

			ent:ManipulateBoneAngles(ent:LookupBone("bonnet"), Angle(ent.hoodang * (-50), 0, 0))
			ent:ManipulateBoneAngles(ent:LookupBone("tailgate"), Angle(ent.trunkang * (-73), 0, 0))
			ent:ManipulateBoneAngles(ent:LookupBone("speedo"), Angle(0, 0, -speed))
			ent:ManipulateBoneAngles(ent:LookupBone("tacho"), Angle(0, 0, -ent.rpmang))
			ent:SetPoseParameter("fuel_needle", ent.fuelgauge)
		end,

		ModelInfo = {
			LinkDoorAnims = {},
		},

		LightsTable = list_name, -- название light_table

		AirFriction = -300000,

		FrontWheelRadius = 18.5, --радиус переднего колеса
		RearWheelRadius = 18.4,--радиус заднего колеса

		CustomMassCenter = Vector(0,0,-3),
		EnginePos = Vector(0,124,45),

		FirstPersonViewPos = Vector(0,-13,8),
		SeatOffset = Vector(-6,0,-7), -- положение водительского сидения
		SeatPitch = 0,

		SpeedoMax = -1, -- какая максималка на спидометре(может работать криво)

		PassengerSeats = { -- пассажирские места
			{
				pos = Vector(18,20,32),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
			{
				pos = Vector(-19,-19,36),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
			{
				pos = Vector(19,-19,36),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
			{
				pos = Vector(0,-19,36),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
		},

		ExhaustPositions = { -- позиция выхлопа
        	{
                pos = Vector(40.149,-109.735,23.407),
                ang = Angle(-90,160,0),
				OnBodyGroups = {[12]={0}},
        	},
			{
                pos = Vector(21.292,-122.002,22.692),
                ang = Angle(-120,90,0),
				OnBodyGroups = {[12]={1}},
        	},
			{
                pos = Vector(22.267,-122.982,22.973),
                ang = Angle(-90,90,0),
				OnBodyGroups = {[12]={2}},
        	},
			{
                pos = Vector(22.131,-137.363,29.158),
                ang = Angle(-60,90,0),
				OnBodyGroups = {[12]={3}},
        	},
			{
                pos = Vector(-23.795,-126.931,23.514),
                ang = Angle(-83.5,90,0),
				OnBodyGroups = {[12]={4}},
        	},
			{
                pos = Vector(23.795,-126.931,23.514),
                ang = Angle(-83.5,90,0),
				OnBodyGroups = {[12]={4}},
        	},
			{
                pos = Vector(-23.729,-138.144,31.85),
                ang = Angle(-60,90,0),
				OnBodyGroups = {[12]={5}},
        	},
			{
                pos = Vector(23.729,-138.144,31.85),
                ang = Angle(-60,90,0),
				OnBodyGroups = {[12]={5}},
        	},
        },

		StrengthenSuspension = false, -- жесткая подвеска.

		FrontHeight = 14, -- высота передней подвески
		FrontConstant = 50000,
		FrontDamping = 3000,
		FrontRelativeDamping = 3000,

		RearHeight = 14, -- высота задней подвески
		RearConstant = 50000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,

		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,

		TurnSpeed = 4,

		MaxGrip = 80,
		Efficiency = 1.1,
		GripOffset = -3,
		BrakePower = 70, -- сила торможения

		IdleRPM = 750, -- мин. кол-во оборотов
		LimitRPM = 8000, -- макс. кол-во оборотов
		Revlimiter = true, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 200, -- крутящий момент
		PowerbandStart = 600, -- какие обороты на нейтральной передаче
		PowerbandEnd = 6750, -- ограничение по оборотам
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(-40.923,-50.106,50.299), -- положение заправки
		FuelType = FUELTYPE_PETROL, -- тип топлива
		FuelTankSize = 80, -- размер бака

		PowerBias = 0, -- привод. 1 - задний, 0 - полный, -1 - передний

		EngineSoundPreset = -1,
		snd_pitch = 1.05,
		snd_idle = "vehicles/"..list_name.."/idle.wav",

		snd_low = "vehicles/"..list_name.."/low.wav",
		snd_low_revdown = "vehicles/"..list_name.."/low.wav", -- это всё звук
		snd_low_pitch = 0.7,

		snd_mid = "vehicles/"..list_name.."/mid.wav",
		snd_mid_gearup = "vehicles/"..list_name.."/second.wav",
		snd_mid_geardown = "vehicles/"..list_name.."/second.wav",
		snd_mid_pitch = 0.7,

		snd_horn = "simulated_vehicles/horn_5.wav",

		DifferentialGear = 0.3,
		Gears = {-0.22,0,0.18,0.28,0.43,0.6,0.72,0.85,1,1.18} -- кол-во передач и "мощность"
	}
}
if (file.Exists( Model, "GAME" )) then -- путь модели (".mdl")
	list.Set( "simfphys_vehicles", list_name, V ) -- изменить на люброе название(например sim_fphys_lalala)
end
