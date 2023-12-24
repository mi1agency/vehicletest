AddCSLuaFile()

local de = Color(255,0,190,255)

local front_turn = Color(255,140,0)
local old = Color(220,205,160)
local turn = Color(255,150,0)
local brake = Color(220,50,0)
local brake2 = Color(220,150,0)
local rear = Color(255,10,0,130)
local rear_fog = Color(255,30,0)
local reverse = Color(220,205,160)

local Model = "models/ctvehicles/mini/hatch_jcw_convertible.mdl"
local list_name = "husky_mini_cooper_2018"

local rpm_array = {{0,42},{1000,-3},{8000,-108}}

local function CalcAngle(value, array)
	for i=2,#array do
		if (value < array[i][1]) then
			return array[i-1][2] + (((value - array[i][1]) % (array[i][1]-array[i-1][1]) ) / (array[i][1]-array[i-1][1])) * (array[i][2]-array[i-1][2])
		end
	end
	return array[#array][2]
end

list.Set( "simfphys_lights", list_name, {
	ModernLights = true,
	L_HeadLampPos = Vector(-30.087,74.206,37.175),
	L_HeadLampAng = Angle(180,-90,0),

	R_HeadLampPos = Vector(30.087,74.206,37.175),
	R_HeadLampAng = Angle(180,-90,0),

	L_RearLampPos = Vector(-29.702,-80.653,40.473),
	L_RearLampAng = Angle(0,-90,0),

	R_RearLampPos = Vector(29.702,-80.653,40.473),
	R_RearLampAng = Angle(0,-90,0),

	Headlight_sprites = {
		{pos = Vector(-30.087 + 0.5,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-30.087,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-30.087,74.206,37.175),size = 15,material="sprites/light_ignorez_new2",color=front},
		{pos = Vector(-30.087 - 0.5,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},

		{pos = Vector(30.087 + 0.5,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(30.087,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(30.087,74.206,37.175),size = 15,material="sprites/light_ignorez_new2",color=front},
		{pos = Vector(30.087 - 0.5,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},


	},
	Headlamp_sprites = {
		{pos = Vector(-30.087 + 0.5,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-30.087,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-30.087,74.206,37.175),size = 15,material="sprites/light_ignorez_new2",color=front},
		{pos = Vector(-30.087 - 0.5,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},

		{pos = Vector(30.087 + 0.5,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(30.087,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(30.087,74.206,37.175),size = 15,material="sprites/light_ignorez_new2",color=front},
		{pos = Vector(30.087 - 0.5,74.206,37.175),size = 15,material="sprites/light_ignorez_new",color=front},
	},
	FogLight_sprites = {
		{pos = Vector(-14.93,-87.904,15.138),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(-15.472,-87.854,15.13),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(-16.013,-87.805,15.122),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(-16.555,-87.755,15.113),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(-17.097,-87.705,15.105),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(-17.638,-87.656,15.097),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(-18.18,-87.606,15.089),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(-18.722,-87.556,15.08),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(-19.263,-87.507,15.072),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(-19.805,-87.457,15.064),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
	
		{pos = Vector(14.93,-87.904,15.138),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(15.472,-87.854,15.13),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(16.013,-87.805,15.122),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(16.555,-87.755,15.113),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(17.097,-87.705,15.105),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(17.638,-87.656,15.097),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(18.18,-87.606,15.089),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(18.722,-87.556,15.08),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(19.263,-87.507,15.072),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
		{pos = Vector(19.805,-87.457,15.064),size=20,color=rear_fog,material="sprites/light_ignorez_new"},
	},
	Rearlight_sprites = {
		{pos = Vector(-30.079,-82.125,36.044 - 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-30.079 + 2,-82.125,36.044 - 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-30.079 - 2,-82.125,36.044 - 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.702,-80.653,40.473 + 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.702 + 2,-80.653,40.473 + 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.702 - 2,-80.653,40.473 + 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
		
		{pos = Vector(30.079,-82.125,36.044 - 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(30.079 + 2,-82.125,36.044 - 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(30.079 - 2,-82.125,36.044 - 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(29.702,-80.653,40.473 + 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(29.702 + 2,-80.653,40.473 + 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(29.702 - 2,-80.653,40.473 + 0.5),size=50,color=rear,material="sprites/light_ignorez_new"},
	},
	Brakelight_sprites = {
		{pos = Vector(-27.188,-84.157,34.286),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.21,-84.004,34.794),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.232,-83.851,35.301),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.254,-83.698,35.808),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.276,-83.544,36.316),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.298,-83.391,36.824),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.32,-83.238,37.331),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.342,-83.085,37.838),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.364,-82.932,38.346),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.386,-82.779,38.854),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.408,-82.626,39.361),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.43,-82.472,39.868),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.452,-82.319,40.376),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.474,-82.166,40.884),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.496,-82.013,41.391),size=12,color=brake,material="sprites/light_ignorez_new"},		
		
		{pos = Vector(27.188,-84.157,34.286),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.21,-84.004,34.794),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.232,-83.851,35.301),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.254,-83.698,35.808),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.276,-83.544,36.316),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.298,-83.391,36.824),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.32,-83.238,37.331),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.342,-83.085,37.838),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.364,-82.932,38.346),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.386,-82.779,38.854),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.408,-82.626,39.361),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.43,-82.472,39.868),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.452,-82.319,40.376),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.474,-82.166,40.884),size=12,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(27.496,-82.013,41.391),size=12,color=brake,material="sprites/light_ignorez_new"},
		
		{pos = Vector(-7.469,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-6.535,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-5.602,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-4.668,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-3.734,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-2.801,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-1.867,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(-0.934,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(0,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(0.934,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(1.867,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(2.801,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(3.734,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(4.668,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(5.602,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(6.535,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},
		{pos = Vector(7.469,-80.859,46.357),size=13,color=brake,material="sprites/light_ignorez_new"},

		{pos = Vector(-7.469,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(-6.535,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(-5.602,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(-4.668,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(-3.734,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(-2.801,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(-1.867,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(-0.934,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(0,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(0.934,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(1.867,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(2.801,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(3.734,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(4.668,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(5.602,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(6.535,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},
		{pos = Vector(7.469,-80.859,46.357),size=5,color=brake2,material="sprites/light_ignorez_new2"},

	},
	Reverselight_sprites = {
		{pos = Vector(-32.314,-81.737,32.22),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-31.974,-81.857,32.221),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-31.633,-81.978,32.222),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-31.293,-82.098,32.224),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-30.953,-82.218,32.225),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-30.612,-82.338,32.226),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-30.272,-82.459,32.227),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.932,-82.579,32.228),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.591,-82.699,32.23),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.251,-82.82,32.231),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-28.91,-82.94,32.232),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-28.57,-83.06,32.233),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-28.23,-83.18,32.235),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.889,-83.301,32.236),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.549,-83.421,32.237),size=9,color=reverse,material="sprites/light_ignorez_new"},
			
		{pos = Vector(32.314,-81.737,32.22),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(31.974,-81.857,32.221),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(31.633,-81.978,32.222),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(31.293,-82.098,32.224),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(30.953,-82.218,32.225),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(30.612,-82.338,32.226),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(30.272,-82.459,32.227),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(29.932,-82.579,32.228),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(29.591,-82.699,32.23),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(29.251,-82.82,32.231),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(28.91,-82.94,32.232),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(28.57,-83.06,32.233),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(28.23,-83.18,32.235),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(27.889,-83.301,32.236),size=9,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(27.549,-83.421,32.237),size=9,color=reverse,material="sprites/light_ignorez_new"},
	},
	Turnsignal_sprites = {
		Left = {
			{pos = Vector(-38.848,35.154,37.923),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-38.831,35.78,37.912),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-38.815,36.405,37.9),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-38.798,37.031,37.889),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-38.781,37.656,37.877),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-38.764,38.282,37.866),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-38.748,38.907,37.854),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-38.731,39.533,37.843),size=10,color=turn,material="sprites/light_ignorez_new"},
		
			--{pos = Vector(-27.219,-82.834,38.663),size=7,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-27.616,-82.66,38.659),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-28.013,-82.486,38.656),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-28.409,-82.312,38.652),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-28.806,-82.138,38.649),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-29.203,-81.964,38.646),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-29.6,-81.79,38.642),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-29.996,-81.616,38.638),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-30.393,-81.442,38.635),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-30.79,-81.268,38.631),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-31.187,-81.094,38.628),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-31.584,-80.92,38.624),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-31.98,-80.746,38.621),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-32.377,-80.572,38.618),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-32.774,-80.398,38.614),size=9,color=turn,material="sprites/light_ignorez_new"},
		
			{pos = Vector(-29.521 + 0.1,78.942,33.199),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-29.946,78.747,33.206),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-30.371,78.551,33.212 + 0.05),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(-30.796,78.356,33.219),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(-32.3,76.764,33.823),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-31.924 - 0.1,77.162,33.672),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-31.548 - 0.15,77.56,33.521),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-31.172 - 0.1,77.958,33.37),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-30.796,78.356,33.219 + 0.05),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(-32.3,76.764,33.823),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-32.506 - 0.05,76.39,34.079),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-32.711 - 0.1,76.016,34.335),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-32.917 - 0.1,75.642,34.59),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.123 - 0.1,75.268,34.846),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.328 - 0.05,74.894,35.102),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(-33.534,74.52,35.358),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(-33.732,73.64,36.035),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.633,74.08,35.696),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.534,74.52,35.358),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(-33.732,73.64,36.035),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.771,73.308,36.325),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.81,72.975,36.614),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(-33.849,72.643,36.904),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(-33.806,71.751,37.792),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.82,72.048,37.496),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.835,72.346,37.2),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.849,72.643,36.904),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(-33.806,71.751,37.792),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.721,71.491,38.071),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.636,71.231,38.349),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(-33.551,70.971,38.628),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(-33.005,70.366,39.377),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.187,70.568,39.127),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.369,70.769,38.878),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.551,70.971,38.628),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(-33.005,70.366,39.377 + 0.025),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-32.721,70.274,39.619 - 0.025),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-32.438,70.182,39.86 - 0.05),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(-32.154,70.09,40.102),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(-31.408,70.108,40.496),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-31.781,70.099,40.299),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-32.154,70.09,40.102),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(-31.408,70.108,40.496),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-31.015,70.208,40.602),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-30.622,70.307,40.708 - 0.05),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(-30.229,70.523,40.872),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(-29.191,70.108,40.496),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-29.71,70.502 + 0.2,40.678 + 0.05),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-30.229,70.523 - 0.05,40.872 - 0.1),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(-29.191,70.108 + 0.8,40.496 + 0.15),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-28.787,70.799 + 0.5,40.447 + 0.1),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-28.384,71.489 + 0.2,40.398),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(-27.98,72.18,40.349),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(-26.747,73.809,39.413),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-27.055,73.402,39.647),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-27.364,72.994,39.881),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-27.672,72.587,40.115),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-27.98,72.18,40.349),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(-26.747 - 0.05,73.809,39.413),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.617,74.157,39.137),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.486,74.505,38.862),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(-26.356,74.853,38.586),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(-26.133,76.008,37.665),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.207,75.623,37.972),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.282,75.238,38.279),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.356,74.853,38.586),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(-26.133,76.008,37.665),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.129,76.311,37.371),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.125,76.615,37.077),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(-26.121,76.918,36.783),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(-26.233,77.603,36.148),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.177,77.261,36.466),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.121,76.918,36.783),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(-26.233,77.603,36.148),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.361,77.865,35.86),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.489,78.127,35.573),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(-26.617,78.389,35.285),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(-27.134,78.757,34.666),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.876,78.573,34.976),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.617,78.389,35.285),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(-27.134,78.757,34.666),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-27.522 + 0.05,78.918,34.31),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(-27.909,79.08,33.954),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(-29.521,78.742,33.199),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-29.118,78.827 + 0.15,33.388 - 0.15),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-28.715,78.911 + 0.1,33.576 - 0.2),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-28.312 - 0.1,78.996 + 0.05,33.765 - 0.15),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-27.909 + 0.05,79.08,33.954 - 0.025),size=9,color=front_turn,material="sprites/light_ignorez_new"},
		},
		Right = {
			{pos = Vector(38.848,35.154,37.923),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(38.831,35.78,37.912),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(38.815,36.405,37.9),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(38.798,37.031,37.889),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(38.781,37.656,37.877),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(38.764,38.282,37.866),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(38.748,38.907,37.854),size=10,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(38.731,39.533,37.843),size=10,color=turn,material="sprites/light_ignorez_new"},
			
			--{pos = Vector(27.219,-82.834,38.663),size=7,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(27.616,-82.66,38.659),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(28.013,-82.486,38.656),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(28.409,-82.312,38.652),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(28.806,-82.138,38.649),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(29.203,-81.964,38.646),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(29.6,-81.79,38.642),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(29.996,-81.616,38.638),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(30.393,-81.442,38.635),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(30.79,-81.268,38.631),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(31.187,-81.094,38.628),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(31.584,-80.92,38.624),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(31.98,-80.746,38.621),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(32.377,-80.572,38.618),size=9,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(32.774,-80.398,38.614),size=9,color=turn,material="sprites/light_ignorez_new"},
		
			{pos = Vector(29.521 - 0.1,78.942,33.199),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(29.946,78.747,33.206),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(30.371,78.551,33.212 + 0.05),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(30.796,78.356,33.219),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(32.3,76.764,33.823),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(31.924 + 0.1,77.162,33.672),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(31.548 + 0.15,77.56,33.521),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(31.172 + 0.1,77.958,33.37),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(30.796,78.356,33.219 + 0.05),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(32.3,76.764,33.823),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(32.506 + 0.05,76.39,34.079),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(32.711 + 0.1,76.016,34.335),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(32.917 + 0.1,75.642,34.59),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.123 + 0.1,75.268,34.846),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.328 + 0.05,74.894,35.102),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(33.534,74.52,35.358),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(33.732,73.64,36.035),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.633,74.08,35.696),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.534,74.52,35.358),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(33.732,73.64,36.035),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.771,73.308,36.325),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.81,72.975,36.614),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(33.849,72.643,36.904),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(33.806,71.751,37.792),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.82,72.048,37.496),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.835,72.346,37.2),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.849,72.643,36.904),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(33.806,71.751,37.792),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.721,71.491,38.071),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.636,71.231,38.349),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(33.551,70.971,38.628),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(33.005,70.366,39.377),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.187,70.568,39.127),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.369,70.769,38.878),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(33.551,70.971,38.628),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(33.005,70.366,39.377 + 0.025),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(32.721,70.274,39.619 - 0.025),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(32.438,70.182,39.86 - 0.05),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(32.154,70.09,40.102),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(31.408,70.108,40.496),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(31.781,70.099,40.299),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(32.154,70.09,40.102),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(31.408,70.108,40.496),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(31.015,70.208,40.602),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(30.622,70.307,40.708 - 0.05),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(30.229,70.523,40.872),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(29.191,70.108,40.496),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(29.71,70.502 + 0.2,40.678 + 0.05),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(30.229,70.523 - 0.05,40.872 - 0.1),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(29.191,70.108 + 0.8,40.496 + 0.15),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(28.787,70.799 + 0.5,40.447 + 0.1),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(28.384,71.489 + 0.2,40.398),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(27.98,72.18,40.349),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(26.747,73.809,39.413),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(27.055,73.402,39.647),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(27.364,72.994,39.881),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(27.672,72.587,40.115),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(27.98,72.18,40.349),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(26.747 - 0.05,73.809,39.413),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.617,74.157,39.137),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.486,74.505,38.862),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(26.356,74.853,38.586),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(26.133,76.008,37.665),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.207,75.623,37.972),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.282,75.238,38.279),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.356,74.853,38.586),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(26.133,76.008,37.665),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.129,76.311,37.371),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.125,76.615,37.077),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(26.121,76.918,36.783),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(26.233,77.603,36.148),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.177,77.261,36.466),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.121,76.918,36.783),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(26.233,77.603,36.148),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.361,77.865,35.86),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.489,78.127,35.573),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(26.617,78.389,35.285),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(27.134,78.757,34.666),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.876,78.573,34.976),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(26.617,78.389,35.285),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			{pos = Vector(27.134,78.757,34.666),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(27.522 - 0.05,78.918,34.31),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			--{pos = Vector(27.909,79.08,33.954),size=9,color=front_turn,material="sprites/light_ignorez_new"},

			--{pos = Vector(29.521,78.742,33.199),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(29.118,78.827 + 0.15,33.388 - 0.15),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(28.715,78.911 + 0.1,33.576 - 0.2),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(28.312 + 0.1,78.996 + 0.05,33.765 - 0.15),size=9,color=front_turn,material="sprites/light_ignorez_new"},
			{pos = Vector(27.909 - 0.05,79.08,33.954 - 0.025),size=9,color=front_turn,material="sprites/light_ignorez_new"},
		},
	},
})

