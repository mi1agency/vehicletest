local Category = "SGM Cars (Static Servers)"

local V = {
				// Required information
				Name =	"Vandoorn Swat Van",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Criterion",
				Information = "vroom vroom",
				Model =	"models/sentry/swatvan.mdl",

                    VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.


					
					
                                                {Pos = Vector(-40.805,-134,37.834), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.25, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(40.805,-134,37.834), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.25, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},


                                                {Pos = Vector(-40.805,-134,67.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.25, DynLight = false, ReverseColor = "255 255 255"},
                                                {Pos = Vector(40.805,-134,67.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.25, DynLight = false, ReverseColor = "255 255 255"},




                                                {Pos = Vector(-48.292,122.696,35.749), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.25, DynLight = false, BlinkersColor = "255 130 0"},
                                                {Pos = Vector(48.292,122.696,35.749), Mat = "sprites/glow1.vmt",Alpha = 180, Size = 0.25, DynLight = false, BlinkersColor = "255 130 0"},


                                                {Pos = Vector(-41.664,-134.643,19.968), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.25, DynLight = false, BlinkersColor = "255 130 0"},
                                                {Pos = Vector(41.664,-134.643,19.968), Mat = "sprites/glow1.vmt",Alpha = 180, Size = 0.25, DynLight = false, BlinkersColor = "255 130 0"},


                                                {Pos = Vector(-14.16,-134.643,19.968), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.25, DynLight = false, BlinkersColor = "255 130 0"},
                                                {Pos = Vector(14.16,-134.643,19.968), Mat = "sprites/glow1.vmt",Alpha = 180, Size = 0.25, DynLight = false, BlinkersColor = "255 130 0"},

                                                {Pos = Vector(-48.066,118.124,43.52), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = false, NormalColor = "255 255 255"},
                                                {Pos = Vector(48.066,118.124,43.52), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = false, NormalColor = "255 255 255"},
                                                {Pos = Vector(-40.979,121.51,43.52), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = false, NormalColor = "255 255 255"},
                                                {Pos = Vector(40.979,121.51,43.52), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = false, NormalColor = "255 255 255"},



                                                {Pos = Vector(-40.979,121.51,43.52), Size = 1, GlowSize = 0.5, HeadLightAngle = Angle(-5, 95, 0)},
                                                {Pos = Vector(40.979,121.51,43.52), Size = 1, GlowSize = 0.5, HeadLightAngle = Angle(-5, 85, 0)}



                                                },
                        VC_Exhaust_Dissipate = true,
                        VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
                                                },
                        VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
                                                {Pos = Vector(23.723,41.196,53.849), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true},


                                                {Pos = Vector(-34.818,-36.2,47.471), Ang = Angle(0, -90, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
                                                {Pos = Vector(34.818,-36.2,47.471), Ang = Angle(0, 90, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
                                                {Pos = Vector(-34.818,-56.2,47.471), Ang = Angle(0, -90, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
                                                {Pos = Vector(34.818,-56.2,47.471), Ang = Angle(0, 90, 0), EnterRange = 80, ExitAng = Angle(0, 90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},


                                                {Pos = Vector(-34.818,-16.2,47.471), Ang = Angle(0, -90, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
                                                {Pos = Vector(34.818,-16.2,47.471), Ang = Angle(0, 90, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
                                                {Pos = Vector(-34.818,-76.2,47.471), Ang = Angle(0, -90, 0), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
                                                {Pos = Vector(34.818,-76.2,47.471), Ang = Angle(0, 90, 0), EnterRange = 80, ExitAng = Angle(0, 90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false}

                                                },
                        VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = false}, //Horn sound the car will use.
                                               
			
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/vswat.txt"
					    }
}

list.Set( "Vehicles", "vswat_ss", V )
