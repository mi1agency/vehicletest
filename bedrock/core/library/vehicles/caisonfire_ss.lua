local Category = "SGM Cars (Static Servers)"

local V = {
				// Required information
				Name =	"Ford C-Series Firetruck",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Criterion",
				Information = "vroom vroom",
				Model =	"models/sentry/caison_fire.mdl",
                   VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.


					
					
                                                {Pos = Vector(-34.803,-174.976,33.767), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(34.803,-174.976,33.767), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},


                                                {Pos = Vector(-41.453,-174.976,33.767), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = false, ReverseColor = "255 255 255"},
                                                {Pos = Vector(41.453,-174.976,33.767), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = false, ReverseColor = "255 255 255"},




                                                {Pos = Vector(-38.983,167.388,31.85), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.25, DynLight = false, BlinkersColor = "255 130 0"},
                                                {Pos = Vector(38.983,167.388,31.85), Mat = "sprites/glow1.vmt",Alpha = 180, Size = 0.25, DynLight = false, BlinkersColor = "255 130 0"},






                                                {Pos = Vector(-35.079,166.398,53.438), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 1.0, DynLight = false, NormalColor = "255 255 255"},
                                                {Pos = Vector(35.079,166.398,53.438), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 1.0, DynLight = false, NormalColor = "255 255 255"},



                                                {Pos = Vector(-35.079,166.398,53.438), Size = 1, GlowSize = 0.5, HeadLightAngle = Angle(-5, 95, 0)},
                                                {Pos = Vector(35.079,166.398,53.438), Size = 1, GlowSize = 0.5, HeadLightAngle = Angle(-5, 85, 0)}



                                                },
                        VC_Exhaust_Dissipate = true,
                        VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
                                                },
                        VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
                                                {Pos = Vector(26.823,130.146,49.968), Ang = Angle(0, 0, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true},

                                                {Pos = Vector(-26.823,68.45,45.159), Ang = Angle(0, 0, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
                                                {Pos = Vector(26.823,68.45,45.159), Ang = Angle(0, 0, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
                                                {Pos = Vector(-8.823,68.45,45.159), Ang = Angle(0, 0, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
                                                {Pos = Vector(8.823,68.45,45.159), Ang = Angle(0, 0, 0), EnterRange = 80, ExitAng = Angle(0, 90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false}


 

                                                },
                        VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = false}, //Horn sound the car will use.
                                               
			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/cfire.txt"
					    }
}

list.Set( "Vehicles", "cfire_ss", V )
