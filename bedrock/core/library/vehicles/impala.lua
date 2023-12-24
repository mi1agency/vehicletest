local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"1964 Chevrolet Impala SS",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/impala.mdl",
VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.


                                                {Pos = Vector(-28.365, -130.334, 29.127), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.275, DynLight = true, DynamicSize = 1.5, DynLightBrightness = 1.5, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(28.365, -130.334, 29.127), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.275, DynLight = true, DynamicSize = 1.5, DynLightBrightness = 1.5, NormalColor = "255 0 0", BrakeColor = "255 0 0"},

                                                {Pos = Vector(-20.472, -130.796, 29.127), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.275, DynLight = true, DynamicSize = 1.5, DynLightBrightness = 1.5, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(20.472, -130.796, 29.127), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.275, DynLight = true, DynamicSize = 1.5, DynLightBrightness = 1.5, NormalColor = "255 0 0", BrakeColor = "255 0 0"},

                                                {Pos = Vector(-36.16, -130.796, 29.127), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.275, DynLight = true, DynamicSize = 1.5, DynLightBrightness = 1.5, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(36.16, -130.796, 29.127), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.275, DynLight = true, DynamicSize = 1.5, DynLightBrightness = 1.5, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},
			
			


												
                                                {Pos = Vector(-32.16, 110.8, 19), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, DynamicSize = 1.5, DynLightBrightness = 1.5, BlinkersColor = "255 120 0"},
                                                {Pos = Vector(32.16, 110.8, 19), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, DynamicSize = 1.5, DynLightBrightness = 1.5, BlinkersColor = "255 120 0"},
													
	                                            {Pos = Vector(-27.745,110.367,30.94), Size = 0.05, GlowSize = 0.05, HeadLightAngle = Angle(0, 90, 0), HeadColor = "200 200 200"},
                                                {Pos = Vector(27.745,110.367,30.94), Size = 0.05, GlowSize = 0.05, HeadLightAngle = Angle(0, 90, 0), HeadColor = "200 200 200"},											
                                                {Pos = Vector(-37.181,110.012,30.94), Size = 0.05, GlowSize = 0.05, HeadLightAngle = Angle(0, 90, 0), HeadColor = "200 200 200"},
                                                {Pos = Vector(37.181,110.012,30.94), Size = 0.05, GlowSize = 0.05, HeadLightAngle = Angle(0, 90, 0), HeadColor = "200 200 200"},
																						
                                                },
                        VC_Exhaust_Dissipate = true,
                        VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.												
											
                                                },
                        VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
                                             },
                        VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = true}, //Horn sound the car will use.       
						
						
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/impala.txt"
					    },

}

list.Set( "Vehicles", "impalasgm", V )
VC_MakeScripts("impalasgm")