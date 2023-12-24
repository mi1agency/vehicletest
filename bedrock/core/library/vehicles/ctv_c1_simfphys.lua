AddCSLuaFile()

local front = Color(255,175,100)
local turn = Color(255,155,0)
local rear = Color(255,55,0)
local reverse = Color(255,175,100)

local Model = "models/ctvehicles/chevrolet/corvette_c1_1960.mdl"
local list_name = "ctv_corvette_c1_1960"



local light_table = {
	ModernLights = false, 
	L_HeadLampPos = Vector(-37.2,102.52,32.21), 
	L_HeadLampAng = Angle(10,90,0), 

	R_HeadLampPos = Vector(37.2,102.52,32.21), 
	R_HeadLampAng = Angle(10,90,0), 

	L_RearLampPos = Vector(-36.76,-86.55,36.97), 
	L_RearLampAng = Angle(40,-90,0), 

	R_RearLampPos = Vector(36.76,-86.55,36.97), 
	R_RearLampAng = Angle(40,-90,0), 
	Headlight_sprites = { 
		{pos = Vector(37.2,102.52,32.21),size = 100,color=front},
		{pos = Vector(-37.2,102.52,32.21),size = 100,color=front},
		{pos = Vector(-37.2,102.52,32.21),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(37.2,102.52,32.21),size = 50,material="sprites/light_ignorez_new",color=front},


		
	
	},
	Headlamp_sprites = { 
		{pos = Vector(29.2,102.52,32.21),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-29.2,102.52,32.21),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(29.2,102.52,32.21),size = 100,color=front},
		{pos = Vector(-29.2,102.52,32.21),size = 100,color=front},
	},
	FogLight_sprites = {
	},
	Rearlight_sprites = { 
		{pos = Vector(-36.76,-86.55,36.97),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-36.76,-86.55,36.97),size=50,color=rear},
		{pos = Vector(36.76,-86.55,36.97),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(36.76,-86.55,36.97),size=50,color=rear},

	},
	Brakelight_sprites = {
		{pos = Vector(-36.76,-86.55,36.97),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-36.76,-86.55,36.97),size=50,color=rear},
		{pos = Vector(36.76,-86.55,36.97),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(36.76,-86.55,36.97),size=50,color=rear},
	},
	Reverselight_sprites = { 
	},
	Turnsignal_sprites = { 
		Left = { 
		{pos = Vector(-36.76,-86.55,36.97),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-36.76,-86.55,36.97),size=50,color=rear},
		{pos = Vector(-24.4,100,12.24),size=35,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(-24.4,100,12.24),size=40,color=turn},
		},
		Right = { 
		{pos = Vector(36.76,-86.55,36.97),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(36.76,-86.55,36.97),size=50,color=rear},
		{pos = Vector(24.4,100,12.24),size=35,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(24.4,100,12.24),size=40,color=turn},
		},
	},
	SubMaterials = {
		off = {
			Base = {
				[8] = "models/ctvehicles/chevrolet/corvette_c1_1960/highbeams",
				[9] = "models/ctvehicles/chevrolet/corvette_c1_1960/lowbeams",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",


			},
			Brake = {
				[8] = "models/ctvehicles/chevrolet/corvette_c1_1960/highbeams",
				[9] = "models/ctvehicles/chevrolet/corvette_c1_1960/lowbeams",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",


			},
			Reverse = {
				[8] = "models/ctvehicles/chevrolet/corvette_c1_1960/highbeams",
				[9] = "models/ctvehicles/chevrolet/corvette_c1_1960/lowbeams",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",


			},
			Brake_Reverse = {
				[8] = "models/ctvehicles/chevrolet/corvette_c1_1960/highbeams",
				[9] = "models/ctvehicles/chevrolet/corvette_c1_1960/lowbeams",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",


			},
		},
		on_lowbeam = {
			Base = {
				[8] = "models/ctvehicles/chevrolet/corvette_c1_1960/highbeams",
				[9] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",

				
			},
			Brake = {
				[8] = "models/ctvehicles/chevrolet/corvette_c1_1960/highbeams",
				[9] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",

			},
			Reverse = {
				[8] = "models/ctvehicles/chevrolet/corvette_c1_1960/highbeams",
				[9] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",


			},
			Brake_Reverse = {
				[8] = "models/ctvehicles/chevrolet/corvette_c1_1960/highbeams",
				[9] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",


			},
		},
		on_highbeam = {
			Base = {
				[8] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[9] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",

			},
			Brake = {
				[8] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[9] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",

			},
			Reverse = {
				[8] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[9] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",


			},
			
			Brake_Reverse = {
				[8] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[9] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_l",
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_r",


			},
		},
			turnsignals = {
			right = {
				[3] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_on",

			},
			left = {
				[2] = "models/ctvehicles/chevrolet/corvette_c1_1960/blinker_on",

		},
		},
  },
}
list.Set( "simfphys_lights", "ctv_corvette_c1_1960", light_table)
local V = {
	Name = "Chevrolet Corvette C1",
	Model = "models/ctvehicles/chevrolet/corvette_c1_1960.mdl",

	Category = "CTVehicles",
	
	Members = {
		Mass = 1700,
		
				OnSpawn = function(ent)
			ent:SetSubMaterial(12, "models/ctvehicles/chevrolet/corvette_c1_1960/translucent_lights")
		end,
		
		ModelInfo = {
			LinkDoorAnims = {},
		},
	
			
		LightsTable = "ctv_corvette_c1_1960",
		
		FrontWheelRadius = 16.5,
		RearWheelRadius = 16.5,
		
		CustomMassCenter = Vector(0,0,0),
		
			    EnginePos = Vector(0,59,36),
				
		
		SeatOffset = Vector(-3,-0,-5),
		SeatPitch = 3,
		SeatYaw = 0,
		PassengerSeats = {
			{
				pos = Vector(16.77,-13.35,15.99),
				ang = Angle(0,0,14)
			},
		},

		ExhaustPositions = {
			{
                pos = Vector(-36.41,-108.58,23.3),
                ang = Angle(-90,90,0),
        	},
			{
                pos = Vector(36.41,-108.58,23.3),
                ang = Angle(-90,90,0),
        	},

        },

		StrengthenSuspension = true,
		
		FrontHeight = 11.5,
		FrontConstant = 27000,
		FrontDamping = 2800,
		FrontRelativeDamping = 2800,
		
		RearHeight = 8.5,
		RearConstant = 32000,
		RearDamping = 2900,
		RearRelativeDamping = 2900,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 520,
		
		TurnSpeed = 5,

		MaxGrip = 50,
		Efficiency = 1.5,
		GripOffset = 0,
		BrakePower = 50,
		
		IdleRPM = 525,
		LimitRPM = 9000,

		PeakTorque = 130,
		PowerbandStart = 2000,
		PowerbandEnd = 6500,
		
		FuelFillPos = Vector(-41.32,-38.15,38.14),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 62,


		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.1,
		snd_idle = "vehicles/ctvehicles/c1_simfphys/idle.wav",
		
		snd_low = "vehicles/ctvehicles/c1_simfphys/low.wav",
		snd_low_revdown = "vehicles/ctvehicles/c1_simfphys/low.wav",
		snd_low_pitch = 0.7,
		
		snd_mid = "vehicles/ctvehicles/c1_simfphys/mid.wav",
		snd_mid_gearup = "vehicles/ctvehicles/c1_simfphys/second.wav",
		snd_mid_geardown = "vehicles/ctvehicles/c1_simfphys/second.wav",

		snd_mid_pitch = 0.7,


		snd_horn = "simulated_vehicles/horn_5.wav", 
		
		DifferentialGear = 0.3,
		Gears = {-0.19,0,0.19,0.335,0.41,0.53}
	}
}

if (file.Exists( Model, "GAME" )) then 
	list.Set( "simfphys_vehicles", "ctv_corvette_c1_1960", V ) 
end