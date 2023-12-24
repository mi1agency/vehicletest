local Category = "Perryn's Ported Vehicles"

local V = {
				// Required information
				Name =	"1985 Chevrolet Stepvan",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Perryn",
				Information = "Drive Carefully",
				Model =	"models/perrynsvehicles/chevrolet_stepvan/chevrolet_stepvan.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/perryn/chevrolet_stepvan.txt"
					    }
}

list.Set( "Vehicles", "perryn_chevrolet_stepvan", V )

if SERVER then hook.Add("PlayerSpawnedVehicle","ChevroletStepvan",function(a,b)
if b:GetModel()=="models/perrynsvehicles/chevrolet_stepvan/chevrolet_stepvan.mdl"
	then b.Button=ents.Create("kx_button")b.Button:SetPos(b:GetPos()+b:GetUp()*59+b:GetForward()*-150)
	b.Button:SetVehicle(b)
	b.Button:SetAngles(b:GetAngles()+Angle(90,-90,0))
	b.Button:Spawn() 
end

end)
end