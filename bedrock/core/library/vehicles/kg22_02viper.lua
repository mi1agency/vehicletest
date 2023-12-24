local V = {
			Name = "2002 Dodge Viper GTS", 
			Class = "prop_vehicle_jeep",
			Category = "Kirbyguy",
			Author = "Kirbyguy",
			Information = "Raw American power.",
			Model = "models/kg22/96viper_car.mdl",
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/kg22/96viper_car.txt"
							}
			}
list.Set("Vehicles", "02viper", V)
sound.Add( 
{
    name = "rt10_idle",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "vehicles/kg22/srt10/idle.wav"
} )

sound.Add( 
{
    name = "rt10_firstgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 180,
    pitchstart = 100,
	pitchend = 100,
    sound = "^vehicles/kg22/srt10/first.wav"
} )

sound.Add( 
{
    name = "rt10_secondgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 180,
    pitchstart = 100,
    pitchend = 100,
    sound = "^vehicles/kg22/srt10/second.wav"
} )

sound.Add( 
{
    name = "rt10_thirdgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 180,
    pitchstart = 85,
    pitchend = 100,
    sound = "^vehicles/kg22/srt10/second.wav"
} )


sound.Add( 
{
    name = "rt10_fourthgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 180,
    pitchstart = 100,
    pitchend = 100,
    sound = "^vehicles/kg22/srt10/fourth_cruise.wav"
} )

sound.Add( 
{
    name = "rt10_throttle_off",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 180,
    pitchstart = 100,
    pitchend = 100,
    sound = "^vehicles/kg22/srt10/throttle_off.wav"
} )

sound.Add( 
{
    name = "kg_skid_lf",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    pitchstart = 100,
    pitchend = 100,
    sound = "vehicles/kg22/impacts/skid_lf.wav"
} )

sound.Add( 
{
    name = "kg_skid_nf",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    pitchstart = 100,
    pitchend = 100,
    sound = "vehicles/kg22/impacts/skid_nf.wav"
} )

sound.Add( 
{
    name = "kg_skid_hf",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    pitchstart = 100,
    pitchend = 100,
    sound = "vehicles/kg22/impacts/skid_hf.wav"
} )
