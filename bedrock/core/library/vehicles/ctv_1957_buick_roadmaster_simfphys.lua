AddCSLuaFile()

local front = Color(255,175,100)
local turn = Color(255,155,0)
local rear = Color(255,55,0)
local reverse = Color(255,175,100)

local Model = "models/ctvehicles/buick/1957_roadmaster.mdl"
local list_name = "ctv_1957_buick_roadmaster"



local light_table = {
	ModernLights = false, 
	L_HeadLampPos = Vector(-38.56,100.09,40.97), 
	L_HeadLampAng = Angle(10,90,0), 

	R_HeadLampPos = Vector(38.56,100.09,40.97), 
	R_HeadLampAng = Angle(10,90,0), 

	L_RearLampPos = Vector(-42.12,-147.77,38.15), 
	L_RearLampAng = Angle(40,-90,0), 

	R_RearLampPos = Vector(42.12,-147.77,38.15), 
	R_RearLampAng = Angle(40,-90,0), 
	Headlight_sprites = { 
		{pos = Vector(38.56,102.09,40.97),size = 100,color=front},
		{pos = Vector(-38.56,102.09,40.97),size = 100,color=front},
		{pos = Vector(38.56,102.09,40.97),size = 55,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-38.56,102.09,40.97),size = 55,material="sprites/light_ignorez_new",color=front},


		
	
	},
	Headlamp_sprites = { 
		{pos = Vector(38.56,102.09,40.97),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-38.56,102.09,40.97),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(38.56,102.09,40.97),size = 90,color=front},
		{pos = Vector(-38.56,102.09,40.97),size = 90,color=front},
	},

	Rearlight_sprites = { 
		{pos = Vector(-42.21,-145.15,43.22),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.21,-145.15,43.22),size=50,color=rear},
		{pos = Vector(42.21,-145.15,43.22),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(42.21,-145.15,43.22),size=50,color=rear},
	},
	Brakelight_sprites = {
		{pos = Vector(-42.12,-147.77,38.15),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.12,-147.77,38.15),size=55,color=rear},
		{pos = Vector(42.12,-147.77,38.15),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(42.12,-147.77,38.15),size=55,color=rear},

		
	},
	Reverselight_sprites = { 
	    {pos = Vector(-42.06,-143.66,32.54),size=70,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.06,-143.66,32.54),size=60,color=front},
		{pos = Vector(42.06,-143.66,32.54),size=70,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(42.06,-143.66,32.54),size=60,color=front},

	},
	Turnsignal_sprites = { 
		Left = { 
		{pos = Vector(-43.7,97.85,31.61),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(-43.7,97.85,31.61),size=50,color=turn},
		{pos = Vector(-42.12,-147.77,38.15),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.12,-147.77,38.15),size=55,color=rear},
		},
		Right = { 
		{pos = Vector(43.7,97.85,31.61),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(43.7,97.85,31.61),size=50,color=turn},
		{pos = Vector(42.12,-147.77,38.15),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(42.12,-147.77,38.15),size=55,color=rear},
		},
    },
	SubMaterials = {
		off = {
			Base = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum",
				[11] = "models/ctvehicles/buick/1957_roadmaster/headlights",
				[18] = "models/ctvehicles/shared/vmt/redillum",


			},
			Brake = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum",
				[11] = "models/ctvehicles/buick/1957_roadmaster/headlights",
				[18] = "models/ctvehicles/shared/vmt/redillum",


			},
			Reverse = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum",
				[11] = "models/ctvehicles/buick/1957_roadmaster/headlights",
				[18] = "models/ctvehicles/shared/vmt/redillum",


			},
			Brake_Reverse = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum",
				[11] = "models/ctvehicles/buick/1957_roadmaster/headlights",
				[18] = "models/ctvehicles/shared/vmt/redillum",


			},
		},
		on_lowbeam = {
			Base = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum_on",
				[11] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[18] = "models/ctvehicles/shared/vmt/redillum_on",

				
			},
			Brake = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum_on",
				[11] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[18] = "models/ctvehicles/shared/vmt/redillum_on",

			},
			Reverse = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum_on",
				[11] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[18] = "models/ctvehicles/shared/vmt/redillum_on",


			},
			Brake_Reverse = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum_on",
				[11] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[18] = "models/ctvehicles/shared/vmt/redillum_on",


			},
		},
		on_highbeam = {
			Base = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum_on",
				[11] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[18] = "models/ctvehicles/shared/vmt/redillum_on",

			},
			Brake = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum_on",
				[11] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[18] = "models/ctvehicles/shared/vmt/redillum_on",

			},
			Reverse = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum_on",
				[11] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[18] = "models/ctvehicles/shared/vmt/redillum_on",


			},
			
			Brake_Reverse = {
				[4] = "models/ctvehicles/buick/1957_roadmaster/dashillum_on",
				[11] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[18] = "models/ctvehicles/shared/vmt/redillum_on",


			},
		},
	},
}
list.Set( "simfphys_lights", "ctv_1957_buick_roadmaster", light_table)
local V = {
	Name = "Buick Roadmaster",
	Model = "models/ctvehicles/buick/1957_roadmaster.mdl",

	Category = "CTVehicles",
	
	Members = {
		Mass = 2058,
		
		OnSpawn = function(ent)
		ent:SetSubMaterial(12, "models/ctvehicles/buick/1957_roadmaster/non_refract")
		end,
		
		SpeedoMax = 80,
		
		ModelInfo = {
			LinkDoorAnims = {},
		},
	
			
		LightsTable = "ctv_1957_buick_roadmaster",
		
		FrontWheelRadius = 16.5,
		RearWheelRadius = 16.5,
		
		CustomMassCenter = Vector(0,0,0),
		
			    EnginePos = Vector(0,68,42),
				
		
		SeatOffset = Vector(-1,-0,-5),
		SeatPitch = 3,
		SeatYaw = 0,
		PassengerSeats = {
			{
				pos = Vector(16,-1.55,21),
				ang = Angle(0,0,15)
			},
			{
				pos = Vector(14,-45.35,21),
				ang = Angle(0,0,15)
			},
			{
				pos = Vector(-14,-45.35,21),
				ang = Angle(0,0,15)
			},
		},

		ExhaustPositions = {
			{
                pos = Vector(41.38,-148,18.5),
                ang = Angle(120,-90,0),
        	},
			{
                pos = Vector(-41.38,-148,18.5),
                ang = Angle(120,-90,0),
        	},
			

        },

		StrengthenSuspension = true,
		
		FrontHeight = 13.6,
		FrontConstant = 30000,
		FrontDamping = 1500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 13.6,
		RearConstant = 30000,
		RearDamping = 1500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 520,
		
		TurnSpeed = 3,

		MaxGrip = 70,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 40,
		
		IdleRPM = 500,
		LimitRPM = 6000,

		PeakTorque = 180,
		PowerbandStart = 700,
		PowerbandEnd = 4750,
		
		FuelFillPos = Vector(0,-143.6,25.94),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 75,


		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.1,
		snd_idle = "vehicles/ctvehicles/1957_roadmaster_simfphys/idle.wav",
		
		snd_low = "vehicles/ctvehicles/1957_roadmaster_simfphys/low.wav",
		snd_low_revdown = "vehicles/ctvehicles/1957_roadmaster_simfphys/low.wav",
		snd_low_pitch = 1.3,
		
		snd_mid = "vehicles/ctvehicles/1957_roadmaster_simfphys/mid.wav",
		snd_mid_gearup = "vehicles/ctvehicles/1957_roadmaster_simfphys/mid.wav",
		snd_mid_geardown = "vehicles/ctvehicles/1957_roadmaster_simfphys/mid.wav",

		snd_mid_pitch = 1.2,


		snd_horn = "simulated_vehicles/horn_5.wav", 
		
		DifferentialGear = 0.3,
		Gears = {-0.4,0,0.35,0.6}
	}
}

if (file.Exists( Model, "GAME" )) then 
	list.Set( "simfphys_vehicles", "ctv_1957_buick_roadmaster", V ) 
end
