AddCSLuaFile()

local front = Color(255,175,100)
local turn = Color(255,155,0)
local rear = Color(255,55,0)
local reverse = Color(255,175,100)

local Model = "models/ctvehicles/fleetwood/bounder.mdl"
local list_name = "ctv_1986_fleetwood_bounder"



local light_table = {
	ModernLights = false, 
	L_HeadLampPos = Vector(-41.21,196.5,47.41), 
	L_HeadLampAng = Angle(10,90,0), 

	R_HeadLampPos = Vector(41.21,196.5,47.41), 
	R_HeadLampAng = Angle(10,90,0), 

	L_RearLampPos = Vector(-42.06,-225.05,51.13), 
	L_RearLampAng = Angle(40,-90,0), 

	R_RearLampPos = Vector(42.06,-225.05,51.13), 
	R_RearLampAng = Angle(40,-90,0), 
	Headlight_sprites = { 
		{pos = Vector(41.23,195.8,40.02),size = 100,color=front},
		{pos = Vector(-41.23,195.8,40.02),size = 100,color=front},
		{pos = Vector(-41.23,195.8,40.02),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(41.23,195.8,40.02),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(55.35,176,33.13),size = 60,material="sprites/light_ignorez_new",color=turn},
		{pos = Vector(-55.35,176,33.13),size = 60,material="sprites/light_ignorez_new",color=turn},
		{pos = Vector(43.61,149.1,126.6),size = 60,material="sprites/light_ignorez_new",color=turn},
		{pos = Vector(-43.61,149.1,126.6),size = 60,material="sprites/light_ignorez_new",color=turn},
		{pos = Vector(14.8,153.7,126.56),size = 60,material="sprites/light_ignorez_new",color=turn},
		{pos = Vector(-14.8,153.7,126.56),size = 60,material="sprites/light_ignorez_new",color=turn},
		{pos = Vector(0,155.75,126.56),size = 60,material="sprites/light_ignorez_new",color=turn},
		{pos = Vector(55.35,-34.05,33.13),size = 60,material="sprites/light_ignorez_new",color=turn},
		{pos = Vector(-55.35,-34.05,33.13),size = 60,material="sprites/light_ignorez_new",color=turn},
		{pos = Vector(55.35,-212.35,24.94),size = 60,material="sprites/light_ignorez_new",color=turn},
		{pos = Vector(-55.35,-212.35,24.94),size = 60,material="sprites/light_ignorez_new",color=turn},

		
	
	},
	Headlamp_sprites = { 
		{pos = Vector(41.21,197.1,47.41),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-41.21,197.1,47.41),size = 50,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(41.21,197.1,47.41),size = 100,color=front},
		{pos = Vector(-41.21,197.1,47.41),size = 100,color=front},
	},
	FogLight_sprites = {
	},
	Rearlight_sprites = { 
		{pos = Vector(-48.22,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-48.22,-225.05,51.13),size=40,color=rear},
		{pos = Vector(-35.86,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-35.86,-225.05,51.13),size=40,color=rear},
		{pos = Vector(48.22,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(48.22,-225.05,51.13),size=40,color=rear},
		{pos = Vector(35.86,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(35.86,-225.05,51.13),size=40,color=rear},
		{pos = Vector(45.05,-222.23,124.07),size = 60,material="sprites/light_ignorez_new",color=rear},
		{pos = Vector(-45.05,-222.23,124.07),size = 60,material="sprites/light_ignorez_new",color=rear},
		{pos = Vector(13.08,-222.23,124.07),size = 60,material="sprites/light_ignorez_new",color=rear},
		{pos = Vector(-13.08,-222.23,124.07),size = 60,material="sprites/light_ignorez_new",color=rear},
		{pos = Vector(0,-222.23,124.07),size = 60,material="sprites/light_ignorez_new",color=rear},
	},
	Brakelight_sprites = {
		{pos = Vector(-48.22,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-48.22,-225.05,51.13),size=40,color=rear},
		{pos = Vector(-35.86,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-35.86,-225.05,51.13),size=40,color=rear},
		{pos = Vector(48.22,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(48.22,-225.05,51.13),size=40,color=rear},
		{pos = Vector(35.86,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(35.86,-225.05,51.13),size=40,color=rear},
	},
	Reverselight_sprites = { 
		{pos = Vector(42.06,-225.05,51.13),size=60,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(42.06,-225.05,51.13),size=40,color=reverse},
		{pos = Vector(-42.06,-225.05,51.13),size=50,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-42.06,-225.05,51.13),size=40,color=reverse},
	},
	Turnsignal_sprites = { 
		Left = { 
		{pos = Vector(-48.22,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-48.22,-225.05,51.13),size=40,color=rear},
		{pos = Vector(-35.86,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-35.86,-225.05,51.13),size=40,color=rear},
		{pos = Vector(-37.34,202.8,28.81),size=45,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.34,202.8,28.81),size=50,color=turn},
		},
		Right = { 
		{pos = Vector(48.22,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(48.22,-225.05,51.13),size=40,color=rear},
		{pos = Vector(35.86,-225.05,51.13),size=40,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(35.86,-225.05,51.13),size=40,color=rear},
		{pos = Vector(37.34,202.8,28.81),size=45,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(37.34,202.8,28.81),size=50,color=turn},
		},
	},
	SubMaterials = {
		off = {
			Base = {
				[12] = "models/ctvehicles/fleetwood/bounder/highbeams",
				[15] = "models/ctvehicles/fleetwood/bounder/lowbeams",
				[10] = "models/ctvehicles/fleetwood/bounder/yellow_running",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_running",

			},
			Brake = {
				[12] = "models/ctvehicles/fleetwood/bounder/highbeams",
				[15] = "models/ctvehicles/fleetwood/bounder/lowbeams",
				[10] = "models/ctvehicles/fleetwood/bounder/yellow_running",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_running",

			},
			Reverse = {
				[12] = "models/ctvehicles/fleetwood/bounder/highbeams",
				[15] = "models/ctvehicles/fleetwood/bounder/lowbeams",
				[10] = "models/ctvehicles/fleetwood/bounder/yellow_running",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_running",

			},
			Brake_Reverse = {
				[12] = "models/ctvehicles/fleetwood/bounder/highbeams",
				[15] = "models/ctvehicles/fleetwood/bounder/lowbeams",
				[10] = "models/ctvehicles/fleetwood/bounder/yellow_running",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_running",

			},
		},
		on_lowbeam = {
			Base = {
				[12] = "models/ctvehicles/fleetwood/bounder/highbeams",
				[15] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[10] = "models/ctvehicles/fleetwood/bounder/blinker_on",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_on",
				
			},
			Brake = {
				[12] = "models/ctvehicles/fleetwood/bounder/highbeams",
				[15] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[10] = "models/ctvehicles/fleetwood/bounder/blinker_on",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_on",

			},
			Reverse = {
				[12] = "models/ctvehicles/fleetwood/bounder/highbeams",
				[15] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[10] = "models/ctvehicles/fleetwood/bounder/blinker_on",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_on",

			},
			Brake_Reverse = {
				[12] = "models/ctvehicles/fleetwood/bounder/highbeams",
				[15] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[10] = "models/ctvehicles/fleetwood/bounder/blinker_on",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_on",

			},
		},
		on_highbeam = {
			Base = {
				[12] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[15] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[10] = "models/ctvehicles/fleetwood/bounder/blinker_on",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_on",
			},
			Brake = {
				[12] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[15] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[10] = "models/ctvehicles/fleetwood/bounder/blinker_on",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_on",

			},
			Reverse = {
				[12] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[15] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[10] = "models/ctvehicles/fleetwood/bounder/blinker_on",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_on",

			},
			
			Brake_Reverse = {
				[12] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[15] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[10] = "models/ctvehicles/fleetwood/bounder/blinker_on",
				[11] = "models/ctvehicles/fleetwood/bounder/rear_on",

			},
		},
			turnsignals = {
			right = {
				[8] = "models/ctvehicles/fleetwood/bounder/blinker_on",
			},
			left = {
				[9] = "models/ctvehicles/fleetwood/bounder/blinker_on",
		},
		},
    },
}
list.Set( "simfphys_lights", "ctv_1986_fleetwood_bounder", light_table)
local V = {
	Name = "Fleetwood Bounder",
	Model = "models/ctvehicles/fleetwood/bounder.mdl",

	Category = "CTVehicles",
	
	Members = {
		Mass = 7840,
		
				OnSpawn = function(ent)
			ent:SetSubMaterial(14, "models/ctvehicles/fleetwood/bounder/non_refract")
		end,
		
		ModelInfo = {
			LinkDoorAnims = {},
		},
	
		FirstPersonViewPos = Vector(0,-14,5.5),	
		LightsTable = "ctv_1986_fleetwood_bounder",
		
		FrontWheelRadius = 17.5,
		RearWheelRadius = 17.5,
		
		CustomMassCenter = Vector(0,0,0),
		
			    EnginePos = Vector(0,142,42.7),
				
		
		SeatOffset = Vector(75,-106,10),
		SeatPitch = 0,
		SeatYaw = 90,
		PassengerSeats = {
			{
				pos = Vector(31.5,136.22,55.79),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(31.5,81.75,55.79),
				ang = Angle(0,90,14)
			},
			
		},

		ExhaustPositions = {
			{
                pos = Vector(-14.9,-182.12,21.45),
                ang = Angle(-90,90,0),
        	},

        },

		StrengthenSuspension = true,
		
		FrontHeight = 12.6,
		FrontConstant = 600000,
		FrontDamping = 9800,
		FrontRelativeDamping = 9800,
		
		RearHeight = 12.6,
		RearConstant = 600000,
		RearDamping = 9900,
		RearRelativeDamping = 9900,
		
		FastSteeringAngle = 15,
		SteeringFadeFastSpeed = 315,
		
		TurnSpeed = 3,

		MaxGrip = 110,
		Efficiency = 1.337,
		GripOffset = 0,
		BrakePower = 80,
		
		IdleRPM = 525,
		LimitRPM = 4500,

		PeakTorque = 180,
		PowerbandStart = 600,
		PowerbandEnd = 4400,
		
		FuelFillPos = Vector(55.91,-156.8,49),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 300,


		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.1,
		snd_idle = "vehicles/bounder_simfphys/idle.wav",
		
		snd_low = "vehicles/bounder_simfphys/low.wav",
		snd_low_revdown = "vehicles/bounder_simfphys/low.wav",
		snd_low_pitch = 0.8,
		
		snd_mid = "vehicles/bounder_simfphys/mid.wav",
		snd_mid_gearup = "vehicles/bounder_simfphys/second.wav",
		snd_mid_geardown = "vehicles/bounder_simfphys/second.wav",

		snd_mid_pitch = 0.84,


		snd_horn = "simulated_vehicles/horn_7.wav", 
		
		DifferentialGear = 0.4,
		Gears = {-0.15,0,0.15,0.25,0.35}
	}
}

if (file.Exists( Model, "GAME" )) then 
	list.Set( "simfphys_vehicles", "ctv_1986_fleetwood_bounder", V ) 
end