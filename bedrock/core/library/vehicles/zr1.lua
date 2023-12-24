local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Chevrolet Corvette ZR1",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10, TheDanishMaster",
				Information = "vroom",
				Model =	"models/sentry/zr1.mdl",
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.

						{Pos = Vector(32.5,-105,52), Mat = "sprites/blueflare1.vmt", Alpha = 255, Size = 0.3, DynLight = true, BrakeColor = "255 0 0", NormalColor = "155 0 0", BlinkersColor = "255 10 0"},
						{Pos = Vector(-32.5,-105,52), Mat = "sprites/blueflare1.vmt", Alpha = 255, Size = 0.3, DynLight = true, BrakeColor = "255 0 0", NormalColor = "155 0 0", BlinkersColor = "255 10 0"},
						{Pos = Vector(21.5,-106,52.5), Mat = "sprites/blueflare1.vmt", Alpha = 255, Size = 0.3, DynLight = true, BrakeColor = "255 0 0", NormalColor = "155 0 0", BlinkersColor = "255 10 0"},
						{Pos = Vector(-21.5,-106,52.5), Mat = "sprites/blueflare1.vmt", Alpha = 255, Size = 0.3, DynLight = true, BrakeColor = "255 0 0", NormalColor = "155 0 0", BlinkersColor = "255 10 0"},
						{Pos = Vector(32.5,-105,52), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.3, DynLight = true, BrakeColor = "255 0 0", NormalColor = "155 0 0", BlinkersColor = "255 10 0"},
						{Pos = Vector(-32.5,-105,52), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.3, DynLight = true, BrakeColor = "255 0 0", NormalColor = "155 0 0", BlinkersColor = "255 10 0"},
						{Pos = Vector(21.5,-106,52.5), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.3, DynLight = true, BrakeColor = "255 0 0", NormalColor = "155 0 0", BlinkersColor = "255 10 0"},
						{Pos = Vector(-21.5,-106,52.5), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.3, DynLight = true, BrakeColor = "255 0 0", NormalColor = "155 0 0", BlinkersColor = "255 10 0"},


						{Pos = Vector(-4.5,-109,58.5), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.05, DynLight = true, BrakeColor = "255 0 0"},
						{Pos = Vector(-3,-109,58.5), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.05, DynLight = true, BrakeColor = "255 0 0"},
						{Pos = Vector(-1.5,-109,58.5), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.05, DynLight = true, BrakeColor = "255 0 0"},
						{Pos = Vector(0,-109,58.5), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.05, DynLight = true, BrakeColor = "255 0 0"},
						{Pos = Vector(1.5,-109,58.5), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.05, DynLight = true, BrakeColor = "255 0 0"},
						{Pos = Vector(3,-109,58.5), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.05, DynLight = true, BrakeColor = "255 0 0"},
						{Pos = Vector(4.5,-109,58.5), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.05, DynLight = true, BrakeColor = "255 0 0"},


						{Pos = Vector(25,-104,29), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor = "155 155 155"},
						{Pos = Vector(-25,-104,29), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor = "155 155 155"},
						{Pos = Vector(29,-105,29), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor = "155 155 155"},
						{Pos = Vector(-29,-105,29), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor = "155 155 155"},
						{Pos = Vector(21,-106,29), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor = "155 155 155"},
						{Pos = Vector(-21,-106,29), Mat = "sprites/blueflare1.vmt", Alpha = 210, Size = 0.2, DynLight = true, ReverseColor = "155 155 155"},




						{Pos = Vector(27.7,88,44), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.15, DynLight = true, NormalColor ="230 230 255"},

						{Pos = Vector(-27.7,88,44), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.15, DynLight = true, NormalColor ="230 230 255"},



						{Pos = Vector(37.75,82,46), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.2, DynLight = true, BlinkersColor ="255 130 0"},

						{Pos = Vector(-37.75,82,46), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.2, DynLight = true, BlinkersColor ="255 130 0"},

						{Pos = Vector(45,82,38.25), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 130 0"},

						{Pos = Vector(-45,82,38.25), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 130 0"},

						{Pos = Vector(43.75,85.5,37.75), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 130 0"},

						{Pos = Vector(-43.75,85.5,37.75), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 130 0"},

						{Pos = Vector(42.5,89,37.25), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 130 0"},

						{Pos = Vector(-42.5,89,37.25), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 130 0"},

						{Pos = Vector(43.5,-87,48), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 20 0"},
						{Pos = Vector(43,-90,48.25), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 20 0"},
						{Pos = Vector(42.5,-93,48.5), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 20 0"},
						{Pos = Vector(-43.5,-87,48), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 20 0"},
						{Pos = Vector(-43,-90,48.25), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 20 0"},
						{Pos = Vector(-42.5,-93,48.5), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.1, DynLight = true, BlinkersColor ="255 20 0"},



						{Pos = Vector(32.35,86,44.25), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.15, DynLight = true, NormalColor ="230 230 255"},

						{Pos = Vector(-32.35,86,44.25), Mat = "sprites/blueflare1.vmt", Alpha = 230, Size = 0.15, DynLight = true, NormalColor ="230 230 255"},

						{Pos = Vector(33,94,29), Mat = "sprites/blueflare1.vmt", Alpha = 180, Size = 0.15, DynLight = true, NormalColor ="230 230 255"},

						{Pos = Vector(35,92,29), Mat = "sprites/blueflare1.vmt", Alpha = 180, Size = 0.15, DynLight = true, NormalColor ="230 230 255"},

						{Pos = Vector(37,90,29), Mat = "sprites/blueflare1.vmt", Alpha = 180, Size = 0.15, DynLight = true, NormalColor ="230 230 255"},

						{Pos = Vector(-33,94,29), Mat = "sprites/blueflare1.vmt", Alpha = 180, Size = 0.15, DynLight = true, NormalColor ="230 230 255"},

						{Pos = Vector(-35,92,29), Mat = "sprites/blueflare1.vmt", Alpha = 180, Size = 0.15, DynLight = true, NormalColor ="230 230 255"},

						{Pos = Vector(-37,90,29), Mat = "sprites/blueflare1.vmt", Alpha = 180, Size = 0.15, DynLight = true, NormalColor ="230 230 255"},



						{Pos = Vector(27.7,88,44), Size = 1, GlowSize = 1, HeadLightAngle = Angle(0, 90, 0)},
						{Pos = Vector(27.7,-88,44), Size = 1, GlowSize = 1, HeadLightAngle = Angle(0, 90, 0)}
						},

			//
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/zr1.txt"
					    }
}

list.Set( "Vehicles", "zr1", V )
