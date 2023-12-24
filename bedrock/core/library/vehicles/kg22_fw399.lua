local V = {
			Name = "1999 Ferrari F399", 
			Class = "prop_vehicle_jeep",
			Category = "Kirbyguy",
			Author = "Kirbyguy",
			Information = ":)",
			Model = "models/kg22/f399.mdl",
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/kg22/f399.txt"
							}
			}
list.Set("Vehicles", "f399", V)

sound.Add( 
{
    name = "v10_idle",
    channel = CHAN_STATIC,
    volume = 0.7,
    level = 120,
    sound = "^vehicles/kg22/f1v10/idle.wav"
} )

sound.Add( 
{
    name = "v10_startup",
    channel = CHAN_STATIC,
    volume = 0.7,
    level = 120,
    sound = "^vehicles/kg22/f1v10/start2b.wav"
} )

sound.Add( 
{
    name = "v10_firstgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
    pitchstart = 100,
	pitchend = 100,
    sound = "^vehicles/kg22/f1v10/first.wav"
} )

sound.Add( 
{
    name = "v10_secondgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
    pitchstart = 100,
    pitchend = 100,
    sound = "^vehicles/kg22/f1v10/second.wav"
} )

sound.Add( 
{
    name = "v10_thirdgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
    pitchstart = 100,
    pitchend = 100,
    sound = "^vehicles/kg22/f1v10/third.wav"
} )


sound.Add( 
{
    name = "v10_fourthgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
    pitchstart = 100,
    pitchend = 100,
    sound = "^vehicles/kg22/f1v10/fourth_cruise.wav"
} )

sound.Add( 
{
    name = "v10_throttle_off",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
    pitchstart = 100,
    pitchend = 100,
    sound = "^vehicles/kg22/f1v10/throttle_off.wav"
} )

sound.Add( 
{
    name = "v10_throttle_off2",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
    pitchstart = 100,
    pitchend = 100,
    sound = "^vehicles/kg22/f1v10/throttle_off2.wav"
} )
