AddCSLuaFile()

local front = Color(220,205,160)
local rear = Color(220,10,0)

local Model = "models/ctvehicles/shelby/daytona_coupe.mdl"
local list_name = "husky_shelby_daytona"

local oil_temps = {{0,133},{140,133},{180,99},{220,49},{260,-3},{280,-48},{300,-89},{320,-129.5},{325,-140}}
local water_temps = {{0,108},{100,108},{140,74},{180,23},{200,-29},{220,-73},{240,-114},{250,-164}}
local oil_press = {{0,132},{2,79},{4,27},{6,-25},{8,-77},{10,-130}}			
local presses = {{0,124},{1,110},{2,82},{3,55},{4,27},{5,-1},{6,-28},{7,-56},{8,-84},{9,-111},{10,-139}}

local function CalcAngle(value, array)
	for i=2,#array do
		if (value < array[i][1]) then
			return array[i-1][2] + (((value - array[i][1]) % (array[i][1]-array[i-1][1]) ) / (array[i][1]-array[i-1][1])) * (array[i][2]-array[i-1][2])
		end
	end
	return array[#array][2]
end

local light_table = {
	ModernLights = false, -- грубо говоря, ксенон или старые фары. True - ксенон, false - старые
	L_HeadLampPos = Vector(-27.663,76.103,27.6), -- рассположение обычных фар (левых - L)
	L_HeadLampAng = Angle(180,-90,0), -- угол поворота фар

	R_HeadLampPos = Vector(27.663,76.103,27.6), -- рассположение обычных фар (правых - R)
	R_HeadLampAng = Angle(180,-90,0), -- угол поворота фар

	L_RearLampPos = Vector(-20.258,-87.535,26.533), -- расположение задних фар
	L_RearLampAng = Angle(0,-90,0), -- угол поворота фар

	R_RearLampPos = Vector(20.258,-87.535,26.533), -- расположение задних фар
	R_RearLampAng = Angle(0,-90,0), -- угол поворота фар

	Headlight_sprites = { -- Обычные фары
		{pos = Vector(-27.663,76.103,27.6),size = 70,material="sprites/light_ignorez_new",color=front,OnBodyGroups={[6]={0}}},
		{pos = Vector(-27.663,76.103,27.6),size = 60,color=front,OnBodyGroups={[6]={0}}},
		{pos = Vector(-27.663,76.103,27.6),size = 50,material="sprites/light_ignorez_new2",color=front,OnBodyGroups={[6]={0}}},
		{pos = Vector(27.663,76.103,27.6),size = 70,material="sprites/light_ignorez_new",color=front,OnBodyGroups={[6]={0}}},
		{pos = Vector(27.663,76.103,27.6),size = 60,color=front,OnBodyGroups={[6]={0}}},
		{pos = Vector(27.663,76.103,27.6),size = 50,material="sprites/light_ignorez_new2",color=front,OnBodyGroups={[6]={0}}},
	},
	Headlamp_sprites = { -- дальние
		{pos = Vector(-27.663,76.103,27.6),size = 80,material="sprites/light_ignorez_new",color=front,OnBodyGroups={[6]={0}}},
		{pos = Vector(27.663,76.103,27.6),size = 80,material="sprites/light_ignorez_new",color=front,OnBodyGroups={[6]={0}}},
	},
	FogLight_sprites = { -- противотуманки
		{pos = Vector(-15.019,91.101,15.086),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-15.019,91.101,15.086),size = 40,color=front},
		{pos = Vector(-15.019,91.101,15.086),size = 30,material="sprites/light_ignorez_new2",color=front},
		{pos = Vector(15.019,91.101,15.086),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(15.019,91.101,15.086),size = 40,color=front},
		{pos = Vector(15.019,91.101,15.086),size = 30,material="sprites/light_ignorez_new2",color=front},
	},
	Rearlight_sprites = { -- задние фары
		{pos = Vector(-20.258,-87.535,26.533),size=30,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-20.258,-87.535,26.533),size=40,color=rear},
		{pos = Vector(-20.077,-89.246,31.562),size=30,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-20.077,-89.246,31.562),size=40,color=rear},

		{pos = Vector(20.258,-87.535,26.533),size=30,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(20.258,-87.535,26.533),size=40,color=rear},
		{pos = Vector(20.077,-89.246,31.562),size=30,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(20.077,-89.246,31.562),size=40,color=rear},
	},
	Brakelight_sprites = { -- тормозные огни
		{pos = Vector(-20.258,-87.535,26.533),size=30,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-20.258,-87.535,26.533),size=40,color=rear},
		{pos = Vector(-20.077,-89.246,31.562),size=30,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-20.077,-89.246,31.562),size=40,color=rear},

		{pos = Vector(20.258,-87.535,26.533),size=30,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(20.258,-87.535,26.533),size=40,color=rear},
		{pos = Vector(20.077,-89.246,31.562),size=30,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(20.077,-89.246,31.562),size=40,color=rear},
	},
}
list.Set( "simfphys_lights", list_name, light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local V = {
	Name = "Shelby Daytona", -- название машины в меню
	Model = Model, -- модель машины (в вкладке дополнения и проп авто)
	Category = "HUSKY's Cars", -- категория в которой будет машина

	Members = {
		Mass = 2500, -- масса авто

		OnSpawn = function(ent)
			ent.oil_temp = 68
			ent.water_temp = 68
			ent:SetSubMaterial(20,"models/ctvehicles/shelby/daytona_coupe/non_refract")
		end,

		OnTick = function(ent)
			local speed = math.min((ent:GetVelocity():Length() / 14.5) / 1.6 / 160, 1) * 240
			local rpm = ent:GetRPM()/8000 * (225) - 15

			if (!ent:EngineActive()) then
				if (ent.oil_temp or 68) > 68 and (ent:GetCurHealth()/ent:GetMaxHealth()) > 0.3 then
					ent.oil_temp = ent.oil_temp - 0.01 * (ent:GetCurHealth()/ent:GetMaxHealth())
				end
				if (ent.water_temp or 68) > 68 and (ent:GetCurHealth()/ent:GetMaxHealth()) > 0.3 then
					ent.water_temp = ent.water_temp - 0.03 * (ent:GetCurHealth()/ent:GetMaxHealth())
				end

				ent.fuelang = Lerp(0.01, ent.fuelang or 0, 0)
				ent.wpress = Lerp(0.1, ent.wpress or 0, 124)
				ent.oilpress = Lerp(0.03, ent.oilpress or 0, 132)
				ent.oiltang = Lerp(0.1, ent.oiltang or 0, 133)
				ent.wattang = Lerp(0.1, ent.wattang or 0, 108)
			else
				if ent.oil_temp < 400 - 197*(ent:GetCurHealth()/ent:GetMaxHealth()) then
					ent.oil_temp = ent.oil_temp + 0.01 + 0.05 * ent:GetRPM()/8000
				else
					ent.oil_temp = ent.oil_temp - 0.01
				end
				if ent.water_temp < 250 - 65*(ent:GetCurHealth()/ent:GetMaxHealth()) then
					ent.water_temp = ent.water_temp + 0.03 + 0.08 * ent:GetRPM()/8000
				else
					ent.water_temp = ent.water_temp - 0.03
				end

				ent.fuelang = Lerp(0.01, ent.fuelang or 0, ent:GetFuel()/ent:GetMaxFuel() or 0)
				ent.wpress = Lerp(0.1, ent.wpress or 0, CalcAngle((ent.water_temp or 68) * 0.008, presses) or 0)
				ent.oilpress = Lerp(0.03, ent.oilpress or 0, CalcAngle((ent.oil_temp or 68) * 0.01 + 7.3*ent:GetRPM()/8000, oil_press) or 0)
				ent.oiltang = Lerp(0.1, ent.oiltang or 0, CalcAngle(ent.oil_temp or 68, oil_temps) or 0)
				ent.wattang = Lerp(0.1, ent.wattang or 0, CalcAngle(ent.water_temp or 68, water_temps) or 0)
			end

			if ent:GetLightsEnabled() then
				ent:SetSubMaterial(14,"models/ctvehicles/shelby/daytona_coupe/gauges_on")
			else
				ent:SetSubMaterial(14,"models/ctvehicles/shelby/daytona_coupe/gauges")
			end

			ent.rpmang = Lerp(0.1, ent.rpmang or 0, rpm or 0)

			ent:ManipulateBoneAngles(ent:LookupBone("tacho"), Angle(0, 0, -ent.rpmang))
			ent:ManipulateBoneAngles(ent:LookupBone("speedo"), Angle(0, 0, -speed))
			ent:ManipulateBoneAngles(ent:LookupBone("oil_temp"), Angle(0, 0, ent.oiltang))
			ent:ManipulateBoneAngles(ent:LookupBone("oil_pressure"), Angle(0, 0, ent.oilpress))
			ent:ManipulateBoneAngles(ent:LookupBone("pressure"), Angle(0, 0, ent.wpress))
			ent:ManipulateBoneAngles(ent:LookupBone("water_temp"), Angle(0, 0, ent.wattang))
			ent:SetPoseParameter("fuel_needle", ent.fuelang)
		end,

		ModelInfo = {
			LinkDoorAnims = {},
		},

		LightsTable = list_name, -- название light_table

		AirFriction = -300000,

		FrontWheelRadius = 13.7, --радиус переднего колеса
		RearWheelRadius = 14.2,--радиус заднего колеса

		CustomMassCenter = Vector(0,0,0),
		EnginePos = Vector(0,30,30),

		FirstPersonViewPos = Vector(0,-15,6),
		SeatOffset = Vector(-3,0,-4), -- положение водительского сидения
		SeatPitch = 0,

		SpeedoMax = -1, -- какая максималка на спидометре(может работать криво)

		PassengerSeats = { -- пассажирские места
			{
				pos = Vector(15,-16,12),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
		},

		ExhaustPositions = { -- позиция выхлопа
        	{
                pos = Vector(-37.206,-21.99,13.888),
                ang = Angle(-90,20,0),
        	},
			{
                pos = Vector(-35.884,-24.124,10.993),
                ang = Angle(-90,20,0),
        	},
        	{
                pos = Vector(37.206,-21.99,13.888),
                ang = Angle(-90,160,0),
        	},
			{
                pos = Vector(35.884,-24.124,10.993),
                ang = Angle(-90,160,0),
        	},
        },

		StrengthenSuspension = true, -- жесткая подвеска.

		FrontHeight = 7.5, -- высота передней подвески
		FrontConstant = 70000,
		FrontDamping = 6000,
		FrontRelativeDamping = 6000,

		RearHeight = 7.5, -- высота задней подвески
		RearConstant = 70000,
		RearDamping = 6000,
		RearRelativeDamping = 6000,

		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,

		TurnSpeed = 4,

		MaxGrip = 90,
		Efficiency = 1,
		GripOffset = -3,
		BrakePower = 60, -- сила торможения

		IdleRPM = 750, -- мин. кол-во оборотов
		LimitRPM = 9000, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 315, -- крутящий момент
		PowerbandStart = 600, -- какие обороты на нейтральной передаче
		PowerbandEnd = 7500, -- ограничение по оборотам
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(26.719,-70.861,38.285), -- положение заправки
		FuelType = FUELTYPE_PETROL, -- тип топлива
		FuelTankSize = 68, -- размер бака

		PowerBias = 1, -- привод. 1 - задний, 0 - полный, -1 - передний

		EngineSoundPreset = -1,
		snd_pitch = 1,
		snd_idle = "vehicles/"..list_name.."/idle.wav",

		snd_low = "vehicles/"..list_name.."/low.wav",
		snd_low_revdown = "vehicles/"..list_name.."/low.wav", -- это всё звук
		snd_low_pitch = 0.66,

		snd_mid = "vehicles/"..list_name.."/mid.wav",
		snd_mid_gearup = "vehicles/"..list_name.."/second.wav",
		snd_mid_geardown = "vehicles/"..list_name.."/second.wav",
		snd_mid_pitch = 0.76,

		snd_horn = "simulated_vehicles/horn_7.wav",

		DifferentialGear = 0.45,
		Gears = {-0.17,0,0.23,0.33,0.4,0.52} -- кол-во передач и "мощность"
	}
}
if (file.Exists( Model, "GAME" )) then -- путь модели (".mdl")
	list.Set( "simfphys_vehicles", list_name, V ) -- изменить на люброе название(например sim_fphys_lalala)
end
