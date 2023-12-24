local light_table = {
	ModernLights = false,
	L_HeadLampPos = Vector(-43.3448,98.7901,36.2878),
	L_HeadLampAng = Angle(180,-90,0),

	R_HeadLampPos = Vector(43.3448,98.7901,36.2878),
	R_HeadLampAng = Angle(180,-90,0),

	L_RearLampPos = Vector(-34.3936,-117.574,40.0466),
	L_RearLampAng = Angle(0,-90,0),

	R_RearLampPos = Vector(34.3936,-117.574,40.0466),
	R_RearLampAng = Angle(0,-90,0),
	
	Headlight_sprites = { 
		Vector(-43.3448,98.7901,36.2878),
		Vector(43.3448,98.7901,36.2878),
	},
	Headlamp_sprites = { 
		{pos =Vector(36.6618,102.552,36.4819),size = 70},
		{pos =Vector(-36.6618,102.552,36.4819),size = 70},
	},
		FogLight_sprites = {
		{pos = Vector(40.5242,107.38,21.901),color = Color(255,160,0,150),size = 90},
		{pos = Vector(40.5242,107.38,21.901),color = Color(255,120,0,120),size = 100},
		{pos = Vector(-40.5242,107.38,21.901),color = Color(255,160,0,150),size = 90},
		{pos = Vector(-40.5242,107.38,21.901),color = Color(255,120,0,120),size = 100},
	},
	Rearlight_sprites = {
		{pos = Vector(40.8104,-112.557,40.0466),size = 80},
		{pos = Vector(34.3936,-117.574,40.0466),size = 80},
		{pos = Vector(28.3158,-120.444,40.0466),size = 80},
		
		{pos = Vector(-40.8104,-112.557,40.0466),size = 80},
		{pos = Vector(-34.3936,-117.574,40.0466),size = 80},
		{pos = Vector(-28.3158,-120.444,40.0466),size = 80},
	},
	Brakelight_sprites = { 
		{pos = Vector(40.8104,-112.557,40.0466),size = 70},
		{pos = Vector(34.3936,-117.574,40.0466),size = 70},
		{pos = Vector(28.3158,-120.444,40.0466),size = 70},
		
		{pos = Vector(-40.8104,-112.557,40.0466),size = 70},
		{pos = Vector(-34.3936,-117.574,40.0466),size = 70},
		{pos = Vector(-28.3158,-120.444,40.0466),size = 70},
		
		{pos = Vector(0,-119.579,45.6745),size = 70},
	},
	Turnsignal_sprites = {
		Left = {
			{pos =Vector(-34.5829,-117.724,34.3227),size = 40,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(-34.5829,-117.724,34.3227),size = 20,color = Color( 255, 200, 0,  200)},
			
			{pos =Vector(-48.0928,99.5395,27.2754),size = 40,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(-48.0928,99.5395,27.2754),size = 20,color = Color( 255, 200, 0,  200)},
			
			{pos =Vector(-39.8177,102.704,35.3122),size = 20,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(-39.8177,102.704,35.3122),size = 10,color = Color( 255, 200, 0,  200)},
		},
		Right = {
			{pos =Vector(34.5829,-117.724,34.3227),size = 40,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(34.5829,-117.724,34.3227),size = 20,color = Color( 255, 200, 0,  200)},
			
			{pos =Vector(48.0928,99.5395,27.2754),size = 40,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(48.0928,99.5395,27.2754),size = 20,color = Color( 255, 200, 0,  200)},
			
			{pos =Vector(39.8177,102.704,35.3122),size = 20,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(39.8177,102.704,35.3122),size = 10,color = Color( 255, 200, 0,  200)},
		},
	},
		Reverselight_sprites = {
		{pos = Vector(-27.8232,-119.54,34.3227),size = 40},
		{pos = Vector(27.8232,-119.54,34.3227),size = 40},
	},
}
list.Set( "simfphys_lights", "jm_dodge_viper_rt10", light_table)

local V = {
	Name = "1992 Dodge Viper RT/10",
	Model = "models/jm_cars/dodge/viper/rt10.mdl",
	Category = "JM Simfphys Cars",
	
	SpawnOffset = Vector(0,0,2),
		

		
	Members = {
		Mass = 1200,
		
		SpeedoMax = -1,
		
		LightsTable = "jm_dodge_viper_rt10",
		
		FrontWheelRadius = 18.5,
		RearWheelRadius = 18.5,
		
		
		CustomMassCenter = Vector(0,0,-1),
		SeatOffset = Vector(0,0,-2),
		SeatPitch = 0,
		
		ExhaustPositions = {
		{
		pos = Vector(-51.881, -34.9195, 10.3116),
		ang = Angle(90, -90, 0), 
		},
	    {
		pos = Vector(51.881, -34.9195, 10.3116),
	    ang = Angle(90, -90, 0),
		},
},

		SpeedoMax = -1,
		
		PassengerSeats = {
			{
				pos = Vector(25.9847,-21.9873,16.3757),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
		},
		Turbocharged = false,
		
		Supercharged = false,
		
		FuelTankSize = 50,		
		FuelType = FUELTYPE_PETROL,

		RPMGaugeMax = 6000,
		StrengthenSuspension = false,
		
		FrontHeight = 3,
		FrontConstant = 43000,
		FrontDamping = 3000,
		FrontRelativeDamping = 300,
		
		RearHeight = 3,
		RearConstant = 43000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 8,
		AirFriction = -30000,
		
		MaxGrip = 40,
		Efficiency = 1.337,
		GripOffset = 0,
		BrakePower = 40,
		
		IdleRPM = 800,
		LimitRPM = 7000,

		PeakTorque = 250,
		PowerbandStart = 750,
		PowerbandEnd = 6000,
		
		FuelFillPos = Vector(41.1463,-82.9753,45.6954),
		
		

		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "vehicles/jmcars/viperrt10/idle.wav",
		
		snd_low = "vehicles/jmcars/viperrt10/fourth_cruise.wav",
		snd_low_revdown = "vehicles/jmcars/viperrt10/gaz_off_h.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "vehicles/jmcars/viperrt10/first.wav",
		snd_mid_gearup = "vehicles/jmcars/viperrt10/third.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "vehicles/jmcars/viperrt10/idle.wav",
		
		Sound_Mid = "vehicles/jmcars/viperrt10/second.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "vehicles/jmcars/viperrt10/first.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.375,
		Gears = {-0.2,0,0.1,0.23,0.35,0.44,0.55,0.6},
	}
}
	hook.Add("Think", "Simfphys_Dodge_Viper_RT10_Dash", function()
		for k, v in pairs(ents.FindByClass("gmod_sent_vehicle_fphysics_base")) do
			if v:GetModel() == "models/jm_cars/dodge/viper/rt10.mdl" then
				local rpm = (v:GetRPM() / v:GetLimitRPM())*(230)
				
				if v.CurAngle == nil then v.CurAngle = 0 end
				v.CurAngle = Lerp(0.2,v.CurAngle,-rpm)	
				
				v:ManipulateBoneAngles(v:LookupBone("gauge_bone"), Angle(v.CurAngle))
				
				local speed = v:GetVelocity():Length()*0.07
				v:ManipulateBoneAngles(v:LookupBone("speedo_bone"), Angle(-speed))
				
				local fuel = v:GetFuel()
				v:ManipulateBoneAngles(v:LookupBone("fuel_bone"), Angle(-fuel))
			end
		end
	end)
list.Set( "simfphys_vehicles", "dodge_viper_rt10", V )
