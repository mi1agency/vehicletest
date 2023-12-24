AddCSLuaFile()

local front = Color(255,175,100)
local turn = Color(255,135,0)
local rear = Color(255,55,0)
local reverse = Color(255,250,190)


local Model = ""
local list_name = ""

local light_table = {
	L_HeadLampPos = Vector(-17.71,51.8,36.35),
	L_HeadLampAng = Angle(15,90,0),
	R_HeadLampPos = Vector(17.68,51.8,36.35),
	R_HeadLampAng = Angle(15,90,0),
	
	L_RearLampPos = Vector(-15,-90.7,64.16),
	R_RearLampPos = Vector(15.1,-90.7,64.16),
	L_RearLampAng = Angle(40,-90,0),

	R_RearLampAng = Angle(40,-90,0),
	
	Headlight_sprites = { 
		{pos = Vector(17.68,51.8,36.35),size = 50,color=front},
		{pos = Vector(-17.71,51.8,36.35),size = 50,color=front},
		{pos = Vector(17.68,51.8,36.35),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-17.71,51.8,36.35),size = 50,material="sprites/light_ignorez_new",color=front},
	},
	Headlamp_sprites = { 
		{pos = Vector(17.68,51.8,36.35),size = 40,color=front},
		{pos = Vector(-17.71,51.8,36.35),size = 40,color=front},
		{pos = Vector(17.68,51.8,36.35),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-17.71,51.8,36.35),size = 45,material="sprites/light_ignorez_new",color=front},
	},
	Rearlight_sprites = {
		{pos = Vector(19.28,-77.01,25.65),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(19.28,-77.01,25.65),size=25,color=rear},
		{pos = Vector(-19.28,-77.01,25.65),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-19.28,-77.01,25.65),size=25,color=rear},
	},
	Brakelight_sprites = {
		{pos = Vector(19.28,-77.01,25.65),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(19.28,-77.01,25.65),size=25,color=rear},
		{pos = Vector(-19.28,-77.01,25.65),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-19.28,-77.01,25.65),size=25,color=rear},
	},
	Turnsignal_sprites = { 
		Left = { 
		{pos = Vector(-16.95,35.46,45.26),size=30,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(-16.95,35.46,45.26),size=25,color=turn},
		{pos = Vector(-19.28,-77.01,25.65),size=30,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-19.28,-77.01,25.65),size=30,color=rear},
		},
		Right = { 
		{pos = Vector(16.93,35.46,45.26),size=30,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(16.93,35.46,45.26),size=25,color=turn},
		{pos = Vector(19.28,-77.01,25.65),size=30,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(19.28,-77.01,25.65),size=30,color=rear},
		},
	},
		SubMaterials = {
		off = {
			Base = {
				[4] = "models/ctvehicles/daihatsu/midget_mp5/headlights",
			},
			Brake = {
				[4] = "models/ctvehicles/daihatsu/midget_mp5/headlights",
			},
			Reverse = {
				[4] = "models/ctvehicles/daihatsu/midget_mp5/headlights",
			},
			Brake_Reverse = {
				[4] = "models/ctvehicles/daihatsu/midget_mp5/headlights",
			},
		},
		on_lowbeam = {
			Base = {
				[4] = "models/ctvehicles/shared/vmt/whiteillum_on",				
			},
			Brake = {
				[4] = "models/ctvehicles/shared/vmt/whiteillum_on",			
			},
			Reverse = {
				[4] = "models/ctvehicles/shared/vmt/whiteillum_on",			
			},
			Brake_Reverse = {
				[4] = "models/ctvehicles/shared/vmt/whiteillum_on",			
			},
		},
		on_highbeam = {
			Base = {
				[4] = "models/ctvehicles/shared/vmt/whiteillum_on",			
			},
			Brake = {
				[4] = "models/ctvehicles/shared/vmt/whiteillum_on",			
			},
			Reverse = {
				[4] = "models/ctvehicles/shared/vmt/whiteillum_on",			
			},		
			Brake_Reverse = {
				[4] = "models/ctvehicles/shared/vmt/whiteillum_on",			
			},
		},
			turnsignals = {
			right = {
				[9] = "models/ctvehicles/daihatsu/midget_mp5/blinker_on",
			},
			left = {
				[10] = "models/ctvehicles/daihatsu/midget_mp5/blinker_on",
		    },
		},
		}
}
list.Set( "simfphys_lights", "ctv_daihatsu_midget_mp5", light_table)

local V = {
	Name = "Daihatsu Midget MP5",
	Model = "models/ctvehicles/daihatsu/midget_mp5.mdl",

	Category = "CTVehicles",
	
	Members = {
		Mass = 1600,
		

		
		ModelInfo = {
			LinkDoorAnims = {},
		},
	
			
		LightsTable = "ctv_daihatsu_midget_mp5",
		
		FrontWheelRadius = 10.45,
		RearWheelRadius = 10.45,
		
		CustomMassCenter = Vector(0,0,0),
		
			    EnginePos = Vector(0,35,25),
				
		
		SeatOffset = Vector(-5,-0,-5),
		SeatPitch = 3,
		SeatYaw = 0,
		PassengerSeats = {
			{
				pos = Vector(-8.6,6.5,21),
				ang = Angle(0,0,10)
			},
		},

		ExhaustPositions = {
			{
                pos = Vector(-11.03,-70,13.15),
                ang = Angle(-100,90,0),
        	},

			

        },

		StrengthenSuspension = true,
		
		FrontHeight = 4.3,
		FrontConstant = 100000,
		FrontDamping = 1500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 4.5,
		RearConstant = 100000,
		RearDamping = 2000,
		RearRelativeDamping = 2500,
		Revlimiter = false,
		FastSteeringAngle = 7,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 3,
        AirFriction = 1,
		MaxGrip = 60,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 15,

		IdleRPM = 1000,
		LimitRPM = 6500,
        SpeedoMax = -1,
		PeakTorque = 52,
		PowerbandStart = 1200,
		PowerbandEnd = 5000,
		
		FuelFillPos = Vector(22.97,-71.66,20.22),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 25,


		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 0.88,
		snd_idle = "vehicles/ctvehicles/midget_simfphys/idle.wav",
		
		snd_low = "vehicles/ctvehicles/midget_simfphys/low.wav",
		snd_low_revdown = "vehicles/ctvehicles/midget_simfphys/revdown.wav",
		snd_low_pitch = 0.99,
		
		snd_mid = "vehicles/ctvehicles/midget_simfphys/mid.wav",
		snd_mid_gearup = "vehicles/ctvehicles/midget_simfphys/second.wav",
		snd_mid_geardown = "vehicles/ctvehicles/midget_simfphys/second.wav",

		snd_mid_pitch = 0.96,

		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.1,
		Gears = {-0.7,0,0.7,1.3,2}
	}
}

if (file.Exists( Model, "GAME" )) then 
	list.Set( "simfphys_vehicles", "ctv_daihatsu_midget_mp5", V ) 
end
