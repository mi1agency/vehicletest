local Category = "Dannio's Cars"

local V = {
				// Required information
				Name =	"Lexus LS 500 2017",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "ItzDannio25",
				Information = "''Que vamos a hacer, o paramos esto, o incrementamos la pandemia, nadie quiere contestar????'' - Skippy 2020 from Fuengirola, Spain.",
				Model =	"models/dannio/ls500n.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/dannio/ls500new.txt"
					    }
}

list.Set( "Vehicles", "dannio_2017_lexus_ls_500", V )

if not SERVER then return end

hook.Add("PlayerSpawnedVehicle", "lsfucking500::SpawnSubModel", function(ply, vehicle)
	if vehicle:GetModel() ~= "models/dannio/ls500n.mdl" then return end

	local prop = ents.Create("prop_dynamic_ornament")
	if not IsValid(prop) then return end

	prop:SetModel("models/dannio/ls500part.mdl")
	prop:SetPos(vehicle:GetPos())
	prop:SetAngles(vehicle:GetAngles())
	prop:SetParent(vehicle)
	prop:SetOwner(vehicle)
	prop:Spawn()
	prop:SetNoDraw(false)
	prop:DrawShadow(true)
	prop:Fire("DisableCollision")

	vehicle:CallOnRemove("lsfucking500::RemoveProp", function(vehicle, prop)
		if IsValid(prop) then prop:Remove() end
	end, prop)

	prop:CallOnRemove("lsfucking500::RemoveParentVehicle", function(prop, vehicle)
		if IsValid(vehicle) then vehicle:Remove() end
	end, vehicle)
end)