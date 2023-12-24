AddCSLuaFile()

local front = Color(255,175,100)
local turn = Color(255,155,0)
local rear = Color(255,55,0)
local reverse = Color(255,175,100)

local Model = "models/ctvehicles/pontiac/1958_bonneville_coupe.mdl"
local list_name = "ctv_1958_pontiac_bonneville_coupe"



local light_table = {
	ModernLights = false, 
	L_HeadLampPos = Vector(-37.2,102.52,32.21), 
	L_HeadLampAng = Angle(10,90,0), 

	R_HeadLampPos = Vector(37.2,102.52,32.21), 
	R_HeadLampAng = Angle(10,90,0), 

	L_RearLampPos = Vector(-38.59,-137.23,40.2), 
	L_RearLampAng = Angle(40,-90,0), 

	R_RearLampPos = Vector(38.59,-137.23,40.2), 
	R_RearLampAng = Angle(40,-90,0), 
	Headlight_sprites = { 
		{pos = Vector(37.29,105.27,38.56),size = 90,color=front},
		{pos = Vector(-37.29,105.27,38.56),size = 90,color=front},
		{pos = Vector(37.29,105.27,38.56),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-37.29,105.27,38.56),size = 45,material="sprites/light_ignorez_new",color=front},


		
	
	},
	Headlamp_sprites = { 
		{pos = Vector(29.8,105.27,38.56),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-29.8,105.27,38.56),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(29.8,105.27,38.56),size = 90,color=front},
		{pos = Vector(-29.8,105.27,38.56),size = 90,color=front},
	},

	Rearlight_sprites = { 
		{pos = Vector(-38.59,-137.23,40.2),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-38.59,-137.23,40.2),size=50,color=rear},
		{pos = Vector(-29.75,-137.23,40.2),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.75,-137.23,40.2),size=50,color=rear},
		{pos = Vector(38.59,-137.23,40.2),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(38.59,-137.23,40.2),size=50,color=rear},
		{pos = Vector(29.75,-137.23,40.2),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(29.75,-137.23,40.2),size=50,color=rear},

	},
	Brakelight_sprites = {
		{pos = Vector(-38.59,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-38.59,-137.23,40.2),size=55,color=rear},
		{pos = Vector(-29.75,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.75,-137.23,40.2),size=55,color=rear},
		{pos = Vector(38.59,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(38.59,-137.23,40.2),size=55,color=rear},
		{pos = Vector(29.75,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(29.75,-137.23,40.2),size=55,color=rear},
		{pos = Vector(0.9,-58.7,60.45),size=25,color=rear},
		{pos = Vector(2.69,-58.7,60.45),size=25,color=rear},
		{pos = Vector(4.55,-58.7,60.45),size=25,color=rear},
		{pos = Vector(6.34,-58.7,60.45),size=25,color=rear},
		{pos = Vector(-0.9,-58.7,60.45),size=25,color=rear},
		{pos = Vector(-2.69,-58.7,60.45),size=25,color=rear},
		{pos = Vector(-4.55,-58.7,60.45),size=25,color=rear},
		{pos = Vector(-6.34,-58.7,60.45),size=25,color=rear},
		
	},
	Reverselight_sprites = { 
	    {pos = Vector(-34.3,-133.9,32.45),size=50,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-34.3,-133.9,32.45),size=70,color=front},
		{pos = Vector(34.3,-133.9,32.45),size=50,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(34.3,-133.9,32.45),size=70,color=front},

	},
	Turnsignal_sprites = { 
		Left = { 
		{pos = Vector(-35.12,109.3,22.8),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(-35.12,109.3,22.8),size=70,color=turn},
		{pos = Vector(-38.59,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-38.59,-137.23,40.2),size=55,color=rear},
		},
		Right = { 
		{pos = Vector(35.12,109.3,22.8),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(35.12,109.3,22.8),size=70,color=turn},
		{pos = Vector(38.59,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(38.59,-137.23,40.2),size=55,color=rear},
		},
	},
	SubMaterials = {
		off = {
			Base = {
				[6] = "models/ctvehicles/pontiac/1958_bonneville/lowbeams",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/central_brake",
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",
				[29] = "models/ctvehicles/shared/vmt/white",
			},
			Brake = {
				[6] = "models/ctvehicles/pontiac/1958_bonneville/lowbeams",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/rear_running_on",
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",
				[29] = "models/ctvehicles/shared/vmt/white",


			},
			Reverse = {
				[6] = "models/ctvehicles/pontiac/1958_bonneville/lowbeams",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/central_brake",
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",
				[29] = "models/ctvehicles/shared/vmt/white",


			},
			Brake_Reverse = {
				[6] = "models/ctvehicles/pontiac/1958_bonneville/lowbeams",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/rear_running_on",
                [0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",
				[29] = "models/ctvehicles/shared/vmt/white",


			},
		},
		on_lowbeam = {
			Base = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/central_brake",
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[29] = "models/ctvehicles/shared/vmt/whiteillum_on",
				
			},
			Brake = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/rear_running_on",
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[29] = "models/ctvehicles/shared/vmt/whiteillum_on",

			},
			Reverse = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/central_brake",
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[29] = "models/ctvehicles/shared/vmt/whiteillum_on",


			},
			Brake_Reverse = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/rear_running_on",
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[29] = "models/ctvehicles/shared/vmt/whiteillum_on",



			},
		},
		on_highbeam = {
			Base = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/central_brake",
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[29] = "models/ctvehicles/shared/vmt/whiteillum_on",
				
			},
			Brake = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/rear_running_on",
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[29] = "models/ctvehicles/shared/vmt/whiteillum_on",

			},
			Reverse = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/central_brake",
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[29] = "models/ctvehicles/shared/vmt/whiteillum_on",


			},
			Brake_Reverse = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[28] = "models/ctvehicles/pontiac/1958_bonneville/rear_running_on",
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[29] = "models/ctvehicles/shared/vmt/whiteillum_on",



			},
		},
			turnsignals = {
			right = {

				[15] = "models/ctvehicles/pontiac/1958_bonneville/blinker_on",


			},
			left = {
				[14] = "models/ctvehicles/pontiac/1958_bonneville/blinker_on",

		},
		},
  },
}
list.Set( "simfphys_lights", "ctv_1958_pontiac_bonneville_coupe", light_table)
local V = {
	Name = "Pontiac Bonneville Coupe",
	Model = "models/ctvehicles/pontiac/1958_bonneville_coupe.mdl",

	Category = "CTVehicles",
	
	Members = {
		Mass = 1737,
		
		OnTick = function(ent)
			local speed = math.min((ent:GetVelocity():Length() / 14.5 / 1.6) / 140, 1) * 425

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
	
			
		LightsTable = "ctv_1958_pontiac_bonneville_coupe",
		
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		
		CustomMassCenter = Vector(0,0,0),
		
			    EnginePos = Vector(0,55,35),
				
		
		SeatOffset = Vector(-3,-0,-5),
		SeatPitch = 3,
		SeatYaw = 0,
		PassengerSeats = {
			{
				pos = Vector(18,-1.35,15.99),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(15,-45.35,15.99),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(-15,-45.35,15.99),
				ang = Angle(0,0,14)
			},
		},

		ExhaustPositions = {
			{
                pos = Vector(38.92,-134,13.37),
                ang = Angle(-110,135,0),
        	},
			{
                pos = Vector(-38.92,-134,13.37),
                ang = Angle(110,-135,0),
        	},
			

        },

		StrengthenSuspension = true,
		
		FrontHeight = 11,
		FrontConstant = 32000,
		FrontDamping = 2800,
		FrontRelativeDamping = 2800,
		
		RearHeight = 9.6,
		RearConstant = 37000,
		RearDamping = 2900,
		RearRelativeDamping = 2900,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 520,
		
		TurnSpeed = 5,

		MaxGrip = 50,
		Efficiency = 1.6,
		GripOffset = 0,
		BrakePower = 30,
		
		IdleRPM = 515,
		LimitRPM = 7500,
                SpeedoMax = -1,
		PeakTorque = 100,
		PowerbandStart = 1100,
		PowerbandEnd = 5500,
		
		FuelFillPos = Vector(-34.3,-133.9,32.45),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 75,


		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.1,
		snd_idle = "vehicles/ctvehicles/bonneville_simfphys/idle.wav",
		
		snd_low = "vehicles/ctvehicles/bonneville_simfphys/low.wav",
		snd_low_revdown = "vehicles/ctvehicles/bonneville_simfphys/low.wav",
		snd_low_pitch = 0.7,
		
		snd_mid = "vehicles/ctvehicles/bonneville_simfphys/mid.wav",
		snd_mid_gearup = "vehicles/ctvehicles/bonneville_simfphys/second.wav",
		snd_mid_geardown = "vehicles/ctvehicles/bonneville_simfphys/second.wav",

		snd_mid_pitch = 0.7,


		snd_horn = "simulated_vehicles/horn_5.wav", 
		
		DifferentialGear = 0.3,
		Gears = {-0.22,0,0.25,0.435,0.61}
	}
}

