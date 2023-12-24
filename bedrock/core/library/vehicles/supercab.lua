local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2008 Saleen S331 Supercab",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10, TheDanishMaster",
				Information = "vroom vroom",
				Model =	"models/sentry/supercab.mdl",

				//Vehicle Controller
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.


						{Pos = Vector(-40,-128,46.75), Mat = "sentry/sprites/light2.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(40,-128,46.75), Mat = "sentry/sprites/light2.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(-40,-128,46.75), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(40,-128,46.75), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(-40,-128,46.75), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(40,-128,46.75), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(-40,-128,46.75), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(40,-128,46.75), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(-40,-128,46.75), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(40,-128,46.75), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor ="255 255 255"},







						{Pos = Vector(-4.5,-30,84.75), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.1, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(4.5,-30,84.75), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.1, DynLight = true, ReverseColor ="255 255 255"},
						{Pos = Vector(0,-30,84.75), Mat = "sentry/sprites/light2.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0"},





						{Pos = Vector(-40,-128,51.35), Mat = "sentry/sprites/light2.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(40,-128,51.35), Mat = "sentry/sprites/light2.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(-40,-128,51.35), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(40,-128,51.35), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(-40,-128,51.35), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(40,-128,51.35), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(-40,-128,51.35), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(40,-128,51.35), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(-40,-128,51.35), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(40,-128,51.35), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},

						{Pos = Vector(-40,-128,42.85), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(40,-128,42.85), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(-40,-128,42.85), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(40,-128,42.85), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(-40,-128,42.85), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(40,-128,42.85), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(-40,-128,42.85), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},
						{Pos = Vector(40,-128,42.85), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.2, DynLight = true, BrakeColor ="255 0 0",BlinkersColor="255 0 0",NormalColor="255 0 0"},

						{Pos = Vector(-34.7,118,45), Mat = "sentry/sprites/light.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(34.7,118,45), Mat = "sentry/sprites/light.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(-34.7,118,45), Mat = "sentry/sprites/light2.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(34.7,118,45), Mat = "sentry/sprites/light2.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(-34.7,118,45), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(34.7,118,45), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(-34.7,118,45), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(34.7,118,45), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(-34.7,118,45), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(34.7,118,45), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(-34.7,118,45), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(34.7,118,45), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.3, DynLight = true, NormalColor ="255 255 255"},

						{Pos = Vector(-27.5,123,43.3), Mat = "sentry/sprites/light.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(27.5,123,43.3), Mat = "sentry/sprites/light.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(-27.5,123,43.3), Mat = "sentry/sprites/light2.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(27.5,123,43.3), Mat = "sentry/sprites/light2.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(-27.5,123,43.3), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(27.5,123,43.3), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(-27.5,123,43.3), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(27.5,123,43.3), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(-27.5,123,43.3), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(27.5,123,43.3), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(-27.5,123,43.3), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(27.5,123,43.3), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},

						{Pos = Vector(-40.5,115.5,45), Mat = "sentry/sprites/light2.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(40.5,115.5,45), Mat = "sentry/sprites/light2.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(-40.5,115.5,45), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(40.5,115.5,45), Mat = "sentry/sprites/light3.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},

						{Pos = Vector(-40.5,115.5,45), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(40.5,115.5,45), Mat = "sentry/sprites/light4.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(-40.5,115.5,45), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(40.5,115.5,45), Mat = "sentry/sprites/light5.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(-40.5,115.5,45), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(40.5,115.5,45), Mat = "sentry/sprites/light6.vmt", Alpha = 210, Size = 0.2, DynLight = true, BlinkersColor ="255 155 0"},


						{Pos = Vector(-51.9,44,57.3), Mat = "sentry/sprites/light.vmt", Alpha = 210, Size = 0.05, DynLight = true, BlinkersColor ="255 155 0"},
						{Pos = Vector(51.9,44,57.32), Mat = "sentry/sprites/light.vmt", Alpha = 210, Size = 0.05, DynLight = true, BlinkersColor ="255 155 0"},







						{Pos = Vector(34.7,118,45), Size = 0.1, GlowSize = 0.2, HeadLightAngle = Angle(0, 90, 0)},
						{Pos = Vector(-34.7,118,45), Size = 0.1, GlowSize = 0.2, HeadLightAngle = Angle(0, 90, 0)},
					
						{Pos = Vector(28.5, 96.5, 29.4), Size = 0.1, GlowSize = 0.3, HeadLightAngle = Angle(0, 90, 0)},
						{Pos = Vector(-28.5, 96.5, 29.4), Size = 0.1, GlowSize = 0.3, HeadLightAngle = Angle(0, 90, 0)}
						},
VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.









							{Pos = Vector(21,22,30), Ang = Angle(0, 0, 5), EnterRange = 180, ExitAng = Angle(0, -90, 0), ExitPos = Vector(66.6, 22, 12), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true},
							{Pos = Vector(21,-14,30), Ang = Angle(0, 0, 5), EnterRange = 180, ExitAng = Angle(0, -90, 0), ExitPos = Vector(66.6, -14, 12), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true},
							{Pos = Vector(-21,-14,30), Ang = Angle(0, 0, 5), EnterRange = 180, ExitAng = Angle(0, -90, 0), ExitPos = Vector(-66.6, -14, 12), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true},
							{Pos = Vector(0,-14,30), Ang = Angle(0, 0, 5), EnterRange = 180, ExitAng = Angle(0, -90, 0), ExitPos = Vector(-66.6, 4, 12), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true},










							},
VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 120, Looping = false}, //Horn sound the car will use.

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/supercab.txt"
					    }
}

list.Set( "Vehicles", "supercab", V )
