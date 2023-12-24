local V = {
			Name = "1981 Ford F150", 
			Class = "prop_vehicle_jeep",
			Category = "Talon's Vehicles",
			Author = "Talon733, Dalax",
			Information = "A drivable f150 BY Talon733",
			Model = "models/talonvehicles/tal_f150_1981.mdl",
			//Vehicle Controller

			VC_Horn = {Sound = "vehicles/vc_horn_heavy.wav", Pitch = 110, Looping = false}, //Horn sound the car will use.
						
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/tal_f150_81.txt"
							}
			}
list.Set("Vehicles", "f150tal1981", V)