local V = {
	Name = "MINI JCW Convertible",
	Model = Model,
	Category = "HUSKY's Cars",

	Members = {
		Mass = 1500,

		OnSpawn = function(ent)
			ent.hood = 0
			ent.trunk = 0
		end,

		OnTick = function(ent)
			local angle = ent:GetAngles()["y"]

			--[[if angle <= -67.5 and angle >= -112.5 then
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
			end]]

			local speed = math.min((ent:GetVelocity():Length() / 14.5) / 260, 1) * 193

			if speed > 7.5 then
				ent.trunk = 0
				ent.hood = 0
			end
			
			if (!ent:EngineActive()) then
				fuel = 0
			else
				fuel = ent:GetFuel()/ent:GetMaxFuel()
			end

			if ent:EngineActive() then
				ent:SetSubMaterial(20,"husky_mini_cooper_2018/blinker_drl_on")
				ent:SetSubMaterial(21,"husky_mini_cooper_2018/blinker_drl_on")
			else
				ent:SetSubMaterial(20,"models/ctvehicles/mini/hatch_jcw_convertible/blinker_drl_l")
				ent:SetSubMaterial(21,"models/ctvehicles/mini/hatch_jcw_convertible/blinker_drl_r")
			end

			if ent:GetLightsEnabled() then
				ent:SetSubMaterial(22,"husky_mini_cooper_2018/drl_rear_on")
				ent:SetSubMaterial(24,"models/ctvehicles/mini/hatch_jcw_convertible/gauges_on")
				ent:SetSubMaterial(26,"models/ctvehicles/mini/hatch_jcw_convertible/symbols_on")
			else
				ent:SetSubMaterial(22,"models/ctvehicles/mini/hatch_jcw_convertible/drl_rear")
				ent:SetSubMaterial(24,"models/ctvehicles/mini/hatch_jcw_convertible/gauges")
				ent:SetSubMaterial(26,"models/ctvehicles/mini/hatch_jcw_convertible/symbols")
			end
			
			if ent:GetLightsEnabled() or ent:EngineActive() then
				ent:SetSubMaterial(19,"models/ctvehicles/mini/hatch_jcw_convertible/hud")
				ent:SetNWBool("enable_dashboard", true)
			else
				ent:SetSubMaterial(19,"models/ctvehicles/shared/vmt/black")
				ent:SetNWBool("enable_dashboard", false)
			end

			ent.rpmang = Lerp(0.1, ent.rpmang or 0, CalcAngle(ent:GetRPM(), rpm_array) or 0)
			ent.fuelgauge = Lerp(0.02, ent.fuelgauge or 0, fuel or 0)
			ent.hoodang = Lerp(0.1, ent.hoodang or 0, ent.hood or 0)
			ent.trunkang = Lerp(0.1, ent.trunkang or 0, ent.trunk or 0)

			ent:ManipulateBoneAngles(ent:LookupBone("hood"), Angle(ent.hoodang * (-50), 0, 0))
			ent:ManipulateBoneAngles(ent:LookupBone("trunk"), Angle(ent.trunkang * 90, 0, 0))
			ent:ManipulateBoneAngles(ent:LookupBone("speedo"), Angle(0, 0, -speed))
			ent:ManipulateBoneAngles(ent:LookupBone("tacho"), Angle(0, 0, ent.rpmang))
		end,

		ModelInfo = {
			LinkDoorAnims = {},
		},

		LightsTable = list_name,

		AirFriction = -300000,

		FrontWheelRadius = 14.1,
		RearWheelRadius = 14.15,

		CustomMassCenter = Vector(0,0,0),
		EnginePos = Vector(0,78,29),

		FirstPersonViewPos = Vector(0,-13,8),
		SeatOffset = Vector(-5,0,-9),
		SeatPitch = 0,

		SpeedoMax = -1,

		PassengerSeats = {
			{
				pos = Vector(16,-3,14),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(-13,-40,18),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(13,-40,18),
				ang = Angle(0,0,14)
			},
		},

		ExhaustPositions = {
			{
                pos = Vector(-2.565,-89.275,12.04),
                ang = Angle(-90,90,0),
        	},
			{
                pos = Vector(2.565,-89.275,12.04),
                ang = Angle(-90,90,0),
        	},
        },

		StrengthenSuspension = false,

		FrontHeight = 6.5,
		FrontConstant = 43000,
		FrontDamping = 3000,
		FrontRelativeDamping = 3000,

		RearHeight = 6.5,
		RearConstant = 43000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,

		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,

		TurnSpeed = 4,

		MaxGrip = 80,
		Efficiency = 1.1,
		GripOffset = -3,
		BrakePower = 70,

		IdleRPM = 700,
		LimitRPM = 8000,
		Revlimiter = true,
		PeakTorque = 125,
		PowerbandStart = 700,
		PowerbandEnd = 6500,
		Turbocharged = true,
		Supercharged = false,
		Backfire = false,

		FuelFillPos = Vector(38.151,-55.316,37.868),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 44,

		PowerBias = -1,

		EngineSoundPreset = -1,
		snd_pitch = 1.05,
		snd_idle = "vehicles/"..list_name.."/idle.wav",

		snd_low = "vehicles/"..list_name.."/low.wav",
		snd_low_revdown = "vehicles/"..list_name.."/low.wav",
		snd_low_pitch = 0.7,

		snd_mid = "vehicles/"..list_name.."/mid.wav",
		snd_mid_gearup = "vehicles/"..list_name.."/second.wav",
		snd_mid_geardown = "vehicles/"..list_name.."/second.wav",
		snd_mid_pitch = 0.7,

		snd_horn = "simulated_vehicles/horn_5.wav",

		DifferentialGear = 0.3,
		Gears = {-0.22,0,0.18,0.30,0.52,0.78,0.9,1.2,1.5}
	}
}
if (file.Exists( Model, "GAME" )) then
	list.Set( "simfphys_vehicles", list_name, V )
end
