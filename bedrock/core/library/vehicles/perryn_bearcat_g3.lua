local Category = "Perryn's Ported Vehicles"

local V = {
				// Required information
				Name =	"BearCat G3",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Perryn",
				Information = "Drive Carefully",
				Model =	"models/perrynsvehicles/bearcat_g3/bearcat_g3.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/perryn/bearcat_g3.txt"
					    }
}

list.Set( "Vehicles", "perryn_bearcat_g3", V )

if SERVER then hook.Add("PlayerSpawnedVehicle","BearCatG3",function(a,b)
if b:GetModel()=="models/perrynsvehicles/bearcat_g3/bearcat_g3.mdl"
	then b.Button=ents.Create("kx_button")b.Button:SetPos(b:GetPos()+b:GetUp()*59+b:GetForward()*-150)
	b.Button:SetVehicle(b)
	b.Button:SetAngles(b:GetAngles()+Angle(90,-90,0))
	b.Button:Spawn() 
end

end)
end