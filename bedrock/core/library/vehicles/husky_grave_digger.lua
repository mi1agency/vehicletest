AddCSLuaFile()

local front = Color(255,255,220)
local Model = "models/ctvehicles/monster_jam/grave_digger.mdl"
local list_name = "husky_grave_digger"

local light_table = {
	ModernLights = true, -- грубо говоря, ксенон или старые фары. True - ксенон, false - старые
	L_HeadLampPos = Vector(-40.423,127.203,98.071), -- рассположение обычных фар (левых - L)
	L_HeadLampAng = Angle(10,90,0), -- угол поворота фар

	R_HeadLampPos = Vector(40.423,127.203,98.071), -- рассположение обычных фар (правых - R)
	R_HeadLampAng = Angle(10,90,0), -- угол поворота фар

	Headlight_sprites = { -- Обычные фары
		{pos =  Vector(-40.423,127.203,98.071),size = 80,color=front,material="sprites/light_ignorez_new",OnBodyGroups={[1]={0}}},
		{pos =  Vector(-40.423,127.203,98.071),size = 60,color=front,material="sprites/light_ignorez_new2",OnBodyGroups={[1]={0}}},
		{pos =  Vector(40.423,127.203,98.748),size = 80,color=front,material="sprites/light_ignorez_new",OnBodyGroups={[1]={0}}},
		{pos =  Vector(40.423,127.203,98.748),size = 60,color=front,material="sprites/light_ignorez_new2",OnBodyGroups={[1]={0}}},
	},
	Headlamp_sprites = { -- дальние
		{pos =  Vector(-40.423,127.203,98.071),size = 80,color=front,material="sprites/light_ignorez_new",OnBodyGroups={[1]={0}}},
		{pos =  Vector(40.423,127.203,98.748),size = 80,color=front,material="sprites/light_ignorez_new",OnBodyGroups={[1]={0}}},
	},
}
list.Set( "simfphys_lights", list_name, light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local V = {
	Name = "Grave Digger", -- название машины в меню
	Model = Model, -- модель машины (в вкладке дополнения и проп авто)
	Category = "HUSKY's Cars", -- категория в которой будет машина

	Members = {
		Mass = 2000, -- масса авто

		ModelInfo = {
			Color=Color(255,255,255),
			Bodygroups={0,3}
		},

		LightsTable = list_name, -- название light_table

		AirFriction = -300000,

		FrontWheelRadius = 36, --радиус переднего колеса
		RearWheelRadius = 36,--радиус заднего колеса

		CustomMassCenter = Vector(0,0,2),
		EnginePos = Vector(0,-33,92),

		FirstPersonViewPos = Vector(0,-10,12),
		SeatOffset = Vector(-2,0,-9), -- положение водительского сидения
		SeatPitch = 0,

		SpeedoMax = -1, -- какая максималка на спидометре(может работать криво)

		PassengerSeats = { -- пассажирские места

		},

		ExhaustPositions = { -- позиция выхлопа
			{
                pos = Vector(-47.53,-39.049,97.002),
                ang = Angle(0,0,0),
        	},
			{
                pos = Vector(-47.527,-35.184,97.002),
                ang = Angle(0,0,0),
        	},
			{
                pos = Vector(-47.67,-31.297,97.002),
                ang = Angle(0,0,0),
        	},
			{
                pos = Vector(-47.508,-27.326,97.002),
                ang = Angle(0,0,0),
        	},
			{
                pos = Vector(47.53,-39.049,97.002),
                ang = Angle(0,0,0),
        	},
			{
                pos = Vector(47.527,-35.184,97.002),
                ang = Angle(0,0,0),
        	},
			{
                pos = Vector(47.67,-31.297,97.002),
                ang = Angle(0,0,0),
        	},
			{
                pos = Vector(47.508,-27.326,97.002),
                ang = Angle(0,0,0),
        	},
			
        },

		StrengthenSuspension = false, -- жесткая подвеска.

		FrontHeight = 23, -- высота передней подвески
		FrontConstant = 35000,
		FrontDamping = 3000,
		FrontRelativeDamping = 3000,

		RearHeight = 23, -- высота задней подвески
		RearConstant = 35000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,

		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,

		TurnSpeed = 2,

		MaxGrip = 85,
		Efficiency = 1.1,
		GripOffset = -2,
		BrakePower = 40, -- сила торможения

		IdleRPM = 1350, -- мин. кол-во оборотов
		LimitRPM = 11000, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 60, -- крутящий момент
		PowerbandStart = 800, -- какие обороты на нейтральной передаче
		PowerbandEnd = 10000, -- ограничение по оборотам
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = true, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(0,-89.194,103.398), -- положение заправки
		FuelType = FUELTYPE_PETROL, -- тип топлива
		FuelTankSize = 100, -- размер бака

		PowerBias = 0 , -- привод. 1 - задний, 0 - полный, -1 - передний

		EngineSoundPreset = -1,
		snd_pitch = 0.69,
		snd_idle = "vehicles/"..list_name.."/idle.wav",

		snd_low = "vehicles/"..list_name.."/low.wav",
		snd_low_revdown = "vehicles/"..list_name.."/low.wav", -- это всё звук
		snd_low_pitch = 0.69,

		snd_mid = "vehicles/"..list_name.."/mid.wav",
		snd_mid_gearup = "vehicles/"..list_name.."/second.wav",
		snd_mid_geardown = "vehicles/"..list_name.."/second.wav",
		snd_mid_pitch = 0.79,

		snd_backfire = "vehicles/"..list_name.."/backfire.wav",
		snd_blowoff = "vehicles/"..list_name.."/blowoff.wav",
		snd_horn = "simulated_vehicles/horn_7.wav",

		DifferentialGear = 0.25,
		Gears = {-0.08,0,0.08,0.16} -- кол-во передач и "мощность"
	}
}
if (file.Exists( Model, "GAME" )) then -- путь модели (".mdl")
	list.Set( "simfphys_vehicles", list_name, V ) -- изменить на люброе название(например sim_fphys_lalala)
end
