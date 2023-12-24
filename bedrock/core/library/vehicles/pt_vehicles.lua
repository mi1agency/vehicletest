local Category = "PT cars"

local V = { 	
				Name = "Hummer H3", 
				Class = "prop_vehicle_jeep_old",
				Category = Category,

				Information = "Hummer H3 from Project Torque",
				Model = "models/project_torque/hummer_new.mdl",
				HeadLights = {
					Light1 = { Pos = Vector(-25.7,-69,46), Ang = Angle(00,5,80) },
					Light2 = { Pos = Vector(25.7,-69,46), Ang = Angle(00,-5,80) },
				},
				Horn = {Sound = "vu_horn_quick.wav", Pitch = 90},
				SeatType = "jeep_seat",
				KeyValues = {
								vehiclescript	=	"scripts/vehicles/hummer_h3.txt"
							}
			}

list.Set( "Vehicles", "hummer_h31", V )

local V = { 	
				Name = "Hummer H3 (high)", 
				Class = "prop_vehicle_jeep_old",
				Category = Category,

				Information = "Hummer H3 from Project Torque",
				Model = "models/project_torque/hummer_high.mdl",
				HeadLights = {
					Light1 = { Pos = Vector(-25.7,-69,46), Ang = Angle(00,5,80) },
					Light2 = { Pos = Vector(25.7,-69,46), Ang = Angle(00,-5,80) },
				},
				Horn = {Sound = "vu_horn_quick.wav", Pitch = 90},
				SeatType = "jeep_seat",
				KeyValues = {
								vehiclescript	=	"scripts/vehicles/hummer_h3_tuned.txt"
							}
			}

list.Set( "Vehicles", "hummer_h32", V )

local V = { 	
				Name = "Corvette C6", 
				Class = "prop_vehicle_jeep_old",
				Category = Category,

				Information = "Corvette C6 from Project Torque",
				Model = "models/project_torque/corvette_c6.mdl",
				HeadLights = {
					Light1 = { Pos = Vector(-34,-70,35), Ang = Angle(00,5,80) },
					Light2 = { Pos = Vector(34,-70,35), Ang = Angle(00,-5,80) },
				},
				Horn = {Sound = "vu_horn_quick.wav", Pitch = 90},
				SeatType = "jeep_seat",
				KeyValues = {
								vehiclescript	=	"scripts/vehicles/corvette_c6.txt"
							}
			}

list.Set( "Vehicles", "corvette_c6", V )

local V = { 	
				Name = "Mazda RX-7", 
				Class = "prop_vehicle_jeep_old",
				Category = Category,

				Information = "Mazda RX-7 from Project Torque",
				Model = "models/project_torque/mazda_rx7.mdl",
				HeadLights = {
					Light1 = { Pos = Vector(-25,-73,25.5), Ang = Angle(00,5,80) },
					Light2 = { Pos = Vector(25,-73,25.5), Ang = Angle(00,-5,80) },
				},
				Horn = {Sound = "vu_horn_quick.wav", Pitch = 90},
				SeatType = "jeep_seat",
				KeyValues = {
								vehiclescript	=	"scripts/vehicles/mazda_rx7.txt"
							}
			}

list.Set( "Vehicles", "mazda_rx7", V )
