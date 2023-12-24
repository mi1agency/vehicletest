AddCSLuaFile()

local front = Color(255,250,190)
local turn = Color(255,155,0)
local rear = Color(255,55,0)
local reverse = Color(255,250,190)

local Model = "models/ctvehicles/ford/crown_vic_1996.mdl"
local list_name = "ctv_crown_vic_1996"



local light_table = {
	ModernLights = false, 
	L_HeadLampPos = Vector(-27.04,108,34.96), 
	L_HeadLampAng = Angle(10,90,0), 

	R_HeadLampPos = Vector(27.04,108,34.96), 
	R_HeadLampAng = Angle(10,90,0), 

	L_RearLampPos = Vector(-35.21,-125,37.83), 
	L_RearLampAng = Angle(40,-90,0), 

	R_RearLampPos = Vector(35.21,-125,37.83), 
	R_RearLampAng = Angle(40,-90,0), 
	Headlight_sprites = { 
		{pos = Vector(27.04,108,34.96),size = 55,color=front},
		{pos = Vector(-27.04,108,34.96),size = 55,color=front},
		{pos = Vector(27.04,108,34.96),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-27.04,108,34.96),size = 45,material="sprites/light_ignorez_new",color=front},


		
	
	},
	Headlamp_sprites = { 
		{pos = Vector(17.51,110,34.93),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(-17.51,110,34.93),size = 45,material="sprites/light_ignorez_new",color=front},
		{pos = Vector(17.51,110,34.93),size = 55,color=front},
		{pos = Vector(-17.51,110,34.93),size = 55,color=front},
	},

	Rearlight_sprites = { 
		{pos = Vector(-35.21,-125,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-35.21,-125,37.83),size=40,color=rear},
		{pos = Vector(35.21,-125,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(35.21,-125,37.83),size=40,color=rear},
		{pos = Vector(-28.08,-127,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-28.08,-127,37.83),size=40,color=rear},
		{pos = Vector(28.08,-127,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(28.08,-127,37.83),size=40,color=rear},

	},
	Brakelight_sprites = {
		{pos = Vector(-35.21,-125,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-35.21,-125,37.83),size=40,color=rear},
		{pos = Vector(35.21,-125,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(35.21,-125,37.83),size=40,color=rear},
		{pos = Vector(-28.08,-127,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-28.08,-127,37.83),size=40,color=rear},
		{pos = Vector(28.08,-127,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(28.08,-127,37.83),size=40,color=rear},
		{pos = Vector(0,-86.56,52.23),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(0,-86.56,52.23),size=25,color=rear},
		{pos = Vector(2.5,-86.56,52.23),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(2.5,-86.56,52.23),size=25,color=rear},		
		{pos = Vector(-2.5,-86.56,52.23),size=25,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-2.5,-86.56,52.23),size=25,color=rear},		
	},
	Reverselight_sprites = { 
	    {pos = Vector(-26.68,-129,33.67),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(-26.68,-129,33.67),size=30,color=front},
		{pos = Vector(26.68,-129,33.67),size=20,color=front,material="sprites/light_ignorez_new"},
		{pos = Vector(26.68,-129,33.67),size=30,color=front},

	},
	Turnsignal_sprites = { 
		Left = { 
		{pos = Vector(-35.36,101.7,34.92),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(-35.36,101.7,34.92),size=50,color=turn},
		{pos = Vector(-38.97,93.89,34.93),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(-38.97,93.89,34.93),size=50,color=turn},
		{pos = Vector(-35.21,-125,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-35.21,-125,37.83),size=40,color=rear},
		{pos = Vector(-28.08,-127,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-28.08,-127,37.83),size=40,color=rear},
		},
		Right = { 
		{pos = Vector(35.36,101.7,34.92),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(35.36,101.7,34.92),size=50,color=turn},
		{pos = Vector(38.97,93.89,34.93),size=50,color=turn,material="sprites/light_ignorez_new"},
		{pos = Vector(38.97,93.89,34.93),size=50,color=turn},
		{pos = Vector(35.21,-125,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(35.21,-125,37.83),size=40,color=rear},
		{pos = Vector(28.08,-127,37.83),size=50,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(28.08,-127,37.83),size=40,color=rear},
		},
	},
	SubMaterials = {
		off = {
			Base = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/central_brake",		
                [14] = "models/ctvehicles/ford/crown_vic_1996/high_beam_symbol",						
			},
			Brake = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/simfphys_brake_on",	
				[14] = "models/ctvehicles/ford/crown_vic_1996/high_beam_symbol",
			},
			Reverse = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/central_brake",	
				[14] = "models/ctvehicles/ford/crown_vic_1996/high_beam_symbol",
			},
			Brake_Reverse = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/simfphys_brake_on",	
				[14] = "models/ctvehicles/ford/crown_vic_1996/high_beam_symbol",
			},
		},
		on_lowbeam = {
			Base = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/central_brake",	
				[14] = "models/ctvehicles/ford/crown_vic_1996/high_beam_symbol",
			},
			Brake = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/simfphys_brake_on",	
				[14] = "models/ctvehicles/ford/crown_vic_1996/high_beam_symbol",
			},
			Reverse = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/central_brake",	
				[14] = "models/ctvehicles/ford/crown_vic_1996/high_beam_symbol",
			},
			Brake_Reverse = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/simfphys_brake_on",
				[14] = "models/ctvehicles/ford/crown_vic_1996/high_beam_symbol",
			},
		},
		on_highbeam = {
			Base = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/central_brake",		
                [14] = "models/ctvehicles/ford/crown_vic_1996/simfphys_high_beam_symbol_on",				
			},
			Brake = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/simfphys_brake_on",	
				[14] = "models/ctvehicles/ford/crown_vic_1996/simfphys_high_beam_symbol_on",		
			},
			Reverse = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/central_brake",	
				[14] = "models/ctvehicles/ford/crown_vic_1996/simfphys_high_beam_symbol_on",		
			},
			Brake_Reverse = {
				[1] = "models/ctvehicles/ford/crown_vic_1996/simfphys_brake_on",	
				[14] = "models/ctvehicles/ford/crown_vic_1996/simfphys_high_beam_symbol_on",		
			},
		},
			turnsignals = {
			right = {





			},
			left = {



		},
		},
  },
}
list.Set( "simfphys_lights", "ctv_crown_vic_1996", light_table)
local V = {
	Name = "Ford Crown Victoria",
	Model = "models/ctvehicles/ford/crown_vic_1996.mdl",

	Category = "CTVehicles",
	
	Members = {
		Mass = 1700,
		
		OnSpawn = function(ent)
		ent:SetSubMaterial(4, "models/ctvehicles/ford/crown_vic_1996/non_refract")
		ent:SetSubMaterial(19, "models/ctvehicles/ford/crown_vic_1996/non_refract")
		end,
		
		OnTick = function(ent)
			local speed = math.min((ent:GetVelocity():Length() / 17.85 / 1.6) / 140, 1) * 425

			if (!ent:EngineActive()) then
				fuel = 0
			else
				fuel = ent:GetFuel()/ent:GetMaxFuel()
			end

			if ent:GetLightsEnabled() then
			    ent:SetSubMaterial(2, "models/ctvehicles/ford/crown_vic_1996/symbols_on")		
				ent:SetSubMaterial(13, "models/ctvehicles/ford/crown_vic_1996/gauges_on")
				ent:SetSubMaterial(24, "models/ctvehicles/ford/crown_vic_1996/steering_wheel_old_symbols_on")
            	ent:SetSubMaterial(28, "models/ctvehicles/ford/crown_vic_1996/old_radio_symbols_on")
			else
			    ent:SetSubMaterial(2, "models/ctvehicles/ford/crown_vic_1996/symbols")	
				ent:SetSubMaterial(13, "models/ctvehicles/ford/crown_vic_1996/gauges")
				ent:SetSubMaterial(24, "models/ctvehicles/ford/crown_vic_1996/steering_wheel_old_symbols")
                ent:SetSubMaterial(28, "models/ctvehicles/ford/crown_vic_1996/old_radio_symbols")
			end
			
			ent.fuelgauge = Lerp(0.02, ent.fuelgauge or 0, fuel or 0)
			ent:ManipulateBoneAngles(ent:LookupBone("speedo"), Angle(0, 0, -speed))
			ent:SetPoseParameter("fuel_needle", ent.fuelgauge)
		end,

		
		ModelInfo = {
			LinkDoorAnims = {},
		},
	
			
		LightsTable = "ctv_crown_vic_1996",
		
		FrontWheelRadius = 16,
		RearWheelRadius = 16,
		
		CustomMassCenter = Vector(0,0,0),
		
			    EnginePos = Vector(0,68,36),
				
		
		SeatOffset = Vector(-3,-0,-5),
		SeatPitch = 3,
		SeatYaw = 0,
		PassengerSeats = {
			{
				pos = Vector(19.8,2.5,18.2),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(-19.7,-39.03,17.6),
				ang = Angle(0,0,10)
			},
			{
				pos = Vector(19.7,-39.03,17.6),
				ang = Angle(0,0,10)
			},
			{
				pos = Vector(0,-39.03,17.6),
				ang = Angle(0,0,10)
			},
		},

		ExhaustPositions = {
			{
                pos = Vector(26.12,-132.42,15.61),
                ang = Angle(-110,90,0),
        	},
			{
                pos = Vector(-26.12,-132.42,15.61),
                ang = Angle(-110,90,0),
        	},
			

        },

		StrengthenSuspension = true,
		
		FrontHeight = 6.5,
		FrontConstant = 60000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2800,
		
		RearHeight = 6.5,
		RearConstant = 60000,
		RearDamping = 2500,
		RearRelativeDamping = 2900,
		Revlimiter = true,
		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 600,
		
		TurnSpeed = 3,
        AirFriction = -190000,
		MaxGrip = 60,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 50,

		IdleRPM = 800,
		LimitRPM = 7000,
        SpeedoMax = -1,
		PeakTorque = 130,
		PowerbandStart = 800,
		PowerbandEnd = 5600,
		
		FuelFillPos = Vector(-43.59,-91.74,40.06),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 71.923,


		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "vehicles/ctvehicles/crown_vic_1996_simfphys/idle.wav",
		
		snd_low = "vehicles/ctvehicles/crown_vic_1996_simfphys/low.wav",
		snd_low_revdown = "vehicles/ctvehicles/crown_vic_1996_simfphys/low.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "vehicles/ctvehicles/crown_vic_1996_simfphys/mid.wav",
		snd_mid_gearup = "vehicles/ctvehicles/crown_vic_1996_simfphys/mid.wav",
		snd_mid_geardown = "vehicles/ctvehicles/crown_vic_1996_simfphys/mid.wav",

		snd_mid_pitch = 0.85,


		snd_horn = "simulated_vehicles/horn_5.wav", 
		
		DifferentialGear = 0.1,
		Gears = {-0.97,0,0.8,1.47,2.19,3.21}
	}
}

if (file.Exists( Model, "GAME" )) then 
	list.Set( "simfphys_vehicles", "ctv_crown_vic_1996", V ) 
end
