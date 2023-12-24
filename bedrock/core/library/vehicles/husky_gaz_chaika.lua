AddCSLuaFile()

local front = Color(220,205,160)
local turn = Color(255,100,0)
local rear = Color(255,20,0)
local reverse = Color(255,248,220)

local Model = "models/ctvehicles/gaz/13.mdl"
local list_name = "husky_gaz_chaika"

local speeds = {{0,0},
				{20,20},
				{40,45},
				{60,69},
				{80,93},
				{100,117},
				{120,141},
				{140,165},
				{160,190},
				{180,216},
				{200,241},}

local function CalcAngle(cur_speed)
	for i=2,#speeds do
		if (cur_speed < speeds[i][1]) then
			return speeds[i-1][2] + (cur_speed%(speeds[i][1]-speeds[i-1][1]))/(speeds[i][1]-speeds[i-1][1]) * (speeds[i][2]-speeds[i-1][2])
		end
	end
	return speeds[#speeds][2]
end

local light_table = {
	ModernLights = false, -- грубо говоря, ксенон или старые фары. True - ксенон, false - старые
	L_HeadLampPos = Vector(-40.599,120.221,48.916), -- рассположение обычных фар (левых - L)
	L_HeadLampAng = Angle(180,-90,0), -- угол поворота фар

	R_HeadLampPos = Vector(40.599,120.221,48.916), -- рассположение обычных фар (правых - R)
	R_HeadLampAng = Angle(180,-90,0), -- угол поворота фар

	L_RearLampPos = Vector(-47.331,-138.178,42.937), -- расположение задних фар
	L_RearLampAng = Angle(0,-90,0), -- угол поворота фар

	R_RearLampPos = Vector(47.331,-138.178,42.937), -- расположение задних фар
	R_RearLampAng = Angle(0,-90,0), -- угол поворота фар

	Headlight_sprites = { -- Обычные фары
		{pos = Vector(-40.599,120.221,48.916),size = 60,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-40.599,120.221,48.916),size = 40,material="sprites/light_ignorez_new2",color=front},
		{pos = Vector(-40.599,120.221,48.916),size = 50,color=front},

		{pos = Vector(40.599,120.221,48.916),size = 60,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(40.599,120.221,48.916),size = 40,material="sprites/light_ignorez_new2",color=front},
		{pos = Vector(40.599,120.221,48.916),size = 50,color=front},

		--[[{pos = Vector(-47.481,110.774,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-47.389,111.589,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-47.297,112.404,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-47.205,113.22,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-47.113,114.035,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-47.021,114.85,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.928,115.665,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.836,116.48,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.744,117.295,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.652,118.111,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.56,118.926,35.793),size=20,color=front,material="sprites/light_ignorez_new"},]]
		{pos = Vector(-46.468,119.741,35.793),size=20,color=front,material="sprites/light_ignorez_new2"},
		{pos = Vector(-46.468,119.741,35.793),size=20,color=front,material="sprites/light_ignorez_new"},

		--[[{pos = Vector(47.481,110.774,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(47.389,111.589,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(47.297,112.404,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(47.205,113.22,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(47.113,114.035,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(47.021,114.85,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(46.928,115.665,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(46.836,116.48,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(46.744,117.295,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(46.652,118.111,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(46.56,118.926,35.793),size=20,color=front,material="sprites/light_ignorez_new"},]]
		{pos = Vector(46.468,119.741,35.793),size=20,color=front,material="sprites/light_ignorez_new2"},
		{pos = Vector(46.468,119.741,35.793),size=20,color=front,material="sprites/light_ignorez_new"},
	},
	Headlamp_sprites = { -- дальние
		{pos = Vector(-40.599,120.221,48.916),size = 60,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(40.599,120.221,48.916),size = 60,material="sprites/light_ignorez_new",color=front},
	},
	FogLight_sprites = { -- противотуманки
	},
	Rearlight_sprites = { -- задние фары
		{pos = Vector(-47.331,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.775,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.218,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.662,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.106,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.55,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.993,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.437,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.881,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.325,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-41.768,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-41.212,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-47.2,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.571,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.942,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.313,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.684,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.054,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.425,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.796,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.167,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-41.538,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-46.87,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.842,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.814,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.786,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.758,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-41.73,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-46.633,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.031,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.428,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.826,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.224,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.622,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.02,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.417,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-41.815,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-44.283,-143.989,55.4),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.283,-143.989,55.23),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.283,-143.989,55.1),size=50,color=rear,material="sprites/light_ignorez_new"},


		{pos = Vector(-0.4 + 47.331,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 46.775,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 46.218,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.662,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.106,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.55,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.993,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.437,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.881,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.325,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 41.768,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 41.212,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-0.4 + 47.2,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 46.571,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.942,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.313,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.684,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.054,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.425,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.796,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.167,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 41.538,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-0.4 + 46.87,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.842,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.814,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.786,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.758,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 41.73,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-0.4 + 46.633,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 46.031,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.428,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.826,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.224,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.622,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.02,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.417,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 41.815,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-0.4 + 44.283,-143.989,55.4),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.283,-143.989,55.23),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.283,-143.989,55.1),size=50,color=rear,material="sprites/light_ignorez_new"},
	},
	Brakelight_sprites = { -- тормозные огни
		{pos = Vector(-47.331,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.775,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.218,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.662,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.106,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.55,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.993,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.437,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.881,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.325,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-41.768,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-41.212,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-47.2,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.571,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.942,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.313,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.684,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.054,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.425,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.796,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.167,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-41.538,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-46.87,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.842,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.814,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.786,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.758,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-41.73,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-46.633,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.031,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.428,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.826,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.224,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.622,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.02,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.417,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-41.815,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-44.283,-143.989,55.4),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.283,-143.989,55.23),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.283,-143.989,55.1),size=50,color=rear,material="sprites/light_ignorez_new"},


		{pos = Vector(-0.4 + 47.331,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 46.775,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 46.218,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.662,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.106,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.55,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.993,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.437,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.881,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.325,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 41.768,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 41.212,-138.178,42.937),size=20,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-0.4 + 47.2,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 46.571,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.942,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.313,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.684,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.054,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.425,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.796,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.167,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 41.538,-139.584,45.618),size=20,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-0.4 + 46.87,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.842,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.814,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.786,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.758,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 41.73,-141.272,48.964),size=27,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-0.4 + 46.633,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 46.031,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 45.428,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.826,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.224,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.622,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 43.02,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 42.417,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 41.815,-142.656,52.149),size=18,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(-0.4 + 44.283,-143.989,55.4),size=20,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.283,-143.989,55.23),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.4 + 44.283,-143.989,55.1),size=50,color=rear,material="sprites/light_ignorez_new"},
	},
	Reverselight_sprites = { -- фары заднего хода
		{pos = Vector(-39.486,-139.685,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-40.53,-139.685 - 0.75,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-41.574,-139.685 - 1.5,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.618,-139.685 - 2.25,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.662,-139.685 - 2.75,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-44.706,-139.685 - 2.75,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-45.75,-139.685 - 2.25,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-46.794,-139.685 - 1.5,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-47.838,-139.685 - 0.75,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-48.882,-139.685,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},

		{pos = Vector(39.486,-139.685,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(40.53,-139.685 - 0.75,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(41.574,-139.685 - 1.5,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(42.618,-139.685 - 2.25,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(43.662,-139.685 - 2.75,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(44.706,-139.685 - 2.75,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(45.75,-139.685 - 2.25,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(46.794,-139.685 - 1.5,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(47.838,-139.685 - 0.75,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(48.882,-139.685,35.51),size=25,color=reverse,material="sprites/light_ignorez_new"},
	},
	Turnsignal_sprites = { -- поворотники
		Left = { -- левый
			{pos = Vector(-40.542,120.583,36.065),size=50,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-40.542,120.583,36.065),size=30,color=turn,material="sprites/light_ignorez_new2"},
			{pos = Vector(-40.542,120.583,36.065),size=40,color=turn},

			{pos = Vector(-48.616,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-47.633,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-46.65,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-45.667,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-44.684,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-43.702,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-42.719,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-41.736,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-40.753,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-39.77,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
		},
		Right = { -- правый
			{pos = Vector(40.542,120.583,36.065),size=50,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(40.542,120.583,36.065),size=30,color=turn,material="sprites/light_ignorez_new2"},
			{pos = Vector(40.542,120.583,36.065),size=40,color=turn},

			{pos = Vector(48.616,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(47.633,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(46.65,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(45.667,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(44.684,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(43.702,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(42.719,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(41.736,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(40.753,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(39.77,-142.177,39.333),size=27,color=turn,material="sprites/light_ignorez_new"},
		},
	},
	
}
list.Set( "simfphys_lights", list_name, light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local V = {
	Name = "GAZ-13 Chaika", -- название машины в меню
	Model = Model, -- модель машины (в вкладке дополнения и проп авто)
	Category = "HUSKY's Cars", -- категория в которой будет машина

	Members = {
		Mass = 2500, -- масса авто

		OnTick = function(ent)
			local speed = CalcAngle((ent:GetVelocity():Length() / 14.5))
			ent:ManipulateBoneAngles(ent:LookupBone("speedo"), Angle(0, 0, speed))
		end,



		LightsTable = list_name, -- название light_table

		AirFriction = -300000,

		FrontWheelRadius = 18.2, --радиус переднего колеса
		RearWheelRadius = 18.3,--радиус заднего колеса

		CustomMassCenter = Vector(0,0,-2),
		EnginePos = Vector(0,120,38),

		FirstPersonViewPos = Vector(0,-15,10),
		SeatOffset = Vector(-6,0,-10), -- положение водительского сидения
		SeatPitch = 0,

		SpeedoMax = -1, -- какая максималка на спидометре(может работать криво)

		PassengerSeats = { -- пассажирские места
			{
				pos = Vector(18,20,25),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
			{
				pos = Vector(-19,-57,29),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
			{
				pos = Vector(19,-57,29),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
		},

		ExhaustPositions = { -- позиция выхлопа
        	{
                pos = Vector(-43.65,-147.01,26.686),
                ang = Angle(-90,90,0),
        	},
			{
                pos = Vector(43.65,-147.01,26.686),
                ang = Angle(-90,90,0),
        	},
        },

		StrengthenSuspension = false, -- жесткая подвеска.

		FrontHeight = 13, -- высота передней подвески
		FrontConstant = 43000,
		FrontDamping = 3000,
		FrontRelativeDamping = 3000,

		RearHeight = 13, -- высота задней подвески
		RearConstant = 43000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,

		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,

		TurnSpeed = 4,

		MaxGrip = 80,
		Efficiency = 1.1,
		GripOffset = -3,
		BrakePower = 40, -- сила торможения

		IdleRPM = 750, -- мин. кол-во оборотов
		LimitRPM = 6000, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 80, -- крутящий момент
		PowerbandStart = 600, -- какие обороты на нейтральной передаче
		PowerbandEnd = 4400, -- ограничение по оборотам
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(-42.666,-69.617,53.83), -- положение заправки
		FuelType = FUELTYPE_PETROL, -- тип топлива
		FuelTankSize = 80, -- размер бака

		PowerBias = 1, -- привод. 1 - задний, 0 - полный, -1 - передний

		EngineSoundPreset = -1,
		snd_pitch = 0.9,
		snd_idle = "vehicles/"..list_name.."/idle.wav",

		snd_low = "vehicles/"..list_name.."/low.wav",
		snd_low_revdown = "vehicles/"..list_name.."/low.wav", -- это всё звук
		snd_low_pitch = 0.9,

		snd_mid = "vehicles/"..list_name.."/mid.wav",
		snd_mid_gearup = "vehicles/"..list_name.."/second.wav",
		snd_mid_geardown = "vehicles/"..list_name.."/second.wav",
		snd_mid_pitch = 0.9,

		snd_backfire = "vehicles/"..list_name.."/backfire.wav",
		snd_blowoff = "vehicles/"..list_name.."/blowoff.wav",
		snd_horn = "simulated_vehicles/horn_7.wav",

		DifferentialGear = 0.45,
		Gears = {-0.22,0,0.13,0.3,0.43} -- кол-во передач и "мощность"
	}
}
if (file.Exists( Model, "GAME" )) then -- путь модели (".mdl")
	list.Set( "simfphys_vehicles", list_name, V ) -- изменить на люброе название(например sim_fphys_lalala)
end

local V = {
	Name = "GAZ-13B Chaika Cabrio", -- название машины в меню
	Model = "models/ctvehicles/gaz/13b.mdl", -- модель машины (в вкладке дополнения и проп авто)
	Category = "HUSKY's Cars", -- категория в которой будет машина

	Members = {
		Mass = 2500, -- масса авто

		OnTick = function(ent)
			local speed = CalcAngle((ent:GetVelocity():Length() / 14.5))
			ent:ManipulateBoneAngles(ent:LookupBone("speedo"), Angle(0, 0, speed))
		end,



		LightsTable = list_name, -- название light_table

		AirFriction = -300000,

		FrontWheelRadius = 18.2, --радиус переднего колеса
		RearWheelRadius = 18.3,--радиус заднего колеса

		CustomMassCenter = Vector(0,0,-2),
		EnginePos = Vector(0,120,38),

		FirstPersonViewPos = Vector(0,-15,10),
		SeatOffset = Vector(-6,0,-10), -- положение водительского сидения
		SeatPitch = 0,

		SpeedoMax = -1, -- какая максималка на спидометре(может работать криво)

		PassengerSeats = { -- пассажирские места
			{
				pos = Vector(18,20,25),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
			{
				pos = Vector(-19,-57,29),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
			{
				pos = Vector(19,-57,29),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
		},

		ExhaustPositions = { -- позиция выхлопа
        	{
                pos = Vector(-43.65,-147.01,26.686),
                ang = Angle(-90,90,0),
        	},
			{
                pos = Vector(43.65,-147.01,26.686),
                ang = Angle(-90,90,0),
        	},
        },

		StrengthenSuspension = false, -- жесткая подвеска.

		FrontHeight = 13, -- высота передней подвески
		FrontConstant = 43000,
		FrontDamping = 3000,
		FrontRelativeDamping = 3000,

		RearHeight = 13, -- высота задней подвески
		RearConstant = 43000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,

		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,

		TurnSpeed = 4,

		MaxGrip = 80,
		Efficiency = 1.1,
		GripOffset = -3,
		BrakePower = 40, -- сила торможения

		IdleRPM = 750, -- мин. кол-во оборотов
		LimitRPM = 6000, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 80, -- крутящий момент
		PowerbandStart = 600, -- какие обороты на нейтральной передаче
		PowerbandEnd = 4400, -- ограничение по оборотам
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(-42.666,-69.617,53.83), -- положение заправки
		FuelType = FUELTYPE_PETROL, -- тип топлива
		FuelTankSize = 80, -- размер бака

		PowerBias = 1, -- привод. 1 - задний, 0 - полный, -1 - передний

		EngineSoundPreset = -1,
		snd_pitch = 0.9,
		snd_idle = "vehicles/"..list_name.."/idle.wav",

		snd_low = "vehicles/"..list_name.."/low.wav",
		snd_low_revdown = "vehicles/"..list_name.."/low.wav", -- это всё звук
		snd_low_pitch = 0.9,

		snd_mid = "vehicles/"..list_name.."/mid.wav",
		snd_mid_gearup = "vehicles/"..list_name.."/second.wav",
		snd_mid_geardown = "vehicles/"..list_name.."/second.wav",
		snd_mid_pitch = 0.9,

		snd_backfire = "vehicles/"..list_name.."/backfire.wav",
		snd_blowoff = "vehicles/"..list_name.."/blowoff.wav",
		snd_horn = "simulated_vehicles/horn_7.wav",

		DifferentialGear = 0.45,
		Gears = {-0.22,0,0.13,0.3,0.43} -- кол-во передач и "мощность"
	}
}
if (file.Exists( Model, "GAME" )) then -- путь модели (".mdl")
	list.Set( "simfphys_vehicles", "husky_gaz_chaika_b", V ) -- изменить на люброе название(например sim_fphys_lalala)
end
