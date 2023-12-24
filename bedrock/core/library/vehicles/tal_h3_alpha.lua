local V = {
			Name = "Hummer H3 Alpha", 
			Class = "prop_vehicle_jeep",
			Category = "Talon's Vehicles",
			Author = "Talon733, Dalax",
			Information = "A drivable Hummer H2 BY Talon733",
			Model = "models/talonvehicles/tal_hummer_h3.mdl",
			

			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(30, 10, 40), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true},
						{Pos = Vector(30, -29, 40), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
						{Pos = Vector(-30, -29, 40), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false}
						},
			VC_Horn = {Sound = "vehicles/vc_horn_heavy.wav", Pitch = 110, Looping = false}, //Horn sound the car will use.
						
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/tal_h3_v8.txt"
							}
			}
list.Set("Vehicles", "talh3alpha", V)