if (file.Exists( Model, "GAME" )) then 
	list.Set( "simfphys_vehicles", "ctv_1958_pontiac_bonneville_coupe", V ) 
end

local light_table = {
	ModernLights = false, 
	L_HeadLampPos = Vector(-37.2,102.52,32.21), 
	L_HeadLampAng = Angle(10,90,0), 

	R_HeadLampPos = Vector(37.2,102.52,32.21), 
	R_HeadLampAng = Angle(10,90,0), 

	L_RearLampPos = Vector(-38.59,-137.23,40.2), 
	L_RearLampAng = Angle(40,-90,0), 

	R_RearLampPos = Vector(38.59,-137.23,40.2), 
	R_RearLampAng = Angle(40,-90,0), 
	Headlight_sprites = { 
		{pos = Vector(37.29,105.27,38.56),size = 90,color=front},
		{pos = Vector(-37.29,105.27,38.56),size = 90,color=front},
		{pos = Vector(37.29,105.27,38.56),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-37.29,105.27,38.56),size = 45,material="sprites/light_ignorez_new",color=front},


		
	
	},
	Headlamp_sprites = { 
		{pos = Vector(29.8,105.27,38.56),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-29.8,105.27,38.56),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(29.8,105.27,38.56),size = 90,color=front},
		{pos = Vector(-29.8,105.27,38.56),size = 90,color=front},
	},

	Rearlight_sprites = { 
		{pos = Vector(-38.59,-137.23,40.2),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-38.59,-137.23,40.2),size=50,color=rear},
		{pos = Vector(-29.75,-137.23,40.2),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.75,-137.23,40.2),size=50,color=rear},
		{pos = Vector(38.59,-137.23,40.2),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(38.59,-137.23,40.2),size=50,color=rear},
		{pos = Vector(29.75,-137.23,40.2),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(29.75,-137.23,40.2),size=50,color=rear},

	},
	Brakelight_sprites = {
		{pos = Vector(-38.59,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-38.59,-137.23,40.2),size=55,color=rear},
		{pos = Vector(-29.75,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.75,-137.23,40.2),size=55,color=rear},
		{pos = Vector(38.59,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(38.59,-137.23,40.2),size=55,color=rear},
		{pos = Vector(29.75,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(29.75,-137.23,40.2),size=55,color=rear},

		
	},
	Reverselight_sprites = { 
	    {pos = Vector(-34.3,-133.9,32.45),size=50,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-34.3,-133.9,32.45),size=70,color=front},
		{pos = Vector(34.3,-133.9,32.45),size=50,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(34.3,-133.9,32.45),size=70,color=front},

	},
	Turnsignal_sprites = { 
		Left = { 
		{pos = Vector(-35.12,109.3,22.8),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(-35.12,109.3,22.8),size=70,color=turn},
		{pos = Vector(-38.59,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-38.59,-137.23,40.2),size=55,color=rear},
		},
		Right = { 
		{pos = Vector(35.12,109.3,22.8),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(35.12,109.3,22.8),size=70,color=turn},
		{pos = Vector(38.59,-137.23,40.2),size=55,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(38.59,-137.23,40.2),size=55,color=rear},
		},
	},
	SubMaterials = {
		off = {
			Base = {
				[6] = "models/ctvehicles/pontiac/1958_bonneville/lowbeams",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",
				[28] = "models/ctvehicles/shared/vmt/white",
			},
			Brake = {
				[6] = "models/ctvehicles/pontiac/1958_bonneville/lowbeams",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",
				[28] = "models/ctvehicles/shared/vmt/white",


			},
			Reverse = {
				[6] = "models/ctvehicles/pontiac/1958_bonneville/lowbeams",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",
				[28] = "models/ctvehicles/shared/vmt/white",


			},
			Brake_Reverse = {
				[6] = "models/ctvehicles/pontiac/1958_bonneville/lowbeams",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				
                [0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges",
				[26] = "models/ctvehicles/shared/vmt/redillum",
				[28] = "models/ctvehicles/shared/vmt/white",


			},
		},
		on_lowbeam = {
			Base = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[28] = "models/ctvehicles/shared/vmt/whiteillum_on",
				
			},
			Brake = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[28] = "models/ctvehicles/shared/vmt/whiteillum_on",

			},
			Reverse = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[28] = "models/ctvehicles/shared/vmt/whiteillum_on",


			},
			Brake_Reverse = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/pontiac/1958_bonneville/highbeams",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[28] = "models/ctvehicles/shared/vmt/whiteillum_on",



			},
		},
		on_highbeam = {
			Base = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[28] = "models/ctvehicles/shared/vmt/whiteillum_on",
				
			},
			Brake = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/pontiac/1958_bonneville/reverse",
				
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[28] = "models/ctvehicles/shared/vmt/whiteillum_on",

			},
			Reverse = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[28] = "models/ctvehicles/shared/vmt/whiteillum_on",


			},
			Brake_Reverse = {
				[6] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[7] = "models/ctvehicles/shared/vmt/whiteillum_on",
				[14] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_l",
				[15] = "models/ctvehicles/pontiac/1958_bonneville/f_blinker_r",
				[16] = "models/ctvehicles/shared/vmt/whiteillum_on",
				
				[0] = "models/ctvehicles/pontiac/1958_bonneville/gauges2_on",
				[1] = "models/ctvehicles/pontiac/1958_bonneville/gauges_on",
				[26] = "models/ctvehicles/shared/vmt/redillum_on",
				[28] = "models/ctvehicles/shared/vmt/whiteillum_on",



			},
		},
			turnsignals = {
			right = {

				[15] = "models/ctvehicles/pontiac/1958_bonneville/blinker_on",


			},
			left = {
				[14] = "models/ctvehicles/pontiac/1958_bonneville/blinker_on",

		},
		},
  },
}
list.Set( "simfphys_lights", "ctv_1958_pontiac_bonneville_convertible", light_table)

