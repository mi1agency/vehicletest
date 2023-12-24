local V = { 	
	Name = "Kawasaki SX-R 800", 
	Class = "prop_vehicle_airboat",
	Category = "Iñaki's Vehicles",
	Author = "MagNet, Iñaki",
	Information = "Kawasaki SX-R 800, this model has been arround for a long time, but now you can drive it.\nIts paintable, use the color tool.\n\nYT Channel: http://www.youtube.com/user/DJInaki2\nPaypal: http://tinyurl.com/donate-inaki",
	Model = "models/inaki/vehicles/kaw_jetski.mdl",
	//Vehicle Controller
	VC_Exhaust = { {Pos = Vector(8, -59, 5), Ang = Angle(0,0,128), EffectIdle = "Exhaust", EffectStress = "Exhaust"} }, //"EffectUnderwater" would be cool, to have bubbles!!!
	VC_Exhaust_Dissipate = true, //Remove the exhaust effect when car reaches certain velocity.
	KeyValues = {
		vehiclescript	=	"scripts/vehicles/kaw_jetski.txt",
		rendercolor		=	"255 0 0"
	} 
}
list.Set( "Vehicles", "vehicle_kaw_jetski", V )
