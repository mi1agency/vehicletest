local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"Nissan 240SX",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "LOL DRIFT",
				Model =	"models/sentry/240sx.mdl",
//Vehicle Controller
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.

						{Pos = Vector(0, -105, 16.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"}
						},
			VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = false}, //Horn sound the car will use.
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
						{Pos = Vector(19, -17, 25), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"},
			{Pos = Vector(-19, -17, 25), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"},
						},
			VC_Exhaust_Dissipate = true, //Remove the exhaust effect when car reaches certain velocity.
			//
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/240sx.txt"
					    }
}

list.Set( "Vehicles", "240sx", V )
