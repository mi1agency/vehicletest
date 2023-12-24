local V = {
			Name = "Lotus Evora", 
			Class = "prop_vehicle_jeep",
			Category = "Sped Cars",
			Author = "Sped_, Turn 10",
			Information = "A drivable Lotus Evora made by Turn 10 studio's and ported by Sped_",
			Model = "models/spedcars/evora.mdl",
			VC_Lights = {
				{Pos = Vector(-22.5, -99.5, 40.8), Mat = "sprites/glow1.vmt", Alpha = 110, Size = 0.6, DynLight = true, ReverseColor = "255 255 255"},
				{Pos = Vector(22.5, -99.5, 40.8), Mat = "sprites/glow1.vmt", Alpha = 110, Size = 0.6, DynLight = true, ReverseColor = "255 255 255"},
				{Pos = Vector(-31.9, -97.5, 41.7), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.3, DynLight = true, BlinkersColor = "255 137 0"},
				{Pos = Vector(31.9, -97.5, 41.7), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.3, DynLight = true, BlinkersColor = "255 137 0"},

				{Pos = Vector(-31.9, -97.5, 41.7), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.9, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
				{Pos = Vector(31.9, -97.5, 41.7), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.9, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},

				{Pos = Vector(-6, -104.5, 48.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BrakeColor = "255 0 0"},
				{Pos = Vector(-4, -104.5, 48.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BrakeColor = "255 0 0"},
				{Pos = Vector(-2, -104.5, 48.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BrakeColor = "255 0 0"},
				{Pos = Vector(0, -104.5, 48.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BrakeColor = "255 0 0"},
				{Pos = Vector(2, -104.5, 48.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BrakeColor = "255 0 0"},
				{Pos = Vector(4, -104.5, 48.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BrakeColor = "255 0 0"},
				{Pos = Vector(6, -104.5, 48.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BrakeColor = "255 0 0"},

				{Pos = Vector(-30.7, 85, 33.1), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255", HeadLightAngle = Angle(15, 95, 90)},
				{Pos = Vector(30.7, 85, 33.1), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255", HeadLightAngle = Angle(15, 85, 90)},
				{Pos = Vector(-35.6, 82, 34.1), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},
				{Pos = Vector(35.6, 82, 34.1), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},

				{Pos = Vector(21, 98, 29), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.3, DynLight = true, BlinkersColor = "255 137 0"},
				{Pos = Vector(23, 97.5, 29), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.3, DynLight = true, BlinkersColor = "255 137 0"},
				{Pos = Vector(25, 97, 29), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.3, DynLight = true, BlinkersColor = "255 137 0"},
				{Pos = Vector(27, 96.5, 29), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.3, DynLight = true, BlinkersColor = "255 137 0"},
				{Pos = Vector(-21, 98, 29), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.3, DynLight = true, BlinkersColor = "255 137 0"},
				{Pos = Vector(-23, 97.5, 29), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.3, DynLight = true, BlinkersColor = "255 137 0"},
				{Pos = Vector(-25, 97, 29), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.3, DynLight = true, BlinkersColor = "255 137 0"},
				{Pos = Vector(-27, 96.5, 29), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.3, DynLight = true, BlinkersColor = "255 137 0"},
				},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
				{Pos = Vector(17.1, -12.9, 15.5), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true}
				},
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
				{Pos = Vector(2.5, -100, 15), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"},
				{Pos = Vector(-2.5, -100, 15), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}
				},
			VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = false}, //Horn sound the car will use.
			KeyValues = {
				vehiclescript	=	"scripts/vehicles/spedcars/evora.txt"
			}
		}
list.Set("Vehicles", "evorasped", V)
