local PrVeh = "prop_vehicle_jeep"
local Cat = "TDM Cars"

local V = {
			Name = "Citroen C1", 
			Class = PrVeh,
			Category = Cat,
			Author = "TheDanishMaster, Turn 10",
			Information = "A drivable Citroen C1 by TheDanishMaster",
				Model = "models/tdmcars/citroen_c1.mdl",
							KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/citroenc1.txt"
							}
			}
list.Set("Vehicles", "citroenc1tdm", V)

local V = {
			Name = "Citroen C4", 
			Class = PrVeh,
			Category = Cat,
			Author = "TheDanishMaster, Turn 10",
			Information = "A drivable Citroen C4 by TheDanishMaster",
			Model = "models/tdmcars/cit_c4.mdl",	
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/c4.txt"
							}
			}
list.Set("Vehicles", "c4tdm", V)

local V = {
			Name = "Citroen 2CV", 
			Class = PrVeh,
			Category = Cat,
			Author = "TheDanishMaster, Turn 10",
			Information = "A drivable Citroen 2CV by TheDanishMaster",
			Model = "models/tdmcars/cit_2cv.mdl",	
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/cit_2cv.txt"
							}
			}
list.Set("Vehicles", "cit_2cvtdm", V)