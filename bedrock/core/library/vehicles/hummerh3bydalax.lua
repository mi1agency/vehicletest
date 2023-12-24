local Category = "Dalax's Vehicles"

local V = { 	
				// Required information
				Name = "H3 stock", 
				Class = "prop_vehicle_jeep_old",
				Category = Category,

				// Optional information
				Author = "DalaxHarVan",
				Information = "Hummer H3 from Project Torque",
				Model = "models/dalax/hummer_new01.mdl",
				HeadLights = {
					Light1 = { Pos = Vector(-25.7,-69,46), Ang = Angle(00,5,80) },
					Light2 = { Pos = Vector(25.7,-69,46), Ang = Angle(00,-5,80) },
				},
				Horn = {Sound = "vc_horn_short", Pitch = 90},
				Passengers  = {
					passenger1 = { Pos = Vector(19,15,27), Ang = Angle(0,0,0) },
					passenger2 = { Pos = Vector(15,58,27), Ang = Angle(0,0,0) },
					passenger3 = { Pos = Vector(-15,58,27), Ang = Angle(0,0,0) },
				},
				SeatType = "jeep_seat",
				HideSeats = true,
				customexits = { Vector(30,13,30), Vector(30,58,30), Vector(-30,58,30) ,Vector(-30,58,30) },
				KeyValues = {
								vehiclescript	=	"scripts/vehicles/dalax/hummerh3_01.txt"
							}
			}

list.Set( "Vehicles", "dlxhummerh3stock", V )

local V = { 	
				// Required information
				Name = "H3 Raised", 
				Class = "prop_vehicle_jeep_old",
				Category = Category,

				// Optional information
				Author = "DalaxHarVan",
				Information = "Hummer H3 from Project Torque",
				Model = "models/dalax/hummer_high01.mdl",
				HeadLights = {
					Light1 = { Pos = Vector(-25.7,-69,46), Ang = Angle(00,5,80) },
					Light2 = { Pos = Vector(25.7,-69,46), Ang = Angle(00,-5,80) },
				},
				Horn = {Sound = "vc_horn1", Pitch = 90},
				Passengers  = {
					passenger1 = { Pos = Vector(19,15,27), Ang = Angle(0,0,0) },
					passenger2 = { Pos = Vector(15,58,27), Ang = Angle(0,0,0) },
					passenger3 = { Pos = Vector(-15,58,27), Ang = Angle(0,0,0) },
				},
				SeatType = "jeep_seat",
				HideSeats = true,
				customexits = { Vector(30,13,30), Vector(30,58,30), Vector(-30,58,30) ,Vector(-30,58,30) },
				KeyValues = {
								vehiclescript	=	"scripts/vehicles/dalax/hummerh3_high_01.txt"
							}
			}

list.Set( "Vehicles", "dlxhummerh3raised", V )
