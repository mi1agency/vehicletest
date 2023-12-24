local Category = "Perryn's Ported Vehicles"

local V = {
				// Required information
				Name =	"Ford E-450 Ambulance",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Perryn",
				Information = "Drive Carefully",
				Model =	"models/perrynsvehicles/ford_e450_ambulance/ford_e450_ambulance.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/perryn/ford_e450_ambulance.txt"
					    }
}

list.Set( "Vehicles", "perryn_ford_e450_ambulance", V )

if SERVER then hook.Add("PlayerSpawnedVehicle","E450Ambulance",function(a,b)
if b:GetModel()=="models/perrynsvehicles/ford_e450_ambulance/ford_e450_ambulance.mdl"
	then b.Button=ents.Create("kx_button")b.Button:SetPos(b:GetPos()+b:GetUp()*59+b:GetForward()*-120)
	b.Button:SetVehicle(b)
	b.Button:SetAngles(b:GetAngles()+Angle(90,-90,0))
	b.Button:Spawn()
end

end)
end