local V = {
	Name = "Pontiac Bonneville Convertible",
	Model = "models/ctvehicles/pontiac/1958_bonneville_convertible.mdl",

	Category = "CTVehicles",
	
	Members = {
		Mass = 1737,
		
		OnTick = function(ent)
			local speed = math.min((ent:GetVelocity():Length() / 14.5 / 1.6) / 140, 1) * 425

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
	
			
		LightsTable = "ctv_1958_pontiac_bonneville_convertible",
		
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		
		CustomMassCenter = Vector(0,0,0),
		
			    EnginePos = Vector(0,55,35),
				
		
		SeatOffset = Vector(-3,-0,-5),
		SeatPitch = 3,
		SeatYaw = 0,
		PassengerSeats = {
			{
				pos = Vector(18,-1.35,15.99),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(15,-45.35,15.99),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(-15,-45.35,15.99),
				ang = Angle(0,0,14)
			},
		},

		ExhaustPositions = {
			{
                pos = Vector(38.92,-134,13.37),
                ang = Angle(-110,135,0),
        	},
			{
                pos = Vector(-38.92,-134,13.37),
                ang = Angle(110,-135,0),
        	},
			

        },

		StrengthenSuspension = true,
		
		FrontHeight = 11,
		FrontConstant = 32000,
		FrontDamping = 2800,
		FrontRelativeDamping = 2800,
		
		RearHeight = 9.6,
		RearConstant = 37000,
		RearDamping = 2900,
		RearRelativeDamping = 2900,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 520,
		
		TurnSpeed = 5,

		MaxGrip = 50,
		Efficiency = 1.6,
		GripOffset = 0,
		BrakePower = 30,
		
		IdleRPM = 515,
		LimitRPM = 7500,
                SpeedoMax = -1,
		PeakTorque = 100,
		PowerbandStart = 1100,
		PowerbandEnd = 5500,
		
		FuelFillPos = Vector(-34.3,-133.9,32.45),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 75,


		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.1,
		snd_idle = "vehicles/ctvehicles/bonneville_simfphys/idle.wav",
		
		snd_low = "vehicles/ctvehicles/bonneville_simfphys/low.wav",
		snd_low_revdown = "vehicles/ctvehicles/bonneville_simfphys/low.wav",
		snd_low_pitch = 0.7,
		
		snd_mid = "vehicles/ctvehicles/bonneville_simfphys/mid.wav",
		snd_mid_gearup = "vehicles/ctvehicles/bonneville_simfphys/second.wav",
		snd_mid_geardown = "vehicles/ctvehicles/bonneville_simfphys/second.wav",

		snd_mid_pitch = 0.7,


		snd_horn = "simulated_vehicles/horn_5.wav", 
		
		DifferentialGear = 0.3,
		Gears = {-0.22,0,0.25,0.435,0.61}
	}
}

if (file.Exists( Model, "GAME" )) then 
	list.Set( "simfphys_vehicles", "ctv_1958_pontiac_bonneville_convertible", V ) 
end