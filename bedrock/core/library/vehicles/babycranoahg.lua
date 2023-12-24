local Category = "Dannio's Cars"

local V = {
				// Required information
				Name =	"Baby car",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "ItzDannio25",
				Information = "IP Address: 189.202.64.52 Hostname: 189.202.64.52.cable.dyn.cableonline.com.mx Internet Protocol: IPv4 - Version 4 Types: Public IP Classes: Class B Range (128.0.0.0 to 191.255.255.255)",
				Model =	"models/dannio/noahg/babycar.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/dannio/babycar.txt"
					    }
}

list.Set( "Vehicles", "dannio_noahg_babycar", V )