local Category = "SGM Trucks"

local V = {
				// Required information
				Name =	"Peterbilt 379",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/p379.mdl",
				//Vehicle Controller
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.
						



						{Pos = Vector(13.4,-196,26.5), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, BrakeColor ="255 0 0",  NormalColor ="255 0 0" },
						{Pos = Vector(-13,-196,26.5), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, BrakeColor ="255 0 0",  NormalColor ="255 0 0" },


						{Pos = Vector(46,139,47.4), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(-46,139,47.4), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },

						{Pos = Vector(56.8,52.5,83.7), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(-56.8,52.5,83.7), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },



						{Pos = Vector(52.8,-52,47.2), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(52.8,-24,47.2), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(52.8,4.35,47.2), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(35.8,32,47.2), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(35.8,57,47.2), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },

						{Pos = Vector(-52.8,-52,47.2), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(-52.8,-24,47.2), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(-52.8,4.35,47.2), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(-35.8,32,47.2), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },
						{Pos = Vector(-35.8,57,47.2), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.2, DynLight = true, NormalColor ="255 150 10", BlinkersColor= "255 150 10" },



						{Pos = Vector(15.4,-196,35.5), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, NormalColor ="255 0 0", BlinkersColor= "255 0 0" },
						{Pos = Vector(-15.0,-196,35.5), Mat = "sprites/glow01.vmt", Alpha = 210, Size = 0.4, DynLight = true, NormalColor ="255 0 0", BlinkersColor= "255 0 0" },








						{Pos = Vector(32.5,139,47.4), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.4, DynLight = true,   NormalColor ="235 235 255" },
						{Pos = Vector(40.5,139,47.4), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.4, DynLight = true,   NormalColor ="235 235 255" },
						{Pos = Vector(-32.5,139,47.4), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.4, DynLight = true,   NormalColor ="235 235 255" },
						{Pos = Vector(-40.5,139,47.4), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.4, DynLight = true,   NormalColor ="235 235 255" },


						{Pos = Vector(27.65,59.5,117.7), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.2, DynLight = true,   NormalColor ="255 150 10" },
						{Pos = Vector(-27.65,59.5,117.7), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.2, DynLight = true,   NormalColor ="255 150 10" },
						{Pos = Vector(8.75,62.5,117.7), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.2, DynLight = true,   NormalColor ="255 150 10" },
						{Pos = Vector(-8.75,62.5,117.7), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.2, DynLight = true,   NormalColor ="255 150 10" },
						{Pos = Vector(0,62.5,117.7), Mat = "sprites/glow01.vmt", Alpha = 240, Size = 0.2, DynLight = true,   NormalColor ="255 150 10" },












						{Pos = Vector(32.5, 139, 47.4), Size = 0.1, GlowSize = 0.3, HeadLightAngle = Angle(0, 90, 0)},
						{Pos = Vector(-32.5, 139, 47.4), Size = 0.1, GlowSize = 0.3, HeadLightAngle = Angle(0, 90, 0)}
						},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(23.17,39.43,59.42), Ang = Angle(0, 0, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), ExitPos = Vector(43.6, -0.7, 10), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true},
							},
			VC_Horn = {Sound = "vehicles/sgmcars/p379/horn.wav", Pitch = 100, Looping = true}, //Horn sound the car will use.
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.


						{Pos = Vector(44,19.5,175), Ang = Angle(0,0,0), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.

						{Pos = Vector(-43.6,19.5,175), Ang = Angle(0,0,0), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.
						},


			VC_Exhaust_Dissipate = true, //Remove the exhaust effect when car reaches certain velocity.
			//

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/p379.txt"
					    }
}

list.Set( "Vehicles", "p379", V )
