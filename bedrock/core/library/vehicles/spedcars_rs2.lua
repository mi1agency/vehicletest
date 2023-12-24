local V = {
			Name = "Audi RS2", 
			Class = "prop_vehicle_jeep",
			Category = "Sped Cars",
			Author = "Sped_, Turn 10",
			Information = "A drivable Audi RS2 made by Turn 10 studio's and ported by Sped_",
			Model = "models/spedcars/rs2.mdl",
			VC_Lights = {
				--Reverse
				{Pos = Vector(-17.7, -109.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 110, Size = 0.6, DynLight = true, ReverseColor = "255 255 255"},
				{Pos = Vector(17.7, -109.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 110, Size = 0.6, DynLight = true, ReverseColor = "255 255 255"},
				--Indicators
				{Pos = Vector(-33.9, -103.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.5, DynLight = true, BlinkersColor = "255 0 0"},
				{Pos = Vector(33.9, -103.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.5, DynLight = true, BlinkersColor = "255 0 0"},
				{Pos = Vector(-33.9, 103.9, 26.8), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.4, DynLight = true, BlinkersColor = "255 137 0"},
				{Pos = Vector(33.9, 103.9, 26.8), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.4, DynLight = true, BlinkersColor = "255 137 0"},
				--Rearlights
				{Pos = Vector(-30.5, -105.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.9, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
				{Pos = Vector(30.5, -105.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.9, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
				--Brakelights (nope)
				--Headlights
				{Pos = Vector(-22, 106, 35.6), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255", HeadLightAngle = Angle(15, 95, 90)},
				{Pos = Vector(22, 106, 35.6), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255", HeadLightAngle = Angle(15, 85, 90)},
				{Pos = Vector(-26, 110, 26.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},
				{Pos = Vector(26, 110, 26.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},
				{Pos = Vector(-27.5, 106, 35.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},
				{Pos = Vector(27.5, 106, 35.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},

				},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
				{Pos = Vector(17.1, -12.9, 15.5), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true}
				},
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
				{Pos = Vector(-23.5, -109, 14.4), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"},
				{Pos = Vector(-19.5, -110, 14.2), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}
				},
			VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = false}, //Horn sound the car will use.
			
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/spedcars/rs2.txt"
							}
			}

list.Set("Vehicles", "rs2sped", V)

local K = {
			Name = "Audi RS2 new", 
			Class = "prop_vehicle_jeep",
			Category = "Sped Cars",
			Author = "Sped_, Turn 10",
			Information = "A drivable Audi RS2 made by Turn 10 studio's and ported by Sped_",
			Model = "models/spedcars/rs2_new.mdl",
			VC_Lights = {
				--Reverse
				{Pos = Vector(-17.7, -109.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 110, Size = 0.6, DynLight = true, ReverseColor = "255 255 255"},
				{Pos = Vector(17.7, -109.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 110, Size = 0.6, DynLight = true, ReverseColor = "255 255 255"},
				--Indicators
				{Pos = Vector(-33.9, -103.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.5, DynLight = true, BlinkersColor = "255 0 0"},
				{Pos = Vector(33.9, -103.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.5, DynLight = true, BlinkersColor = "255 0 0"},
				{Pos = Vector(-33.9, 103.9, 26.8), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.4, DynLight = true, BlinkersColor = "255 137 0"},
				{Pos = Vector(33.9, 103.9, 26.8), Mat = "sprites/glow1.vmt", Alpha = 120, Size = 0.4, DynLight = true, BlinkersColor = "255 137 0"},
				--Rearlights
				{Pos = Vector(-30.5, -105.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.9, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
				{Pos = Vector(30.5, -105.5, 38.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.9, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
				--Brakelights (nope)
				--Headlights
				{Pos = Vector(-22, 106, 35.6), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255", HeadLightAngle = Angle(15, 95, 90)},
				{Pos = Vector(22, 106, 35.6), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255", HeadLightAngle = Angle(15, 85, 90)},
				{Pos = Vector(-26, 110, 26.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},
				{Pos = Vector(26, 110, 26.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},
				{Pos = Vector(-27.5, 106, 35.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},
				{Pos = Vector(27.5, 106, 35.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},

				},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
				{Pos = Vector(17.1, -12.9, 15.5), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true}
				},
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
				{Pos = Vector(-23.5, -109, 14.4), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"},
				{Pos = Vector(-19.5, -110, 14.2), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}
				},
			VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = false}, //Horn sound the car will use.
			
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/spedcars/rs2.txt"
							}
			}

list.Set("Vehicles", "rs2spednew", K)