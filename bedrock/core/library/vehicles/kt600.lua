local Category = "SGM Trucks"

local V = {
				// Required information
				Name =	"Kenworth T600",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/kt600.mdl",
				//Vehicle Controller
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.
						


						{Pos = Vector(30.5,157,47), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.4, DynLight = true,   NormalColor ="235 235 255" },
						{Pos = Vector(-30.5,157,47), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.4, DynLight = true,   NormalColor ="235 235 255" },
						{Pos = Vector(37.0,157,47), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.4, DynLight = true,   NormalColor ="235 235 255" },
						{Pos = Vector(-37.0,157,47), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.4, DynLight = true,   NormalColor ="235 235 255" },

						{Pos = Vector(43.5,157,47), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(-43.5,157,47), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },

						{Pos = Vector(53.5,95.7,49.5), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(-53.5,95.7,49.5), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },


						{Pos = Vector(31,-222,20), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, BrakeColor ="255 0 0",  NormalColor ="255 0 0" },
						{Pos = Vector(-31,-222,20), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, BrakeColor ="255 0 0",  NormalColor ="255 0 0" },

						{Pos = Vector(47,-222,20), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, BrakeColor ="255 0 0",  NormalColor ="255 0 0", BlinkersColor = "255 0 0" },
						{Pos = Vector(-47,-222,20), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, BrakeColor ="255 0 0",  NormalColor ="255 0 0", BlinkersColor = "255 0 0" },


						{Pos = Vector(31,-222,29.75), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor = "255 255 255" },
						{Pos = Vector(-31,-222,29.75), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor = "255 255 255" },






						{Pos = Vector(30.5,157,47), Size = 0.1, GlowSize = 0.5, HeadLightAngle = Angle(0, 90, 0)},
						{Pos = Vector(-30.5,157,47), Size = 0.1, GlowSize = 0.5, HeadLightAngle = Angle(0, 90, 0)}
						},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.

{Pos = Vector(60.84,-16,-62.48), Ang = Angle(0, 0, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), ExitPos = Vector(90, -16, 10), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true},


							},
			VC_Horn = {Sound = "vehicles/sgmcars/kt600/horn.wav", Pitch = 100, Looping = true}, //Horn sound the car will use.
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.


						{Pos = Vector(45,-60,158), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.

						{Pos = Vector(-45,-60,158), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.
						},


			VC_Exhaust_Dissipate = true, //Remove the exhaust effect when car reaches certain velocity.
			//

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/kt600.txt"
					    }
}

list.Set( "Vehicles", "kt600", V )
