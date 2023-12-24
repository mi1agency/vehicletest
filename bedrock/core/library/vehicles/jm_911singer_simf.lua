local light_table = {
	ModernLights = true,
	L_HeadLampPos = Vector(-34.41,92.33,53.4),
	L_HeadLampAng = Angle(180,-90,0),

	R_HeadLampPos = Vector(34.41,92.33,53.4),
	R_HeadLampAng = Angle(180,-90,0),

	L_RearLampPos = Vector(-26.74,-114.85,44.32),
	L_RearLampAng = Angle(0,-90,0),

	R_RearLampPos = Vector(26.74,-114.85,44.32),
	R_RearLampAng = Angle(0,-90,0),
	
	Headlight_sprites = { 
		Vector(-34.41,92.33,53.4),
		Vector(34.41,92.33,53.4),
	},
	Headlamp_sprites = { 
		{pos =Vector(34.41,92.33,53.4),size = 40},
		{pos =Vector(-34.41,92.33,53.4),size = 40},
	},
	Rearlight_sprites = {
		{pos = Vector(26.74,-114.85,44.32),size = 40},
		{pos = Vector(31.92,-112.85,44.32),size = 40},
		
		{pos = Vector(-26.74,-114.85,44.32),size = 40},
		{pos = Vector(-31.92,-112.85,44.32),size = 40},
	},
	Brakelight_sprites = { 
		{pos = Vector(26.74,-114.85,44.32),size = 30},
		{pos = Vector(31.92,-112.85,44.32),size = 30},
		
		{pos = Vector(-26.74,-114.85,44.32),size = 30},
		{pos = Vector(-31.92,-112.85,44.32),size = 30},
	},
	Turnsignal_sprites = {
		Left = {
			{pos =Vector(-26.74,-114.85,44.32),size = 40,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(-26.74,-114.85,44.32),size = 20,color = Color( 255, 200, 0,  200)},
			
			{pos =Vector(-31.92,-112.85,44.32),size = 40,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(-31.92,-112.85,44.32),size = 20,color = Color( 255, 200, 0,  200)},
			
			{pos =Vector(-37.73,99.38,42.4),size = 30,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(-37.73,99.38,42.4),size = 20,color = Color( 255, 200, 0,  200)},
		},
		Right = {
			{pos =Vector(26.74,-114.85,44.32),size = 40,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(26.74,-114.85,44.32),size = 20,color = Color( 255, 200, 0,  200)},
			
			{pos =Vector(31.92,-112.85,44.32),size = 40,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(31.92,-112.85,44.32),size = 20,color = Color( 255, 200, 0,  200)},
			
			{pos =Vector(37.73,99.38,42.4),size = 30,material = "sprites/light_ignorez",color = Color( 255, 200, 0,  200)},
			{pos =Vector(37.73,99.38,42.4),size = 20,color = Color( 255, 200, 0,  200)},
		},
	},
		Reverselight_sprites = {
		{pos = Vector(0,-115.77,31.82),size = 40},
	},
}
list.Set( "simfphys_lights", "jm_porsche_911_singer", light_table)

local V = {
	Name = "1990 Porsche 911 Reimagined by Singer DLS",
	Model = "models/jmcars/porsche/911singer/singer.mdl",
	Category = "JM Simfphys Cars",
	
	SpawnOffset = Vector(0,0,2),
		

		
	Members = {
		Mass = 1200,
		
		SpeedoMax = -1,
		
		LightsTable = "jm_porsche_911_singer",
		
		FrontWheelRadius = 18.5,
		RearWheelRadius = 18.5,
		
		
		CustomMassCenter = Vector(0,0,-1),
		SeatOffset = Vector(0,0,-2),
		SeatPitch = 0,
		
		ExhaustPositions = {
		{
		pos = Vector(-21.8, -122.23, 31.19),
		ang = Angle(90, -90, 0), 
		},
	    {
		pos = Vector(21.8, -122.23, 31.19),
	    ang = Angle(90, -90, 0),
		},
},

		SpeedoMax = -1,
		
		PassengerSeats = {
			{
				pos = Vector(16.8782,-10.1031,36.1694),
				ang = Angle(0,0,14) -- Vector(ширина, длина, высота),
			},
		},
		Turbocharged = false,
		
		Supercharged = false,
		
		FuelTankSize = 55,		
		FuelType = FUELTYPE_PETROL,

		RPMGaugeMax = 9000,
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
		
		MaxGrip = 42,
		Efficiency = 1.337,
		GripOffset = 0,
		BrakePower = 40,
		
		IdleRPM = 800,
		LimitRPM = 10000,
		
		PeakTorque = 120,
		PowerbandStart = 800,
		PowerbandEnd = 9000,
		
		FuelFillPos = Vector(41.1463,-82.9753,45.6954),
		
		

		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "vehicles/jmcars/singer911/idle.wav",
		
		snd_low = "vehicles/jmcars/singer911/fourth_cruise.wav",
		snd_low_revdown = "vehicles/jmcars/singer911/gaz_off.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "vehicles/jmcars/singer911/first.wav",
		snd_mid_gearup = "vehicles/jmcars/singer911/third.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "vehicles/jmcars/singer911/idle.wav",
		
		Sound_Mid = "vehicles/jmcars/singer911/second.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "vehicles/jmcars/singer911/first.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.190,
		Gears = {-0.2,0,0.18,0.27,0.36,0.49,0.59,0.63},
	}
}
	hook.Add("Think", "Simfphys_Porsche_911_Singer_DLS_Dash", function()
		for k, v in pairs(ents.FindByClass("gmod_sent_vehicle_fphysics_base")) do
			if v:GetModel() == "models/jmcars/porsche/911singer/singer.mdl" then
				local rpm = (v:GetRPM() / v:GetLimitRPM())*(215)
				
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
list.Set( "simfphys_vehicles", "jm_porsche_911_singer", V )
