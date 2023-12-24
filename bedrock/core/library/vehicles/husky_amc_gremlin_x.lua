AddCSLuaFile()

local hood = Color(220,205,160)
local front_turn = Color(255,140,0)
local front_marker = Color(255,120,0,190)
local old = Color(220,205,160)
local turn = Color(255,135,0)
local turn_tr = Color(255,150,0,125)
local brake = Color(220,10,0)
local brake_bulb = Color(220,60,0)
local rear = Color(255,10,0)
local front_aux = Color(220,225,255)
local reverse = Color(220,205,160)

local Model = "models/ctvehicles/amc/gremlin_x.mdl"
local list_name = "husky_amc_gremlin_x"

local speeds = {{0,0},
				{10,20},
				{20,49},
				{30,72},
				{40,98},
				{50,124},
				{60,150},
				{70,175},
				{80,201},
				{90,226},
				{100,251},
				{110,276},
				{120,302},}

local function CalcAngle(cur_speed)
	for i=2,#speeds do
		if (cur_speed < speeds[i][1]) then
			return speeds[i-1][2] + (cur_speed%(speeds[i][1]-speeds[i-1][1]))/(speeds[i][1]-speeds[i-1][1]) * (speeds[i][2]-speeds[i-1][2])
		end
	end
	return speeds[#speeds][2]
end

list.Set( "simfphys_lights", list_name, {
	ModernLights = false,
	L_HeadLampPos = Vector(-29.753,95.776,30.902), 
	L_HeadLampAng = Angle(10,90,0), 

	R_HeadLampPos = Vector(29.753,95.776,30.902), 
	R_HeadLampAng = Angle(10,90,0), 

	L_RearLampPos = Vector(-29.659,-87.646,34.751), 
	L_RearLampAng = Angle(40,-90,0), 

	R_RearLampPos = Vector(29.659,-87.646,34.751), 
	R_RearLampAng = Angle(40,-90,0), 

	Headlight_sprites = {
		{pos = Vector(-29.753,95.776,30.902),size = 70,material="sprites/light_ignorez_new",color=old},
		{pos = Vector(-29.753,95.776,30.902),size = 60,color=old},
		{pos = Vector(-29.753,95.776,30.902),size = 50,material="sprites/light_ignorez_new2",color=old},
		{pos = Vector(29.753,95.776,30.902),size = 70,material="sprites/light_ignorez_new",color=old},
		{pos = Vector(29.753,95.776,30.902),size = 60,color=old},
		{pos = Vector(29.753,95.776,30.902),size = 50,material="sprites/light_ignorez_new2",color=old},
		
		{pos = Vector(-36.793,94.754,29.462),size = 10,material="sprites/light_ignorez_new",color=front_marker},
		{pos = Vector(36.793,94.754,29.462),size = 10,material="sprites/light_ignorez_new",color=front_marker},

	},
	Headlamp_sprites = {
		{pos = Vector(-29.753,95.776,30.902),size = 50,material="sprites/light_ignorez_new",color=old},
		{pos = Vector(-29.753,95.776,30.902),size = 40,material="sprites/light_ignorez_new2",color=old},
		{pos = Vector(29.753,95.776,30.902),size = 50,material="sprites/light_ignorez_new",color=old},
		{pos = Vector(29.753,95.776,30.902),size = 40,material="sprites/light_ignorez_new2",color=old},
	},
	Rearlight_sprites = {
		{pos = Vector(-28.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-29.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(-30.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(28.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(29.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(30.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
		
		
		{pos = Vector(-38.968,-85.651,34.505),size=15,color=rear,material="sprites/light_ignorez_new"},
		{pos = Vector(38.968,-85.651,34.505),size=15,color=rear,material="sprites/light_ignorez_new"},


	},
	Brakelight_sprites = {
			{pos = Vector(-28.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-29.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-30.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(28.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(29.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(30.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},		
	},
	Reverselight_sprites = {
		{pos = Vector(-23.771,-87.957,34.687),size=20,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(-23.771,-87.957,34.687),size=15,color=reverse},
		
		{pos = Vector(23.771,-87.957,34.687),size=20,color=reverse,material="sprites/light_ignorez_new"},
		{pos = Vector(23.771,-87.957,34.687),size=15,color=reverse},
	},
	Turnsignal_sprites = {
		Left = {
			{pos = Vector(-17.038,97.5,30.632),size=20,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-18.038,97.5,30.632),size=25,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(-19.038,97.5,30.632),size=20,color=turn,material="sprites/light_ignorez_new"},
			
			{pos = Vector(-18.038,97.5,30.632),size=50,color=turn_tr,material="sprites/light_ignorez_new"},

			{pos = Vector(-28.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-29.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(-30.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
		},
		Right = {
			{pos = Vector(17.038,97.5,30.632),size=20,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(18.038,97.5,30.632),size=25,color=turn,material="sprites/light_ignorez_new"},
			{pos = Vector(19.038,97.5,30.632),size=20,color=turn,material="sprites/light_ignorez_new"},
			
			{pos = Vector(18.038,97.5,30.632),size=50,color=turn_tr,material="sprites/light_ignorez_new"},

			{pos = Vector(28.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(29.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
			{pos = Vector(30.659,-87.646,34.751),size=35,color=rear,material="sprites/light_ignorez_new"},
		},
	},
	SubMaterials = {
		off = {
			Base = {
				[18] = "models/ctvehicles/amc/gremlin_x/headlights",
			},
			Brake = {
				[18] = "models/ctvehicles/amc/gremlin_x/headlights",
			},
			Reverse = {
				[18] = "models/ctvehicles/amc/gremlin_x/headlights",
			},
			Brake_Reverse = {
				[18] = "models/ctvehicles/amc/gremlin_x/headlights",
			},
		},
		on_lowbeam = {
			Base = {
				[18] = "models/ctvehicles/shared/vmt/whiteillum_on",			
			},
			Brake = {
				[18] = "models/ctvehicles/shared/vmt/whiteillum_on",
			},
			Reverse = {
				[18] = "models/ctvehicles/shared/vmt/whiteillum_on",
			},
			Brake_Reverse = {
				[18] = "models/ctvehicles/shared/vmt/whiteillum_on",
			},
		},
		on_highbeam = {
			Base = {
				[18] = "models/ctvehicles/shared/vmt/whiteillum_on",
			},
			Brake = {
				[18] = "models/ctvehicles/shared/vmt/whiteillum_on",
			},
			Reverse = {
				[18] = "models/ctvehicles/shared/vmt/whiteillum_on",
			},
			Brake_Reverse = {
				[18] = "models/ctvehicles/shared/vmt/whiteillum_on",
			},
		},

	},
})

local V = {
	Name = "AMC Gremlin X",
	Model = Model,
	Category = "HUSKY's Cars",

	Members = {
		Mass = 1700,

		OnSpawn = function(ent)
			ent:SetSubMaterial(17, "models/ctvehicles/amc/gremlin_x/translucent_glass")
		end,

		OnTick = function(ent)

			local speed = CalcAngle((ent:GetVelocity():Length() / 14.5 / 1.6) / 260, 1) * 425

			if (!ent:EngineActive()) then
				fuel = 0
			else
				fuel = ent:GetFuel()/ent:GetMaxFuel()
			end

			if ent:GetLightsEnabled() then
				ent:SetSubMaterial(11, "models/ctvehicles/amc/gremlin_x/gauges_on")
				ent:SetSubMaterial(23, "models/ctvehicles/shared/vmt/redillum_on")
			else
				ent:SetSubMaterial(11, "models/ctvehicles/amc/gremlin_x/gauges")
				ent:SetSubMaterial(23, "models/ctvehicles/shared/vmt/redillum")
			end

			ent.fuelgauge = Lerp(0.02, ent.fuelgauge or 0, fuel or 0)
			
			ent:ManipulateBoneAngles(ent:LookupBone("speedo"), Angle(0, 0, -speed))
			ent:SetPoseParameter("fuel_needle", ent.fuelgauge)
		end,

		ModelInfo = {
			LinkDoorAnims = {}
		},

		LightsTable = list_name,

		AirFriction = -300000,

		FrontWheelRadius = 14.2,
		RearWheelRadius = 14.2,

		CustomMassCenter = Vector(0,0,-3),
		EnginePos = Vector(0,97,31),

		FirstPersonViewPos = Vector(0,-12,7),
		SeatOffset = Vector(-5,57,-7),
		SeatPitch = 0,
		SeatYaw = -60,

		SpeedoMax = -1,

		PassengerSeats = {
			{
				pos = Vector(16,-3,15),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(-16,-39,18),
				ang = Angle(0,0,14)
			},
			{
				pos = Vector(16,-39,18),
				ang = Angle(0,0,14)
			},
		},

		ExhaustPositions = {
        	{
                pos = Vector(-21.472,-86.975,14.409),
                ang = Angle(-125,90,0),
        	},

        },

		StrengthenSuspension = true,

		FrontHeight = 10.75,
		FrontConstant = 40000,
		FrontDamping = 2800,
		FrontRelativeDamping = 2800,
		
		RearHeight = 9.75,
		RearConstant = 40000,
		RearDamping = 2800,
		RearRelativeDamping = 2800,

		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 520,

		TurnSpeed = 4.5,

		MaxGrip = 50,
		Efficiency = 1.5,
		GripOffset = 0,
		BrakePower = 30,
		
		IdleRPM = 525,
		LimitRPM = 7000,

		PeakTorque = 65,
		PowerbandStart = 600,
		PowerbandEnd = 5000,
		
		FuelFillPos = Vector(0, -91, 37),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 79,

		PowerBias = 1,

		EngineSoundPreset = -1,
		snd_pitch = 1.1,
		snd_idle = "vehicles/"..list_name.."/idle.wav",

		snd_low = "vehicles/"..list_name.."/low.wav",
		snd_low_revdown = "vehicles/"..list_name.."/low.wav",
		snd_low_pitch = 1.45,

		snd_mid = "vehicles/"..list_name.."/mid.wav",
		snd_mid_gearup = "vehicles/"..list_name.."/second.wav",
		snd_mid_geardown = "vehicles/"..list_name.."/second.wav",
		snd_mid_pitch = 1.25,

		snd_horn = "simulated_vehicles/horn_5.wav",

		DifferentialGear = 0.4,
		Gears = {-0.16,0,0.16,0.26,0.48}
	}
}
if (file.Exists( Model, "GAME" )) then
	list.Set( "simfphys_vehicles", list_name, V )
end
