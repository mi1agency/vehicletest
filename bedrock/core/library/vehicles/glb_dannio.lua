local Category = "Dannio's Cars"

local V = {
				// Required information
				Name =	"Mercedes-Benz GLB 2020",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "ItzDannio25",
				Information = "Pedro Nieto Iglesias",
				Model =	"models/dannio/glb.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/dannio/glb.txt"
					    }
}

list.Set( "Vehicles", "dannio_2020_mercedesbenz_glb", V )

if not SERVER then return end

hook.Add("PlayerSpawnedVehicle", "glbtrash::SpawnSubModel", function(ply, vehicle)
	if vehicle:GetModel() ~= "models/dannio/glb.mdl" then return end

	local prop = ents.Create("prop_dynamic_ornament")
	if not IsValid(prop) then return end

	prop:SetModel("models/dannio/glbpart.mdl")
	prop:SetPos(vehicle:GetPos())
	prop:SetAngles(vehicle:GetAngles())
	prop:SetParent(vehicle)
	prop:SetOwner(vehicle)
	prop:Spawn()
	prop:SetNoDraw(false)
	prop:DrawShadow(true)
	prop:Fire("DisableCollision")

	vehicle:CallOnRemove("glbtrash::RemoveProp", function(vehicle, prop)
		if IsValid(prop) then prop:Remove() end
	end, prop)

	prop:CallOnRemove("glbtrash::RemoveParentVehicle", function(prop, vehicle)
		if IsValid(vehicle) then vehicle:Remove() end
	end, vehicle)
end)