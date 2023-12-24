local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2010 Spada Codatronca TS",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/codatronca.mdl",
 VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.

												{Pos = Vector(32.4187, -82.8778, 36.5655), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(32.9223, -82.7830, 36.0497), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(33.4171, -82.8022, 36.4775), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(33.7906, -82.7075, 35.9618), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(34.0058, -82.8022, 36.9046), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(34.3604, -82.7249, 36.3411), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(34.9278, -82.7249, 36.7682), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(33.0074, -82.8778, 36.9926), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(34.7340, -82.6301, 35.8253), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(35.3082, -82.6267, 36.2085), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(35.8756, -82.6267, 36.6356), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(35.6818, -82.5320, 35.6927), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												
												{Pos = Vector(28.5035, -83.4418, 37.0960), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(29.0070, -83.3471, 36.5802), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(29.5018, -83.3662, 37.0080), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(29.8753, -83.2715, 36.4923), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(30.0905, -83.3662, 37.4352), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(30.4452, -83.2889, 36.8716), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(31.0126, -83.2889, 37.2987), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(29.0922, -83.4418, 37.5231), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(30.8187, -83.1942, 36.3558), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(31.3930, -83.1907, 36.7390), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(31.9604, -83.1907, 37.1661), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(31.7665, -83.0960, 36.2232), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  

												{Pos = Vector(-32.4187, -82.8778, 36.5655), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-32.9223, -82.7830, 36.0497), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-33.4171, -82.8022, 36.4775), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-33.7906, -82.7075, 35.9618), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-34.0058, -82.8022, 36.9046), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-34.3604, -82.7249, 36.3411), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-34.9278, -82.7249, 36.7682), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-33.0074, -82.8778, 36.9926), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-34.7340, -82.6301, 35.8253), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-35.3082, -82.6267, 36.2085), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-35.8756, -82.6267, 36.6356), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-35.6818, -82.5320, 35.6927), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												
												{Pos = Vector(-28.5035, -83.4418, 37.0960), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(-29.0070, -83.3471, 36.5802), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(-29.5018, -83.3662, 37.0080), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(-29.8753, -83.2715, 36.4923), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(-30.0905, -83.3662, 37.4352), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(-30.4452, -83.2889, 36.8716), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(-31.0126, -83.2889, 37.2987), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(-29.0922, -83.4418, 37.5231), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(-30.8187, -83.1942, 36.3558), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(-31.3930, -83.1907, 36.7390), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(-31.9604, -83.1907, 37.1661), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  
												{Pos = Vector(-31.7665, -83.0960, 36.2232), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BrakesColor = "255 0 0"},  

												{Pos = Vector(26.7445, 75.8358, 28.8434), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(26.6310, 75.8358, 29.2562), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(26.3430, 75.8358, 28.8434), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(26.2532, 75.8358, 29.1805), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(26.1713, 75.8358, 29.5247), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(25.8652, 75.8160, 29.1022), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(25.7754, 75.8160, 29.4393), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(25.6935, 75.8160, 29.7834), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(25.4214, 75.7871, 29.3610), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(25.3315, 75.7871, 29.6981), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(25.2496, 75.7871, 30.0423), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(24.9482, 75.7871, 29.6209), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(24.8584, 75.7871, 29.9580), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  

												{Pos = Vector(-26.7445, 75.8358, 28.8434), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-26.6310, 75.8358, 29.2562), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-26.3430, 75.8358, 28.8434), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-26.2532, 75.8358, 29.1805), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-26.1713, 75.8358, 29.5247), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-25.8652, 75.8160, 29.1022), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-25.7754, 75.8160, 29.4393), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-25.6935, 75.8160, 29.7834), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-25.4214, 75.7871, 29.3610), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-25.3315, 75.7871, 29.6981), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-25.2496, 75.7871, 30.0423), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-24.9482, 75.7871, 29.6209), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												{Pos = Vector(-24.8584, 75.7871, 29.9580), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, BlinkersColor = "255 120 0"},  
												
                                                {Pos = Vector(-27.3259, 75.4340, 32.4631), Size = 0.2, GlowSize = 0.2,  HeadLightAngle = Angle(0, 90, 0), HeadColor = "200 200 200"},
                                                {Pos = Vector(27.3259, 75.4340, 32.4631), Size = 0.2, GlowSize = 0.2, HeadLightAngle = Angle(0, 90, 0), HeadColor = "200 200 200"},
																						
                                                },
                        VC_Exhaust_Dissipate = true,
                        VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.												
											
                                                },
                        VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
                                             },
                        VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = true}, //Horn sound the car will use.       

                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/codatronca.txt"
					    }
}

list.Set( "Vehicles", "codatronca_sgm", V )