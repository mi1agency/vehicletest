local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1970 Chevrolet El Camino SS 454",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10, TheDanishMaster",
				Information = "It doesn't move. It moves the Earth.",
				Model =	"models/sentry/elcamino.mdl",
//Vehicle Controller
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.
						{Pos = Vector(25.5,-103,27.5), Mat = "sprites/glow1.vmt", Alpha = 210, Size = 0.4, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(-25.5,-103,27.5), Mat = "sprites/glow1.vmt", Alpha = 210, Size = 0.4, DynLight = true, ReverseColor = "255 255 255"},
						{Pos = Vector(15.5,-104,16), Mat = "sprites/glow1.vmt", Alpha = 210, Size = 0.4, DynLight = true, BlinkersColor ="255 0 0"},
						{Pos = Vector(-15.5,-104,16), Mat = "sprites/glow1.vmt", Alpha = 210, Size = 0.4, DynLight = true, BlinkersColor = "255 0 0"},
						{Pos = Vector(40, -103, 27.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, BlinkersColor ="255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-40, -103, 27.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, BlinkersColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(15.5,-104,16), Mat = "sprites/glow1.vmt", Alpha = 210, Size = 0.4, DynLight = true, BlinkersColor ="255 0 0"},
						{Pos = Vector(-15.5,-104,16), Mat = "sprites/glow1.vmt", Alpha = 210, Size = 0.4, DynLight = true, BlinkersColor = "255 0 0"},
						{Pos = Vector(36.5,110,15.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 255 0"},
						{Pos = Vector(-36.5,110,15.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 255 0"},
						{Pos = Vector(36.5,112,15.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 255 0"},
						{Pos = Vector(-36.5,112,15.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 255 0"},
						{Pos = Vector(36.5,114,15.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 255 0"},
						{Pos = Vector(-36.5,114,15.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 255 0"},
						{Pos = Vector(-37.5,113,17), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 255 0"},
						{Pos = Vector(37.5,113,17), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 255 0"},
						{Pos = Vector(37.5,115,17), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 0 0"},
						{Pos = Vector(-37.5,115,17), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 0 0"},
						{Pos = Vector(37.5,111,17), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 255 0"},
						{Pos = Vector(-37.5,111,17), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 255 0"},
						{Pos = Vector(-28.7,123,18), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, BlinkersColor = "255 255 0"},
						{Pos = Vector(28.7,123,18), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, BlinkersColor = "255 255 0"},

						{Pos = Vector(40, -103, 27.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor ="255 0 0"},
						{Pos = Vector(-40, -103, 27.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 0 0"},
						{Pos = Vector(25,122,29), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor ="255 255 225"},
						{Pos = Vector(-25,122,29), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},
						{Pos = Vector(33.8,122,29), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(-33.8,122,29), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},
						{Pos = Vector(25,122,29), Size = 1, GlowSize = 1, HeadLightAngle = Angle(0, 90, 0)},
						{Pos = Vector(-25,122,29), Size = 1, GlowSize = 1, HeadLightAngle = Angle(0, 90, 0)}
						},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(13.5, 25, 7), Ang = Angle(0, 0, 15), EnterRange = 120, ExitAng = Angle(0, -90, 0), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, -0.5), Hide = true, DoorSounds = true},
							},
			VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = false}, //Horn sound the car will use.
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
						{Pos = Vector(-35.5,-79.5,9), Ang = Angle(0,-120,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.
						{Pos = Vector(37.5,-79,9), Ang = Angle(0,130,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.
						},
			VC_Exhaust_Dissipate = true, //Remove the exhaust effect when car reaches certain velocity.
			//
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/elcamino.txt"
					    }
}

list.Set( "Vehicles", "elcamino", V )
