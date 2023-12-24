local light_table = {
	ModernLights = false,
	L_HeadLampPos = Vector(-37.1284,125.493,50.1019),
	L_HeadLampAng = Angle(180,-90,0),

	R_HeadLampPos = Vector(37.1284,125.493,50.1019),
	R_HeadLampAng = Angle(180,-90,0),

	L_RearLampPos = Vector(-40.4826,-132.585,51.244),
	L_RearLampAng = Angle(0,-90,0),

	R_RearLampPos = Vector(40.4826,-132.585,51.244),
	R_RearLampAng = Angle(0,-90,0),
	
	Headlight_sprites = { 
		Vector(-37.1284,125.493,50.1019),
		Vector(37.1284,125.493,50.1019),
		
		Vector(-25.8955,127.557,50.1483),
		Vector(25.8955,127.557,50.1483),
		
		Vector(37.3927,125.838,36.4015),
		Vector(-37.3927,125.838,36.4015),
		
		pos =Vector(32.5229,126.974,36.4015),
		pos =Vector(-32.5229,126.974,36.4015),
		
		pos =Vector(25.8955,127.557,36.4015),
		pos =Vector(-25.8955,127.557,36.4015),
	},
	Headlamp_sprites = { 
		{pos =Vector(36.6618,102.552,36.4819),size = 40},
		{pos =Vector(-36.6618,102.552,36.4819),size = 40},
		
		{pos =Vector(36.6618,102.552,36.4819),size = 40},
		{pos =Vector(-36.6618,102.552,36.4819),size = 40},
		
		{pos =Vector(37.3927,125.838,36.4015),size = 30},
		{pos =Vector(-37.3927,125.838,36.4015),size = 30},
		
		{pos =Vector(32.5229,126.974,36.4015),size = 30},
		{pos =Vector(-32.5229,126.974,36.4015),size = 30},
		
		{pos =Vector(25.8955,127.557,36.4015),size = 30},
		{pos =Vector(-25.8955,127.557,36.4015),size = 30},
		
		
	},
		FogLight_sprites = {
		{pos = Vector(44.7764,-124.872,36.4015),color = Color(255,160,0,150),size = 20},
		{pos = Vector(44.7764,-124.872,36.4015),color = Color(255,120,0,120),size = 30},
		
		{pos = Vector(-44.7764,-124.872,36.4015),color = Color(255,160,0,150),size = 20},
		{pos = Vector(-44.7764,-124.872,36.4015),color = Color(255,120,0,120),size = 30},
	},
	Rearlight_sprites = {
		{pos = Vector(40.4826,-131.328,58.479),size = 40},
		{pos = Vector(40.4826,-132.585,51.244),size = 40},
		
		{pos = Vector(-40.4826,-131.328,58.479),size = 40},
		{pos = Vector(-40.4826,-132.585,51.244),size = 40},
	},
	Brakelight_sprites = { 
		{pos = Vector(40.4826,-131.328,58.479),size = 40},
		{pos = Vector(34.3936,-117.574,40.0466),size = 40},
		
		{pos = Vector(-40.4826,-131.328,58.479),size = 40},
		{pos = Vector(-40.4826,-132.585,51.244),size = 40},
		
		{pos = Vector(0,-75.1761,73.641),size = 100},
	},
	Turnsignal_sprites = {
		Left = {
			{pos =Vector(-46.0745,112.462,36.4015),size = 40,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(-46.0745,112.462,36.4015),size = 20,color = Color( 255, 0, 0,  200)},
			{pos =Vector(-40.4826,-131.328,58.479),size = 40,material = "sprites/light_ignorez",color = Color( 255, 0, 0,  0)},
			{pos =Vector(-40.4826,-131.328,58.479),size = 20,color = Color( 255, 0, 0,  0)},
		},
		Right = {
			{pos =Vector(46.0745,112.462,36.4015),size = 40,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(46.0745,112.462,36.4015),size = 20,color = Color( 255, 0, 0,  200)},
			{pos =Vector(40.4826,-131.328,58.479),size = 40,material = "sprites/light_ignorez",color = Color( 255, 0, 0,  0)},
			{pos =Vector(40.4826,-131.328,58.479),size = 20,color = Color( 255, 0, 0,  0)},
		},
	},
		Reverselight_sprites = {
		{pos = Vector(-41.0781,-134.793,48.4115),size = 40},
		{pos = Vector(41.0781,-134.793,48.4115),size = 40},
	},
}
list.Set( "simfphys_lights", "jm_chevy_monte_carlo_ss", light_table)

