local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2007 Ford Crown Victoria",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Criterion, Ubisoft",
				Information = "vroom vroom",
				Model =	"models/sentry/07crownvic.mdl",



				//Vehicle Controller
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.
						{Pos = Vector(0,-70,51.1), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.2, DynLight = true, BrakeColor ="255 10 10"},
						{Pos = Vector(2.5,-70,51.1), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.2, DynLight = true, BrakeColor ="255 10 10"},
						{Pos = Vector(-2.5,-70,51.1), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.2, DynLight = true, BrakeColor ="255 10 10"},
						{Pos = Vector(34,-109,39), Mat = "sprites/glow1.vmt", Alpha = 250, Size = 0.8, DynLight = true, NormalColor ="200 10 10", BrakeColor ="255 0 0", BlinkersColor ="255 15 0"},
						{Pos = Vector(-34,-109,39), Mat = "sprites/glow1.vmt", Alpha = 250, Size = 0.8, DynLight = true, NormalColor ="200 10 10",BrakeColor ="255 0 0", BlinkersColor ="255 15 0"},


						{Pos = Vector(11,-115,37), Mat = "sprites/glow1.vmt", Alpha = 250, Size = 0.6, DynLight = true, ReverseColor ="225 225 255"},
						{Pos = Vector(-11,-115,37), Mat = "sprites/glow1.vmt", Alpha = 250, Size = 0.6, DynLight = true, ReverseColor ="225 225 255"},

						{Pos = Vector(28,115,32), Mat = "sprites/glow1.vmt", Alpha = 255, Size = 0.4, DynLight = true, NormalColor ="225 225 255"},
						{Pos = Vector(-28,115,32), Mat = "sprites/glow1.vmt", Alpha = 255, Size = 0.4, DynLight = true, NormalColor ="225 225 255"},
						{Pos = Vector(35,112,32), Mat = "sprites/glow1.vmt", Alpha = 255, Size = 0.4, DynLight = true, NormalColor ="225 225 255"},
						{Pos = Vector(-35,112,32), Mat = "sprites/glow1.vmt", Alpha = 255, Size = 0.4, DynLight = true, NormalColor ="225 225 255"},

						{Pos = Vector(22.25,115,32), Mat = "sprites/glow1.vmt", Alpha = 255, Size = 0.4, DynLight = true, BlinkersColor ="255 125 0"},
						{Pos = Vector(-22.25,115,32), Mat = "sprites/glow1.vmt", Alpha = 255, Size = 0.4, DynLight = true, BlinkersColor ="255 125 0"},

						{Pos = Vector(40,106.5,32), Mat = "sprites/glow1.vmt", Alpha = 255, Size = 0.5, DynLight = true, BlinkersColor ="255 125 0"},
						{Pos = Vector(-40,106.5,32), Mat = "sprites/glow1.vmt", Alpha = 255, Size = 0.5, DynLight = true, BlinkersColor ="255 125 0"},


						{Pos = Vector(28,115,32), Size = 0.1, GlowSize = 0.3, HeadLightAngle = Angle(0, 90, 0)},
						{Pos = Vector(-28,115,32), Size = 0.1, GlowSize = 0.3, HeadLightAngle = Angle(0, 90, 0)}
						},
VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(18,5,13), Ang = Angle(0, 0, 15), EnterRange = 180, ExitAng = Angle(0, -90, 0), ExitPos = Vector(68,5,13), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true},
							{Pos = Vector(18,-34,15), Ang = Angle(0, 0, 15), EnterRange = 180, ExitAng = Angle(0, -90, 0), ExitPos = Vector(68,-34,15), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true},
							{Pos = Vector(0,-34,15), Ang = Angle(0, 0, 15), EnterRange = 180, ExitAng = Angle(0, -90, 0), ExitPos = Vector(68,-14,15), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true},
							{Pos = Vector(-18,-34,15), Ang = Angle(0, 0, 15), EnterRange = 180, ExitAng = Angle(0, -90, 0), ExitPos = Vector(-68,-34,15), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true},
							},
VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 120, Looping = false}, //Horn sound the car will use.
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
						{Pos = Vector(33.6,-110,13.7), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.



						{Pos = Vector(-33.6,-110,13.7), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.
						},
			VC_Exhaust_Dissipate = true, //Remove the exhaust effect when car reaches certain velocity.
			//
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/07crownvic.txt"
					    }
}
list.Set( "Vehicles", "07sgmcrownvic", V )

