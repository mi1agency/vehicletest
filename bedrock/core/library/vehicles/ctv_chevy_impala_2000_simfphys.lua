AddCSLuaFile()

local front = Color(255,250,190)
local turn = Color(255,155,0)
local rear = Color(255,55,0)
local reverse = Color(255,250,190)

local Model = "models/ctvehicles/chevrolet/impala_2000.mdl"
local list_name = "ctv_impala_2000"



local light_table = {
	ModernLights = false, 
	L_HeadLampPos = Vector(-30.01,114.05,32.15), 
	L_HeadLampAng = Angle(10,90,0), 

	R_HeadLampPos = Vector(30.01,114.05,32.15), 
	R_HeadLampAng = Angle(10,90,0), 

	L_RearLampPos = Vector(-31.62,-105.83,40.85), 
	L_RearLampAng = Angle(40,-90,0), 

	R_RearLampPos = Vector(31.62,-105.83,40.85), 
	R_RearLampAng = Angle(40,-90,0), 
	Headlight_sprites = { 
		{pos = Vector(30.01,114.05,32.15),size = 55,color=front},
		{pos = Vector(-30.01,114.05,32.15),size = 55,color=front},
		{pos = Vector(30.01,114.05,32.15),size = 40,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-30.01,114.05,32.15),size = 40,material="sprites/light_ignorez_new",color=front},


		
	
	},
	Headlamp_sprites = { 
		{pos = Vector(23.64,116.62,31.62),size = 40,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-23.64,116.62,31.62),size = 40,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(23.64,116.62,31.62),size = 55,color=front},
		{pos = Vector(-23.64,116.62,31.62),size = 55,color=front},
	},

	Rearlight_sprites = { 
		{pos = Vector(-19.06,-107.88,40.69),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-19.06,-107.88,40.69),size=55,color=rear},
		{pos = Vector(19.06,-107.88,40.69),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(19.06,-107.88,40.69),size=55,color=rear},
		{pos = Vector(31.62,-105.83,40.85),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(31.62,-105.83,40.85),size=55,color=rear},
		{pos = Vector(-31.62,-105.83,40.85),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-31.62,-105.83,40.85),size=55,color=rear},
		{pos = Vector(37.76,-101.85,39.95),size=10,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(37.76,-101.85,39.95),size=10,color=rear},	
		{pos = Vector(-37.76,-101.85,39.95),size=10,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-37.76,-101.85,39.95),size=10,color=rear},	

	},
	Brakelight_sprites = {
		{pos = Vector(-31.62,-105.83,40.85),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-31.62,-105.83,40.85),size=55,color=rear},
		{pos = Vector(31.62,-105.83,40.85),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(31.62,-105.83,40.85),size=55,color=rear},
		{pos = Vector(-5.96,-106.81,48.94),size=10,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-5.96,-106.81,48.94),size=20,color=rear},
		{pos = Vector(5.96,-106.81,48.94),size=10,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(5.96,-106.81,48.94),size=20,color=rear},	
		{pos = Vector(-4.42,-106.89,48.94),size=10,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-4.42,-106.89,48.94),size=20,color=rear},	
		{pos = Vector(4.42,-106.89,48.94),size=10,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(4.42,-106.89,48.94),size=20,color=rear},	
		{pos = Vector(2.88,-106.93,48.94),size=10,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(2.88,-106.93,48.94),size=20,color=rear},	
		{pos = Vector(-2.88,-106.93,48.94),size=10,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-2.88,-106.93,48.94),size=20,color=rear},
		{pos = Vector(1.34,-107.03,48.94),size=10,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(1.34,-107.03,48.94),size=20,color=rear},	
		{pos = Vector(-1.34,-107.03,48.94),size=10,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-1.34,-107.03,48.94),size=20,color=rear},	
		{pos = Vector(0,-107.03,48.94),size=10,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(0,-107.03,48.94),size=20,color=rear},	
	},
	Reverselight_sprites = { 
	    {pos = Vector(-19.06,-107.88,40.69),size=30,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-19.06,-107.88,40.69),size=45,color=front},
		{pos = Vector(19.06,-107.88,40.69),size=30,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(19.06,-107.88,40.69),size=45,color=front},

	},
	Turnsignal_sprites = { 
		Left = { 
		{pos = Vector(-36.46,109.57,31.6),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(-36.46,109.87,31.6),size=70,color=turn},
		{pos = Vector(-31.62,-105.83,40.85),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-31.62,-105.83,40.85),size=55,color=rear},
		},
		Right = { 
		{pos = Vector(36.46,109.57,31.6),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(36.46,109.87,31.6),size=70,color=turn},
		{pos = Vector(31.62,-105.83,40.85),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(31.62,-105.83,40.85),size=55,color=rear},
		},
	},
	SubMaterials = {
		off = {
			Base = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",								
			},
			Brake = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",			

			},
			Reverse = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",			

			},
			Brake_Reverse = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",				

			},
		},
		on_lowbeam = {
			Base = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",		
			},
			Brake = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",

			},
			Reverse = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
			},
			Brake_Reverse = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",

			},
		},
		on_highbeam = {
			
			Base = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",	
			},
			Brake = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",

			},
			Reverse = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
			},
			Brake_Reverse = {
				[23] = "models/ctvehicles/chevrolet/impala_2000/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",

			},
		},
			turnsignals = {
			right = {
				[13] = "models/ctvehicles/chevrolet/impala_2000/blinker_on",




			},
			left = {
				[12] = "models/ctvehicles/chevrolet/impala_2000/blinker_on",


		},
		},
  },
}
list.Set( "simfphys_lights", "ctv_impala_2000", light_table)
local V = {
	Name = "Chevrolet Impala",
	Model = "models/ctvehicles/chevrolet/impala_2000.mdl",

	Category = "CTVehicles",
	
	Members = {
		Mass = 1572,
		
		OnTick = function(ent)
			local speed = math.min((ent:GetVelocity():Length() / 19.5 / 1.6) / 140, 1) * 425

			if (!ent:EngineActive()) then
				fuel = 0
			else
				fuel = ent:GetFuel()/ent:GetMaxFuel()
			end

			ent.fuelgauge = Lerp(0.02, ent.fuelgauge or 0, fuel or 0)
			ent:ManipulateBoneAngles(ent:LookupBone("speedo"), Angle(0, 0, -speed))
			ent:SetPoseParameter("fuel_needle", ent.fuelgauge)
		end,

		
		ModelInfo = {
			LinkDoorAnims = {},
		},
	
			
		LightsTable = "ctv_impala_2000",
		
		FrontWheelRadius = 15.5,
		RearWheelRadius = 15.5,
		
		CustomMassCenter = Vector(0,0,0),
		
			    EnginePos = Vector(0,87,38),
				
		
		SeatOffset = Vector(-3,-0,-5),
		SeatPitch = 3,
		SeatYaw = 0,
		PassengerSeats = {
			{
				pos = Vector(19,16.35,14.6),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(19,-25.35,14.6),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(-19,-25.35,14.6),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(0,-25.35,14.6),
				ang = Angle(0,0,14)
			},
		},

		ExhaustPositions = {
			{
                pos = Vector(21.06,-107.55,12.97),
                ang = Angle(-110,90,0),
        	},

			

        },

		StrengthenSuspension = true,
		
		FrontHeight = 8.5,
		FrontConstant = 52000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2800,
		
		RearHeight = 7.0,
		RearConstant = 57000,
		RearDamping = 2500,
		RearRelativeDamping = 2900,
		Revlimiter = true,
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 520,
		
		TurnSpeed = 4,

		MaxGrip = 60,
		Efficiency = 1.7,
		GripOffset = 0,
		BrakePower = 40,
		
		IdleRPM = 555,
		LimitRPM = 7000,
                SpeedoMax = -1,
		PeakTorque = 100,
		PowerbandStart = 1100,
		PowerbandEnd = 5700,
		
		FuelFillPos = Vector(-42.8,-73.47,36.88),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 64.352,


		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.1,
		snd_idle = "vehicles/ctvehicles/impala_2000_simfphys/idle.wav",
		
		snd_low = "vehicles/ctvehicles/impala_2000_simfphys/low.wav",
		snd_low_revdown = "vehicles/ctvehicles/impala_2000_simfphys/low.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "vehicles/ctvehicles/impala_2000_simfphys/mid.wav",
		snd_mid_gearup = "vehicles/ctvehicles/impala_2000_simfphys/mid.wav",
		snd_mid_geardown = "vehicles/ctvehicles/impala_2000_simfphys/mid.wav",

		snd_mid_pitch = 0.8,


		snd_horn = "simulated_vehicles/horn_5.wav", 
		
		DifferentialGear = 0.07,
		Gears = {-0.85,0,0.79,1.5,2,2.7}
	}
}

if (file.Exists( Model, "GAME" )) then 
	list.Set( "simfphys_vehicles", "ctv_impala_2000", V ) 
end
