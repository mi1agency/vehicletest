AddCSLuaFile()

local rear = Color(230,50,0)

local Model = "models/ctvehicles/alfa_romeo/carabo_concept.mdl"
local list_name = "husky_ar_carabo"

local light_table = {
	ModernLights = false, -- грубо говоря, ксенон или старые фары. True - ксенон, false - старые
	L_HeadLampPos = Vector(-31.57,75.884,22.262), -- рассположение обычных фар (левых - L)
	L_HeadLampAng = Angle(10,90,0), -- угол поворота фар

	R_HeadLampPos = Vector(31.57,75.884,22.262), -- рассположение обычных фар (правых - R)
	R_HeadLampAng = Angle(10,90,0), -- угол поворота фар

	L_RearLampPos = Vector(-20.353,-90.028,28.095), -- расположение задних фар
	L_RearLampAng = Angle(40,-90,0), -- угол поворота фар

	R_RearLampPos = Vector(20.353,-90.028,28.095), -- расположение задних фар
	R_RearLampAng = Angle(40,-90,0), -- угол поворота фар

	Headlight_sprites = { -- Обычные фары
		{pos = Vector(-31.57,76.884,22.262),size=100,material="sprites/light_ignorez_new"},
		{pos = Vector(-31.57,76.884,22.262),size=80},
		{pos = Vector(31.57,76.884,22.262),size=100,material="sprites/light_ignorez_new"},
		{pos = Vector(31.57,76.884,22.262),size=80},

	},
	PoseParameters = {
		name = "popup_lights",
		min = 0,
		max = 1,
	},
	Headlamp_sprites = { -- дальние
		{pos = Vector(-22.438,75.884,22.262),size=100,material="sprites/light_ignorez_new"},
		{pos = Vector(-22.438,75.884,22.262),size=80},
		{pos = Vector(22.438,75.884,22.262),size=100,material="sprites/light_ignorez_new"},
		{pos = Vector(22.438,75.884,22.262),size=80},
	},
	FogLight_sprites = { -- противотуманки
	},
	Rearlight_sprites = { -- задние фары
		{pos = Vector(-20.353,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-21.204,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-22.056,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-22.907,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-23.759,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-24.61,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-25.462,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-26.313,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.165,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-28.016,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-28.868,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.719,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-30.571,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-31.422,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-32.274,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-33.125,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-33.977,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-34.828,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-35.68,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-36.531,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(20.353,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(21.204,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(22.056,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(22.907,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(23.759,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(24.61,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(25.462,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(26.313,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(27.165,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(28.016,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(28.868,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(29.719,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(30.571,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(31.422,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(32.274,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(33.125,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(33.977,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(34.828,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(35.68,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(36.531,-90.028,23.095),size=25,color=rear,material="sprites/light_ignorez_new"},



	},
	Brakelight_sprites = { -- тормозные огни
		{pos = Vector(-20.331,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-21.235,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-22.138,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-23.042,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-23.945,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-24.849,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-25.752,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-26.656,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-27.56,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-28.463,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.367,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-30.27,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-31.174,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-32.078,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-32.981,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-33.885,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-34.788,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-35.692,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-36.595,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.499,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},

		{pos = Vector(20.331,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(21.235,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(22.138,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(23.042,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(23.945,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(24.849,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(25.752,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(26.656,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(27.56,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(28.463,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(29.367,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(30.27,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(31.174,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(32.078,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(32.981,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(33.885,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(34.788,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(35.692,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(36.595,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.499,-90.439,27.368),size=25,color=rear,material="sprites/light_ignorez_new"},
	},
	Reverselight_sprites = { -- фары заднего хода
	},
	Turnsignal_sprites = { -- поворотники
		Left = { -- левый
			{pos = Vector(-26.069,95.901,16.023),size=15,material="sprites/light_ignorez_new",color=turn},
			{pos = Vector(-26.069,95.901,16.023),size=15,material="sprites/light_ignorez_new2",color=turn},
		},
		TurnBrakeLeft = {
			{pos = Vector(-20.412,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-21.275,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-22.138,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-23.002,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-23.865,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-24.728,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-25.591,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-26.454,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-27.318,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-28.181,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-29.044,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-29.907,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-30.771,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-31.634,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-32.497,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-33.36,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-34.223,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-35.087,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-35.95,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-36.813,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
		},
		Right = { -- правый
			{pos = Vector(26.069,95.901,16.023),size=15,material="sprites/light_ignorez_new",color=turn},
			{pos = Vector(26.069,95.901,16.023),size=15,material="sprites/light_ignorez_new2",color=turn},
		},
		TurnBrakeRight = {
			{pos = Vector(20.412,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(21.275,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(22.138,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(23.002,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(23.865,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(24.728,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(25.591,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(26.454,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(27.318,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(28.181,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(29.044,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(29.907,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(30.771,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(31.634,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(32.497,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(33.36,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(34.223,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(35.087,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(35.95,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(36.813,-91.024,31.813),size=25,color=rear,material="sprites/light_ignorez_new"},
		},
	},
	SubMaterials = {
		off = {
			Base = {
				[7] = "models/ctvehicles/alfa_romeo/carabo_concept/lowbeams",
				[8] = "models/ctvehicles/alfa_romeo/carabo_concept/highbeams",
			},
			Brake = {
				[7] = "models/ctvehicles/alfa_romeo/carabo_concept/lowbeams",
				[8] = "models/ctvehicles/alfa_romeo/carabo_concept/highbeams",
			},
			Reverse = {
				[7] = "models/ctvehicles/alfa_romeo/carabo_concept/lowbeams",
				[8] = "models/ctvehicles/alfa_romeo/carabo_concept/highbeams",
			},
			Brake_Reverse = {
				[7] = "models/ctvehicles/alfa_romeo/carabo_concept/lowbeams",
				[8] = "models/ctvehicles/alfa_romeo/carabo_concept/highbeams",
			},
		},
		on_lowbeam = {
			Base = {
				[7] = list_name .. "/illum",
				[8] = "models/ctvehicles/alfa_romeo/carabo_concept/highbeams",
			},
			Brake = {
				[7] = list_name .. "/illum",
				[8] = "models/ctvehicles/alfa_romeo/carabo_concept/highbeams",
			},
			Reverse = {
				[7] = list_name .. "/illum",
				[8] = "models/ctvehicles/alfa_romeo/carabo_concept/highbeams",
			},
			Brake_Reverse = {
				[7] = list_name .. "/illum",
				[8] = "models/ctvehicles/alfa_romeo/carabo_concept/highbeams",
			},
		},
		on_highbeam = {
			Base = {
				[7] = list_name .. "/illum",
				[8] = list_name .. "/illum",
			},
			Brake = {
				[7] = list_name .. "/illum",
				[8] = list_name .. "/illum",
			},
			Reverse = {
				[7] = list_name .. "/illum",
				[8] = list_name .. "/illum",
			},
			Brake_Reverse = {
				[7] = list_name .. "/illum",
				[8] = list_name .. "/illum",
			},
		},
    },
}
list.Set( "simfphys_lights", list_name, light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local V = {
	Name = "Alfa Romeo Carabo Concept", -- название машины в меню
	Model = Model, -- модель машины (в вкладке дополнения и проп авто)
	Category = "HUSKY's Cars", -- категория в которой будет машина

	Members = {
		Mass = 1887, -- масса авто

		OnSpawn = function(ent)
			ent:SetSubMaterial(6, "models/ctvehicles/alfa_romeo/carabo_concept/non_refract_glass_simfphys")
			ent:SetSubMaterial(19, "models/ctvehicles/alfa_romeo/carabo_concept/glass_simfphys")
		end,

		ModelInfo = {
			Color=Color(255,255,255),
		},

		LightsTable = list_name, -- название light_table

		AirFriction = -300000,

		FrontWheelRadius = 12.4, --радиус переднего колеса
		RearWheelRadius = 14.3,--радиус заднего колеса

		CustomMassCenter = Vector(0,0,0),
		EnginePos = Vector(0,-62,34),

		FirstPersonViewPos = Vector(0,-18,6),
		SeatOffset = Vector(-9,0,-4.5), -- положение водительского сидения
		SeatPitch = -14,

		SpeedoMax = -1, -- какая максималка на спидометре(может работать криво)

		PassengerSeats = { -- пассажирские места
			{
				pos = Vector(18,4,22),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
			{
				pos = Vector(-19,-40,23),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
			{
				pos = Vector(19,-40,23),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
		},

		ExhaustPositions = { -- позиция выхлопа
        	{
                pos = Vector(-14.518,-90.108,9.871),
                ang = Angle(79.5,-90,0),
        	},
        	{
                pos = Vector(-11.212,-90.108,10.016),
                ang = Angle(79.5,-90,0),
        	},
        	{
                pos = Vector(14.518,-90.108,9.871),
                ang = Angle(79.5,-90,0),
        	},
        	{
                pos = Vector(11.212,-90.108,10.016),
                ang = Angle(79.5,-90,0),
        	},
        },

		StrengthenSuspension = true, -- жесткая подвеска.

		FrontHeight = 8, -- высота передней подвески
		FrontConstant = 50000,
		FrontDamping = 3000,
		FrontRelativeDamping = 3000,

		RearHeight = 8.5, -- высота задней подвески
		RearConstant = 50000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,

		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,

		TurnSpeed = 8,

		MaxGrip = 60,
		Efficiency = 1,
		GripOffset = -3,
		BrakePower = 70, -- сила торможения

		IdleRPM = 750, -- мин. кол-во оборотов
		LimitRPM = 11000, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 175, -- крутящий момент
		PowerbandStart = 600, -- какие обороты на нейтральной передаче
		PowerbandEnd = 9500, -- ограничение по оборотам
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(-42.666,-69.617,53.83), -- положение заправки
		FuelType = FUELTYPE_PETROL, -- тип топлива
		FuelTankSize = 72, -- размер бака

		PowerBias = 1, -- привод. 1 - задний, 0 - полный, -1 - передний

		EngineSoundPreset = -1,
		snd_pitch = 1,
		snd_idle = "vehicles/"..list_name.."/idle.wav",

		snd_low = "vehicles/"..list_name.."/low.wav",
		snd_low_revdown = "vehicles/"..list_name.."/low.wav", -- это всё звук
		snd_low_pitch = 0.55,

		snd_mid = "vehicles/"..list_name.."/mid.wav",
		snd_mid_gearup = "vehicles/"..list_name.."/second.wav",
		snd_mid_geardown = "vehicles/"..list_name.."/second.wav",
		snd_mid_pitch = 0.55,

		snd_backfire = "vehicles/"..list_name.."/backfire.wav",
		snd_horn = "simulated_vehicles/horn_7.wav",

		DifferentialGear = 0.35,
		Gears = {-0.13,0,0.15,0.22,0.30,0.39,0.48,0.58} -- кол-во передач и "мощность"
	}
}
if (file.Exists( Model, "GAME" )) then -- путь модели (".mdl")
	list.Set( "simfphys_vehicles", list_name, V ) -- изменить на люброе название(например sim_fphys_lalala)
end
