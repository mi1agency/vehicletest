
sound.Add( 
{
    name = "rs4_idle",
    channel = CHAN_STATIC,
    volume = 0.7,
    level = 120,
	pitch = 100,
    sound = "^vehicles/kg22/rs4/idle.wav"
} )

sound.Add( 
{
    name = "rs4_startup",
    channel = CHAN_STATIC,
    volume = 0.7,
    level = 120,
	pitch = 100,
    sound = "^vehicles/kg22/rs4/start2b.wav"
} )

sound.Add( 
{
    name = "rs4_firstgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
	pitch = 100,
    sound = "^vehicles/kg22/rs4/first.wav"
} )

sound.Add( 
{
    name = "rs4_secondgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
	pitch = 100,
    sound = "^vehicles/kg22/rs4/second.wav"
} )

sound.Add( 
{
    name = "rs4_thirdgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
	pitch = 100,
    sound = "^vehicles/kg22/rs4/third.wav"
} )


sound.Add( 
{
    name = "rs4_fourthgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
	pitch = 100,
    sound = "^vehicles/kg22/rs4/fourth_cruise.wav"
} )

sound.Add( 
{
    name = "rs4_throttle_off",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
	pitch = 100,
    sound = "^vehicles/kg22/rs4/throttle_off.wav"
} )

sound.Add( 
{
    name = "rs4_throttle_off2",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
	pitch = 100,
    sound = "^vehicles/kg22/rs4/throttle_off2.wav"
} )

local Category = "Kirbyguy Simfphys Vehicles"

local V = {
			Name = "1992 Williams FW14", 
			Class = "prop_vehicle_jeep",
			Category = "Kirbyguy",
			Author = "Kirbyguy",
			Information = ":)",
			Model = "models/kg22/fw14.mdl",
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/kg22/fw14.txt"
							}
			}
list.Set("Vehicles", "fw14", V)

local V = {
	Name = "Williams FW14",
	Model = "models/kg22/fw14.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,

	Members = {
		Mass = 1000,
		
		FrontWheelRadius = 14.8,
		RearWheelRadius = 14.8,
		
		CustomMassCenter = Vector(0,-3,-7),
		
		SeatOffset = Vector(-2,0,-4),
		SeatPitch = -15,
		
		Backfire = true,
		ExhaustPositions = {
			{
				pos = Vector(6.767,-73,6.311),
				ang = Angle(90,-90,0),
			},
			{
				pos = Vector(-6.767,-73,6.311),
				ang = Angle(90,-90,0),
			},
		},
		
		StrengthenSuspension = true,
		
		FuelFillPos = Vector(11.095,13.376,21.189),   -- fuel filling position
		FuelType = FUELTYPE_PETROL,			-- fuel type (will be used in the future)
		FuelTankSize = 220,					-- fuel tank size in liters
		
		FrontHeight = 2.75,
		FrontConstant = 95000,
		FrontDamping = 800,
		FrontRelativeDamping = 1700,
		
		RearHeight = 4,
		RearConstant = 90800,
		RearDamping =900,
		RearRelativeDamping = 1800,
		
		FastSteeringAngle = 13,
		SteeringFadeFastSpeed = 800,
		
		TurnSpeed = 3,
		
		MaxGrip = 60,
		Efficiency = 1.36,
		GripOffset = -4.2,
		BrakePower = 35,
		
		IdleRPM = 3500,
		LimitRPM = 13000,
		Revlimiter = true,
		PeakTorque = 200,
		PowerbandStart = 9000,
		PowerbandEnd = 12500,
		Turbocharged = false,
		Supercharged = false,
		
--		snd_backfire = "vehicles/kg22/rs4",
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 0.7,
		snd_idle = "vehicles/kg22/rs4/ex_v10_idle_441.wav",
		
		snd_low = "vehicles/kg22/rs4/ex_v10_on_low_7104_441.wav",
		snd_low_revdown = "vehicles/kg22/rs4/ex_v10_off_mid.wav",
		snd_low_pitch = 0.58,
		
		snd_mid = "vehicles/kg22/rs4/ex_v10_on_mid_12924_441.wav",
		snd_mid_geardown = "vehicles/kg22/rs4/ex_v10_on_mid_12924_441.wav",
		snd_mid_pitch = 0.58,
		
		Sound_Idle = "vehicles/kg22/rs4/ex_v10_idle_441.wav",
		Sound_IdlePitch = 0.58,
		
		Sound_Mid = "vehicles/kg22/rs4/ex_v10_on_mid_12924_441.wav",
		Sound_MidPitch = 0.32,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,		-- at wich percentage of limitrpm the sound fades out
		Sound_MidFadeOutRate = 0.476,                    --how fast it fades out   0 = instant       1 = never
		
		Sound_High = "vehicles/kg22/rs4/ex_v10_on_high_19068_441.wav",
		Sound_HighPitch = 0.32,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",		-- mutes the default throttle sound
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		DifferentialGear = 0.15,
		Gears = {-0.25,0,0.3,0.45,0.584,0.719,0.86,1}
	}
}
if (file.Exists( "models/kg22/fw14.mdl", "GAME" )) then
	list.Set( "simfphys_vehicles", "sim_fphys_kg22_fw14", V )
end