local V = {
	Name = "1985 Chevrolet Monte Carlo SS",
	Model = "models/jmcars/chevy/montecarlo/edwulfsmc.mdl",
	Category = "JM Simfphys Cars",
	
	SpawnOffset = Vector(0,0,2),
		

		
	Members = {
		Mass = 1400,
		
		SpeedoMax = -1,
		
		LightsTable = "jm_chevy_monte_carlo_ss",
		
		FrontWheelRadius = 19,
		RearWheelRadius = 19,
		
		
		CustomMassCenter = Vector(0,0,-1),
		SeatOffset = Vector(0,0,-2),
		SeatPitch = 0,
		
		ExhaustPositions = {
		{
		pos = Vector(-37.8122, -141.424, 31.9955),
		ang = Angle(90, -90, 0), 
		},
	    {
		pos = Vector(37.8122, -141.424, 31.9955),
	    ang = Angle(90, -90, 0),
		},
},

		SpeedoMax = -1,
		
		PassengerSeats = {
			{
				pos = Vector(21.7407,-12.5787,43.7957),
				ang = Angle(0,0,14),
			},
			{
				pos = Vector(-20.9824,-42.0828,43.7957),
				ang = Angle(0,0,14),
			},
				{
				pos = Vector(20.9824,-42.0828,43.7957),
				ang = Angle(0,0,14),
			},
		},
		Turbocharged = false,
		
		Supercharged = false,
		
		FuelTankSize = 90,		
		FuelType = FUELTYPE_PETROL,

		RPMGaugeMax = 6000,
		StrengthenSuspension = false,
		
		FrontHeight = 7,
		FrontConstant = 43000,
		FrontDamping = 3000,
		FrontRelativeDamping = 300,
		
		RearHeight = 7,
		RearConstant = 43000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 8,
		AirFriction = -30000,
		
		MaxGrip = 43,
		Efficiency = 1.337,
		GripOffset = 0,
		BrakePower = 30,
		
		IdleRPM = 750,
		LimitRPM = 6000,

		PeakTorque = 250,
		PowerbandStart = 750,
		PowerbandEnd = 5500,
		
		FuelFillPos = Vector(41.1463,-82.9753,45.6954),
		
		

		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "vehicles/jmcars/montecarlo/idle.wav",
		
		snd_low = "vehicles/jmcars/montecarlo/fourth_cruise.wav",
		snd_low_revdown = "vehicles/jmcars/montecarlo/gaz_off_h.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "vehicles/jmcars/montecarlo/first.wav",
		snd_mid_gearup = "vehicles/jmcars/montecarlo/third.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "vehicles/jmcars/montecarlo/idle.wav",
		
		Sound_Mid = "vehicles/jmcars/montecarlo/second.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "vehicles/jmcars/montecarlo/first.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.15,
		Gears = {-0.2,0,0.32,0.5,0.73,0.94},
	}
}
	hook.Add("Think", "Simfphys_Chevy_MonteCarlo_SS_Dash", function()
		for k, v in pairs(ents.FindByClass("gmod_sent_vehicle_fphysics_base")) do
			if v:GetModel() == "models/jmcars/chevy/montecarlo/edwulfsmc.mdl" then
				local rpm = (v:GetRPM() / v:GetLimitRPM())*(240)
				
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
list.Set( "simfphys_vehicles", "jm_montecarlo_simf", V )


