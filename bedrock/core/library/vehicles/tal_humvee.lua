local V = {
			Name = "Multi-Variant HMMWV", 
			Class = "prop_vehicle_jeep",
			Category = "Talon's Vehicles",
			Author = "Talon733, Dalax",
			Information = "A drivable Humvee BY Talon733",
			Model = "models/talonvehicles/tal_humvee.mdl",
						
						VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.

						{Pos = Vector(38.859, -105.471, 48.3), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.7, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-38.859, -105.471, 48.3), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.7, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						
						{Pos = Vector(-48.037, 100.018, 47.027), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.6, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(48.037, 100.018, 47.027), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.6, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(-46.035, -103.877, 44.095), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.6, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(46.035, -103.877, 44.095), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.6, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(-48.662, -101.4, 44.4), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.5, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(48.662, -101.4, 44.4), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.5, DynLight = true, BlinkersColor = "255 130 0"},
						
						{Pos = Vector(48.662, -96.565, 39.726), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.35, DynLight = true, NormalColor = "255 130 0"},
						{Pos = Vector(-48.662, -96.565, 39.726), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.5, DynLight = true, NormalColor = "255 130 0"},
						{Pos = Vector(-41.802, 103.035, 49.918), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.35, DynLight = true, NormalColor = "255 130 0"},
						{Pos = Vector(42.227, 103.035, 49.918), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.5, DynLight = true, NormalColor = "255 130 0"},
						{Pos = Vector(-48.079, 95.638, 49.867), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.5, DynLight = true, NormalColor = "255 130 0"},
						{Pos = Vector(48.079, 95.638, 49.867), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.5, DynLight = true, NormalColor = "255 130 0"},

						
						
						
						{Pos = Vector(-22.36, 104.747, 45.56), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 95, 0)},
						{Pos = Vector(22.36, 104.747, 45.56), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 85, 0)}
						},

			

			KeyValues = {
							vehiclescript	=	"scripts/vehicles/talhumvee_2.txt"
							}
			}
list.Set("Vehicles", "humveetal733c3", V)