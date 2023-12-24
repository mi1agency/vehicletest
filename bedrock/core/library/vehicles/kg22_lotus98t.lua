local Category = "Kirbyguy Simfphys Vehicles"

local V = {
			Name = "Lotus 98T", 
			Class = "prop_vehicle_jeep",
			Category = "Kirbyguy",
			Author = "Kirbyguy",
			Information = ":)",
			Model = "models/kg22/lotus98t.mdl",
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/kg22/lotus98t.txt"
							}
			}
list.Set("Vehicles", "lotus98t", V)

local S = {
	Name = "Lotus 98T",
	Model = "models/kg22/lotus98t.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,

	Members = {
		Mass = 1000,
		
		FrontWheelRadius = 14.4,
		RearWheelRadius = 14.4,
		
		CustomMassCenter = Vector(0,-3,-8),
		
		SeatOffset = Vector(-3,0,-2),
		SeatPitch = -5,
		
		RPMGaugePP = "tachometer",  -- pose parameter name for the RPM gauge. poseparameter 0 should be 0 RPM and poseparameter 1 should be the RPM defined in RPMGaugeMax
		RPMGaugeMax = 13000,
		
		Backfire = true,
		ExhaustPositions = {
			{
				pos = Vector(9.5,-68,4),
				ang = Angle(90,-90,0),
			},
			{
				pos = Vector(-9.5,-68,4),
				ang = Angle(90,-90,0),
			},
			{
				pos = Vector(16,-68,4),
				ang = Angle(90,-90,0),
			},
			{
				pos = Vector(-16,-68,4),
				ang = Angle(90,-90,0),
			},
		},
		
		StrengthenSuspension = true,
		
		FuelFillPos = Vector(0,-14,35),   -- fuel filling position
		FuelType = FUELTYPE_PETROL,			-- fuel type (will be used in the future)
		FuelTankSize = 195,					-- fuel tank size in liters
		
		FrontHeight = 2.75,
		FrontConstant = 92000,
		FrontDamping = 800,
		FrontRelativeDamping = 1700,
		
		RearHeight = 4,
		RearConstant = 90000,
		RearDamping =900,
		RearRelativeDamping = 1800,
		
		FastSteeringAngle = 13,
		SteeringFadeFastSpeed = 800,
		
		TurnSpeed = 3,
		
		MaxGrip = 54,
		Efficiency = 1.345,
		GripOffset = -6,
		BrakePower = 32,
		
		IdleRPM = 3000,
		LimitRPM = 13000,
		Revlimiter = true,
		PeakTorque = 200,
		PowerbandStart = 8000,
		PowerbandEnd = 12500,
		Turbocharged = true,
		snd_blowoff = "vehicles/kg22/98t/dump.wav",  -- replace turbo blowoff sound
		snd_spool = "vehicles/kg22/98t/TURBO_WHISTLE_EXT.wav",  -- replace the turbo spool sound
		Supercharged = false,
		
		snd_backfire = "vehicles/kg22/98t/bfire.wav",
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "vehicles/kg22/98t/V6_Turbo_idle.wav",
		
		snd_low = "vehicles/kg22/98t/V6_Turbo_ex_onlow.wav",
		snd_low_revdown = "vehicles/kg22/98t/V6_Turbo_ex_offlow.wav",
		snd_low_pitch = 0.79,
		
		snd_mid = "vehicles/kg22/98t/V6_Turbo_ex_onmid.wav",
		snd_mid_geardown = "vehicles/kg22/98t/V6_Turbo_ex_offmid.wav",
		snd_mid_pitch = 0.79,
		
		Sound_Idle = "",
		Sound_IdlePitch = 0.58,
		
		Sound_Mid = "",
		Sound_MidPitch = 0.32,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,		-- at wich percentage of limitrpm the sound fades out
		Sound_MidFadeOutRate = 0.476,                    --how fast it fades out   0 = instant       1 = never
		
		Sound_High = "",
		Sound_HighPitch = 0.32,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",		-- mutes the default throttle sound
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		DifferentialGear = 0.175,
		Gears = {-0.25,0,0.3,0.45,0.584,0.719,0.86,1}
	}
}
if (file.Exists( "models/kg22/lotus98t.mdl", "GAME" )) then
	list.Set( "simfphys_vehicles", "sim_fphys_kg22_98t", S )
end
