local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Lexus LF-A",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10, TheDanishMaster",
				Information = "vroom vroom",
				Model =	"models/sentry/lfa.mdl",

				//Vehicle Controller
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.






					
						{Pos = Vector(25.2,-115,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },
						{Pos = Vector(-25.2,-115,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },	

						{Pos = Vector(26.65,-114.5,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },
						{Pos = Vector(-26.65,-114.5,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  
NormalColor ="255 10 10" },	

						{Pos = Vector(28.2,-114,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },
						{Pos = Vector(-28.2,-114,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },	
						{Pos = Vector(29.8,-113,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },
						{Pos = Vector(-29.8,-113,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },	
						{Pos = Vector(31.4,-112.5,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },
						{Pos = Vector(-31.4,-112.5,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },	
						{Pos = Vector(33.15,-111.75,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },
						{Pos = Vector(-33.15,-111.75,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },	
						{Pos = Vector(34.7,-111,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },
						{Pos = Vector(-34.7,-111,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },	
						{Pos = Vector(36.25,-110.5,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },
						{Pos = Vector(-36.25,-110.5,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },	
						{Pos = Vector(37.75,-109.5,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },
						{Pos = Vector(-37.75,-109.5,42.5), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10",  NormalColor ="255 10 10" },	

						{Pos = Vector(1,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(0,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},
						{Pos = Vector(-1,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-2,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(2,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-3,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(3,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-4,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(4,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-5,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(5,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-6,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(6,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-7,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(7,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-8,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(8,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-9,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(9,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-10,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(10,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-11,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(11,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-12,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10" },	
						{Pos = Vector(12,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(-13,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	
						{Pos = Vector(13,-118,45.25), Mat = "sentry/sprites/light.vmt", Alpha = 255, Size = 0.05, DynLight = true, BrakeColor ="255 10 10"},	





						{Pos = Vector(35.9,97,30.30), Mat = "sentry/sprites/light.vmt", Alpha = 225, Size = 0.75, DynLight = true, NormalColor ="225 225 255"},	
						{Pos = Vector(-35.9,97,30.30), Mat = "sentry/sprites/light.vmt", Alpha = 225, Size = 0.75, DynLight = true, NormalColor ="225 225 255"},
						{Pos = Vector(35.9,97,30.30), Mat = "sentry/sprites/light2.vmt", Alpha = 225, Size = 0.35, DynLight = true, NormalColor ="225 225 255"},	
						{Pos = Vector(-35.9,97,30.30), Mat = "sentry/sprites/light2.vmt", Alpha = 225, Size = 0.35, DynLight = true, NormalColor ="225 225 255"},
						{Pos = Vector(35.9,97,30.30), Mat = "sentry/sprites/light3.vmt", Alpha = 225, Size = 0.35, DynLight = true, NormalColor ="225 225 255"},	
						{Pos = Vector(-35.9,97,30.30), Mat = "sentry/sprites/light3.vmt", Alpha = 225, Size = 0.35, DynLight = true, NormalColor ="225 225 255"},
						{Pos = Vector(35.9,97,30.30), Mat = "sentry/sprites/light4.vmt", Alpha = 225, Size = 0.35, DynLight = true, NormalColor ="225 225 255"},	
						{Pos = Vector(-35.9,97,30.30), Mat = "sentry/sprites/light4.vmt", Alpha = 225, Size = 0.35, DynLight = true, NormalColor ="225 225 255"},	
						{Pos = Vector(35.9,97,30.30), Mat = "sentry/sprites/light5.vmt", Alpha = 225, Size = 0.35, DynLight = true, NormalColor ="225 225 255"},	
						{Pos = Vector(-35.9,97,30.30), Mat = "sentry/sprites/light5.vmt", Alpha = 225, Size = 0.35, DynLight = true, NormalColor ="225 225 255"},	
						{Pos = Vector(35.9,97,30.30), Mat = "sentry/sprites/light6.vmt", Alpha = 225, Size = 0.35, DynLight = true, NormalColor ="225 225 255"},	
						{Pos = Vector(-35.9,97,30.30), Mat = "sentry/sprites/light6.vmt", Alpha = 225, Size = 0.35, DynLight = true, NormalColor ="225 225 255"},	








						{Pos = Vector(30.6,97,29.5), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.45, DynLight = true,  BlinkersColor ="255 175 0"},	
						{Pos = Vector(-30.6,97,29.5), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.45, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(27.8,102,29), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.35, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-27.8,102,29), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.35, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(25.4,105,28.4), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.25, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-25.4,105,28.4), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.25, DynLight = true, BlinkersColor ="255 175 0"},	

						{Pos = Vector(40.75,-105,41.25), Mat = "sentry/sprites/light5.vmt", Alpha = 255, Size = 0.15, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-40.75,-105,41.25), Mat = "sentry/sprites/light5.vmt", Alpha = 255, Size = 0.15, DynLight = true,BlinkersColor ="255 175 0"},	
						{Pos = Vector(47,95.5,24.75), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.15, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-47,95.5,24.75), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.15, DynLight = true, BlinkersColor ="255 175 0"},
						{Pos = Vector(30.6,97,29.5), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.45, DynLight = true,  BlinkersColor ="255 175 0"},	
						{Pos = Vector(-30.6,97,29.5), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.45, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(27.8,102,29), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.35, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-27.8,102,29), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.35, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(25.4,105,28.4), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.25, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-25.4,105,28.4), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.25, DynLight = true, BlinkersColor ="255 175 0"},	

						{Pos = Vector(40.75,-105,41.25), Mat = "sentry/sprites/light5.vmt", Alpha = 255, Size = 0.15, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-40.75,-105,41.25), Mat = "sentry/sprites/light5.vmt", Alpha = 255, Size = 0.15, DynLight = true,BlinkersColor ="255 175 0"},	
						{Pos = Vector(47,95.5,24.75), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.15, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-47,95.5,24.75), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.15, DynLight = true, BlinkersColor ="255 175 0"},
						{Pos = Vector(30.6,97,29.5), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.45, DynLight = true,  BlinkersColor ="255 175 0"},	
						{Pos = Vector(-30.6,97,29.5), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.45, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(27.8,102,29), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.35, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-27.8,102,29), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.35, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(25.4,105,28.4), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.25, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-25.4,105,28.4), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.25, DynLight = true, BlinkersColor ="255 175 0"},	

						{Pos = Vector(40.75,-105,41.25), Mat = "sentry/sprites/light5.vmt", Alpha = 255, Size = 0.15, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-40.75,-105,41.25), Mat = "sentry/sprites/light5.vmt", Alpha = 255, Size = 0.15, DynLight = true,BlinkersColor ="255 175 0"},	
						{Pos = Vector(47,95.5,24.75), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.15, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(-47,95.5,24.75), Mat = "sentry/sprites/light2.vmt", Alpha = 255, Size = 0.15, DynLight = true, BlinkersColor ="255 175 0"},	
						{Pos = Vector(25.75,-114.75,16.25), Mat = "sentry/sprites/light5.vmt", Alpha = 255, Size = 0.15, DynLight = true, ReverseColor ="255 255 255"},	
						{Pos = Vector(-25.75,-114.75,16.25), Mat = "sentry/sprites/light5.vmt", Alpha = 255, Size = 0.15, DynLight = true, ReverseColor ="255 255 255"},	







						{Pos = Vector(34.4, 90, 31.4), Size = 0.1, GlowSize = 0.3, HeadLightAngle = Angle(0, 90, 0)},
						{Pos = Vector(-34.4, 90, 31.4), Size = 0.1, GlowSize = 0.3, HeadLightAngle = Angle(0, 90, 0)}
						},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(21,-15,8), Ang = Angle(0, 0, 10), EnterRange = 80, ExitAng = Angle(0, -90, 0), ExitPos = Vector(66.6, -15, 10), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true},
							},
			VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 120, Looping = false}, //Horn sound the car will use.
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
						{Pos = Vector(0,-119.5,11.75), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.
						{Pos = Vector(3.75,-119.75,16.25), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.
						{Pos = Vector(-3.75,-119.75,16.25), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.
						},
			VC_Exhaust_Dissipate = true, //Remove the exhaust effect when car reaches certain velocity.
			//
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/lfa.txt"
					    }
}

list.Set( "Vehicles", "sgmlfa", V )
