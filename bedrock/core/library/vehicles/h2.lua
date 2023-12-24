local V = {
			Name = "Hummer H2", 
			Class = "prop_vehicle_jeep",
			Category = "Talon's Vehicles",
			Author = "Talon733, Dalax",
			Information = "A drivable Hummer H2 BY Talon733",
			Model = "models/amgeneral/hummerh2update.mdl",
			
						VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.
						{Pos = Vector(-38.412, -95.211, 47.71), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.4, DynLight = true, ReverseColor = "255 255 255"},
						{Pos = Vector(38.412, -95.211, 47.71), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.4, DynLight = true, ReverseColor = "255 255 255"},
						
						{Pos = Vector(38.412, -95.211, 58.819), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.7, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-38.412, -95.211, 58.819), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.7, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},



						{Pos = Vector(-22, 88.7, 41.2), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 95, 0)},
						{Pos = Vector(22, 88.7, 41.2), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 85, 0)}
						},

			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(30, 10, 40), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true},
						{Pos = Vector(30, -29, 40), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
						{Pos = Vector(-30, -29, 40), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false}
						},
			VC_Horn = {Sound = "vehicles/vc_horn_heavy.wav", Pitch = 110, Looping = false}, //Horn sound the car will use.
						
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/hummerh2stock.txt"
							}
			}
list.Set("Vehicles", "h2talstock", V)