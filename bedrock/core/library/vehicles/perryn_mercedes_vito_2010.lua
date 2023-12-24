local Category = "Perryn's Ported Vehicles"

local V = {
				// Required information
				Name =	"2010 Mercedes Vito",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Perryn",
				Information = "Drive Carefully",
				Model =	"models/perrynsvehicles/mercedes_vito_2010/mercedes_vito_2010.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/perryn/mercedes_vito_2010.txt"
					    }
}

list.Set( "Vehicles", "perryn_mercedes_vito_2010", V )

if SERVER then hook.Add("PlayerSpawnedVehicle","2010Vito",function(a,b)
if b:GetModel()=="models/perrynsvehicles/mercedes_vito_2010/mercedes_vito_2010.mdl"
	then b.Button=ents.Create("kx_button")b.Button:SetPos(b:GetPos()+b:GetUp()*59+b:GetForward()*-120)
	b.Button:SetVehicle(b)
	b.Button:SetAngles(b:GetAngles()+Angle(90,-90,0))
	b.Button:Spawn()
end

end)
end