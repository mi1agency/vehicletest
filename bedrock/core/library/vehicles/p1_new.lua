local Category = "SGM Cars"

	local Speedo = {
	["models/sentry/p1_new.mdl"] = {
		mphpos = Vector(-16.0, -39.3, 39.75),
		mphang = Angle(85,0,0),
		mphscale = 0.015,
		mphcolor = Color(255,255,255,255),
--		kmhpos = Vector(-10.32, -41, 34.5),
--		kmhang = Angle(85,0,0),
--		kmhscale = 0.015,
--		kmhcolor = Color(255,255,255,255),
	},
}
if IsValid(SpeedometerData) then table.insert(SpeedometerData,Speedo) else SpeedometerData = Speedo end

local V = {
				// Required information
				Name =	"2014 McLaren P1 (new)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/p1_new.mdl",
				
				
				
				
				

				
VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.


					
					

												
                                                {Pos = Vector(-34.2757, 97.9129, 30.9977), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.03, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-35.1326, 96.9906, 31.2981), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.035, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-35.8276, 96.1333, 31.4963), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.04, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-36.5055, 95.3733, 31.7217), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.045, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-37.2178, 94.6364, 31.8810), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.05, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-37.8992, 93.9348, 32.0221), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.055, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-38.6678, 93.1370, 32.1759), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.06, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-39.4366, 92.1675, 32.3160), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.065, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-40.1845, 91.3043, 32.4021), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.07, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-40.9493, 90.3996, 32.4021), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.075, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-41.7830, 89.6044, 32.4021), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-42.5780, 89.2445, 32.0917), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-43.0398, 89.2060, 31.5227), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-43.2597, 89.4608, 30.8173), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-43.3713, 90.5364, 29.4271), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.075, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(-43.4168, 90.0984, 30.0559), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.05, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},		

                                                {Pos = Vector(34.2757, 97.9129, 30.9977), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.03, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(35.1326, 96.9906, 31.2981), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.035, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(35.8276, 96.1333, 31.4963), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.04, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(36.5055, 95.3733, 31.7217), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.045, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(37.2178, 94.6364, 31.8810), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.05, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(37.8992, 93.9348, 32.0221), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.055, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(38.6678, 93.1370, 32.1759), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.06, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(39.4366, 92.1675, 32.3160), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.065, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(40.1845, 91.3043, 32.4021), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.07, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(40.9493, 90.3996, 32.4021), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.075, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(41.7830, 89.6044, 32.4021), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(42.5780, 89.2445, 32.0917), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(43.0398, 89.2060, 31.5227), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(43.2597, 89.4608, 30.8173), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(43.3713, 90.5364, 29.4271), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.075, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},			
                                                {Pos = Vector(43.4168, 90.0984, 30.0559), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.05, DynLight = false, NormalColor = "255 255 255", BlinkersColor = "255 120 0"},				
												
												
												
												
												
												
												
												




                                                {Pos = Vector(0, -104.735, 14.606), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, ReverseColor = "255 255 255"},		
                                                {Pos = Vector(-0.81, -104.735, 14.606), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, ReverseColor = "255 255 255"},		
                                                {Pos = Vector(-2.859, -104.735, 14.606), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, ReverseColor = "255 255 255"},		
                                                {Pos = Vector(0.81, -104.735, 14.606), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, ReverseColor = "255 255 255"},		
                                                {Pos = Vector(2.859, -104.735, 14.606), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, ReverseColor = "255 255 255"},	



												
												






                                                {Pos = Vector(-42.6977, -89.3964, 34.6783), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-42.8634, -89.5323, 34.0767), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-42.7726, -89.9210, 33.5182), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-42.6002, -90.4504, 33.1202), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-42.3390, -91.0000, 32.7039), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-41.9860, -91.5955, 32.4152), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-41.6329, -92.1909, 32.1265), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-41.2798, -92.7863, 31.8378), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-40.9268, -93.3817, 31.5491), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-40.5738, -93.9772, 31.2605), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-40.2208, -94.5726, 30.9717), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-39.8855, -95.0203, 30.6181), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-37.4898, -98.4480, 28.9562), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-39.0869, -96.1629, 30.0642), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-37.8890, -97.8768, 29.2332), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-38.6876, -96.7342, 29.7871), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-39.4862, -95.5916, 30.3412), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-38.2883, -97.3055, 29.5103), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-37.1132, -98.9782, 28.7728), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-34.9246, -101.3367, 26.6090), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-35.3624, -100.9378, 27.3253), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-34.7062, -101.4839, 25.7502), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-35.8001, -100.4479, 27.6871), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-36.6755, -99.4681, 28.4110), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-36.2378, -99.9581, 28.0490), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(-34.7062, -101.4829, 24.7579), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
												
                                                {Pos = Vector(42.6977, -89.3964, 34.6783), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(42.8634, -89.5323, 34.0767), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(42.7726, -89.9210, 33.5182), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(42.6002, -90.4504, 33.1202), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(42.3390, -91.0000, 32.7039), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(41.9860, -91.5955, 32.4152), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(41.6329, -92.1909, 32.1265), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(41.2798, -92.7863, 31.8378), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(40.9268, -93.3817, 31.5491), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(40.5738, -93.9772, 31.2605), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(40.2208, -94.5726, 30.9717), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(39.8855, -95.0203, 30.6181), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(37.4898, -98.4480, 28.9562), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(39.0869, -96.1629, 30.0642), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(37.8890, -97.8768, 29.2332), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(38.6876, -96.7342, 29.7871), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(39.4862, -95.5916, 30.3412), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(38.2883, -97.3055, 29.5103), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(37.1132, -98.9782, 28.7728), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(34.9246, -101.3367, 26.6090), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(35.3624, -100.9378, 27.3253), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(34.7062, -101.4839, 25.7502), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(35.8001, -100.4479, 27.6871), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(36.6755, -99.4681, 28.4110), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(36.2378, -99.9581, 28.0490), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
                                                {Pos = Vector(34.7062, -101.4829, 24.7579), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BlinkersColor = "255 0 0"},
												

                                                {Pos = Vector(-12.3315, -105.3076, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-12.8315, -105.3076, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-13.3315, -105.3076, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-13.8315, -105.3076, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-14.3315, -105.3076, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-14.8250, -105.2271, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-15.3184, -105.1466, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-15.8119, -105.0662, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-16.3054, -104.9856, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-16.7989, -104.9052, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-17.2924, -104.8247, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-17.7683, -104.6826, 33.5987), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-18.2441, -104.5405, 33.6568), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-18.7200, -104.3984, 33.7148), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-19.1958, -104.2563, 33.7728), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-19.6717, -104.1142, 33.8309), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-20.1475, -103.9722, 33.8889), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-20.6121, -103.8305, 34.0078), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-21.0766, -103.6888, 34.1265), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-21.5412, -103.5471, 34.2453), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-22.0058, -103.4056, 34.3641), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-22.4703, -103.2640, 34.4829), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-22.9349, -103.1222, 34.6016), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-23.3693, -102.9668, 34.7943), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-23.8038, -102.8115, 34.9870), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-24.2384, -102.6563, 35.1794), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-24.6729, -102.5011, 35.3721), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-25.1074, -102.3457, 35.5648), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-25.5418, -102.1905, 35.7575), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-25.9764, -102.0353, 35.9502), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-26.4109, -101.8800, 36.1428), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-26.8453, -101.7248, 36.3355), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-27.2497, -101.4947, 36.5187), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-27.6540, -101.2646, 36.7019), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-28.0583, -101.0344, 36.8852), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-28.4625, -100.8041, 37.0684), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-28.8668, -100.5740, 37.2516), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-29.2872, -100.3394, 37.3865), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-29.7076, -100.1047, 37.5215), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-30.1280, -99.8701, 37.6565), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-30.5568, -99.6339, 37.7584), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-30.9853, -99.3976, 37.8604), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-31.4141, -99.1613, 37.9624), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-31.8371, -98.9005, 38.0183), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-32.2600, -98.6397, 38.0741), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-32.6364, -98.3106, 38.0848), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-33.0126, -97.9816, 38.0954), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-33.3890, -97.6526, 38.1060), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-33.7653, -97.3236, 38.1166), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-34.1417, -96.9946, 38.1273), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-34.5181, -96.6657, 38.1379), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-34.8835, -96.3290, 38.0814), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-35.2489, -95.9924, 38.0248), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-35.6143, -95.6557, 37.9683), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-35.9796, -95.3191, 37.9117), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-36.3449, -94.9824, 37.8552), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-36.7065, -94.6552, 37.7448), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-37.0680, -94.3280, 37.6345), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-37.4295, -94.0006, 37.5240), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-37.7909, -93.6734, 37.4136), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-38.1483, -93.3533, 37.2726), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-38.5057, -93.0332, 37.1317), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-38.8630, -92.7131, 36.9907), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-39.2204, -92.3930, 36.8499), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-39.5777, -92.0730, 36.7090), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-39.9351, -91.7529, 36.5682), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-40.2926, -91.4329, 36.4273), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-40.6501, -91.1130, 36.2864), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-41.0074, -90.7929, 36.1455), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-41.3648, -90.4728, 36.0047), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-41.7178, -90.1601, 35.8381), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-42.0384, -89.8889, 35.5667), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(-42.3283, -89.6537, 35.2340), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},

												
                                                {Pos = Vector(12.3315, -105.3076, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(12.8315, -105.3076, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(13.3315, -105.3076, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(13.8315, -105.3076, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(14.3315, -105.3076, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(14.8250, -105.2271, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(15.3184, -105.1466, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(15.8119, -105.0662, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(16.3054, -104.9856, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(16.7989, -104.9052, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(17.2924, -104.8247, 33.5407), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(17.7683, -104.6826, 33.5987), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(18.2441, -104.5405, 33.6568), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(18.7200, -104.3984, 33.7148), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(19.1958, -104.2563, 33.7728), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(19.6717, -104.1142, 33.8309), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(20.1475, -103.9722, 33.8889), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(20.6121, -103.8305, 34.0078), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(21.0766, -103.6888, 34.1265), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(21.5412, -103.5471, 34.2453), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(22.0058, -103.4056, 34.3641), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(22.4703, -103.2640, 34.4829), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(22.9349, -103.1222, 34.6016), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(23.3693, -102.9668, 34.7943), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(23.8038, -102.8115, 34.9870), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(24.2384, -102.6563, 35.1794), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(24.6729, -102.5011, 35.3721), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(25.1074, -102.3457, 35.5648), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(25.5418, -102.1905, 35.7575), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(25.9764, -102.0353, 35.9502), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(26.4109, -101.8800, 36.1428), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(26.8453, -101.7248, 36.3355), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(27.2497, -101.4947, 36.5187), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(27.6540, -101.2646, 36.7019), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(28.0583, -101.0344, 36.8852), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(28.4625, -100.8041, 37.0684), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(28.8668, -100.5740, 37.2516), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(29.2872, -100.3394, 37.3865), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(29.7076, -100.1047, 37.5215), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(30.1280, -99.8701, 37.6565), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(30.5568, -99.6339, 37.7584), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(30.9853, -99.3976, 37.8604), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(31.4141, -99.1613, 37.9624), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(31.8371, -98.9005, 38.0183), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(32.2600, -98.6397, 38.0741), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(32.6364, -98.3106, 38.0848), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(33.0126, -97.9816, 38.0954), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(33.3890, -97.6526, 38.1060), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(33.7653, -97.3236, 38.1166), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(34.1417, -96.9946, 38.1273), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(34.5181, -96.6657, 38.1379), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(34.8835, -96.3290, 38.0814), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(35.2489, -95.9924, 38.0248), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(35.6143, -95.6557, 37.9683), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(35.9796, -95.3191, 37.9117), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(36.3449, -94.9824, 37.8552), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(36.7065, -94.6552, 37.7448), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(37.0680, -94.3280, 37.6345), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(37.4295, -94.0006, 37.5240), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(37.7909, -93.6734, 37.4136), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(38.1483, -93.3533, 37.2726), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(38.5057, -93.0332, 37.1317), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(38.8630, -92.7131, 36.9907), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(39.2204, -92.3930, 36.8499), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(39.5777, -92.0730, 36.7090), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(39.9351, -91.7529, 36.5682), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(40.2926, -91.4329, 36.4273), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(40.6501, -91.1130, 36.2864), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(41.0074, -90.7929, 36.1455), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(41.3648, -90.4728, 36.0047), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(41.7178, -90.1601, 35.8381), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(42.0384, -89.8889, 35.5667), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
                                                {Pos = Vector(42.3283, -89.6537, 35.2340), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = false, NormalColor = "255 0 0", BrakeColor = "255 0 0"},												
												

												

                                                {Pos = Vector(0, -24.455, 55.146), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.075, DynLight = false, BrakeColor = "255 0 0"},	
                                                {Pos = Vector(1, -24.455, 55.146), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.075, DynLight = false, BrakeColor = "255 0 0"},	
                                                {Pos = Vector(2, -24.455, 55.146), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.075, DynLight = false, BrakeColor = "255 0 0"},	
                                                {Pos = Vector(3, -24.455, 55.146), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.075, DynLight = false, BrakeColor = "255 0 0"},													
                                                {Pos = Vector(-1, -24.455, 55.146), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.075, DynLight = false, BrakeColor = "255 0 0"},	
                                                {Pos = Vector(-2, -24.455, 55.146), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.075, DynLight = false, BrakeColor = "255 0 0"},	
                                                {Pos = Vector(-3, -24.455, 55.146), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.075, DynLight = false, BrakeColor = "255 0 0"},
												
												
												
												
												
												
												
												
												
                                                {Pos = Vector(38.651, 94.968, 30.293), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight= true, DynamicSize = 0.5, DynLightBrightness = 2, NormalColor = "155 155 155"},			
                                                {Pos = Vector(41.138, 91.691, 30.698), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.15, DynLight= true, DynamicSize = 0.5, DynLightBrightness = 2, NormalColor = "155 155 155"},			
                                                {Pos = Vector(-38.651, 94.968, 30.293), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight= true, DynamicSize = 0.5, DynLightBrightness = 2, NormalColor = "155 155 155"},			
                                                {Pos = Vector(-41.138, 91.691, 30.698), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.15, DynLight= true, DynamicSize = 0.5, DynLightBrightness = 2, NormalColor = "155 155 155"},			

												
											
                                                {Pos = Vector(-35.579,96.89,29.854), Size = 0.1, HeadColor = "230 230 255", HeadLightAngle = Angle(0, 90, 0), HeadColor = "150 150 150", DynLight= true, DynamicSize = 0.5, DynLightBrightness = 2},
                                                {Pos = Vector(35.579,96.89,29.854), Size = 0.1, HeadColor = "230 230 255", HeadLightAngle = Angle(0, 90, 0), HeadColor = "150 150 150", DynLight= true, DynamicSize = 0.5, DynLightBrightness = 2},

												
                                                },
                        VC_Exhaust_Dissipate = true,
                        VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
												{Pos = Vector(-4, -104.242, 29.484), Ang = Angle(0,0,0), EffectIdle = "Exhaust", EffectStress = "Exhaust"},	
												{Pos = Vector(0, -104.242, 29.484), Ang = Angle(0,0,0), EffectIdle = "Exhaust", EffectStress = "Exhaust"},			
												{Pos = Vector(4, -104.242, 29.484), Ang = Angle(0,0,0), EffectIdle = "Exhaust", EffectStress = "Exhaust"},													
												
                                                },
                        VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
                                                {Pos = Vector(15.5,12.897,25.904), Ang = Angle(17, 0, 0), EnterRange = 80, ExitAng = Angle(0, 90, 0), Model = "models/nova/airboat_seat.mdl", ModelOffset = Vector(0, 0, 0), Hide = true, DoorSounds = true, RadioControl = false}
                                                },
                        VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = true}, //Horn sound the car will use.



				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/p1_new.txt"
					    }
}
list.Set( "Vehicles", "p1sgm_new", V )
VC_MakeScripts("p1sgm_new")
