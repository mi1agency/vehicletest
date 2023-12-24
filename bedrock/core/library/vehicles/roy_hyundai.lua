local a = "models/royscars/hyundai/veloster.mdl"
local b = "models/royscars/hyundai/genesis13_bk2.mdl"
local c = "models/royscars/hyundai/genesis10.mdl"
local d = "models/royscars/hyundai/ix20_11.mdl"

local g = "scripts/vehicles/royscars/hyundai/genesis.txt"
local h = "scripts/vehicles/royscars/hyundai/veloster.txt"

local V = {
			Name = "Hyundai Genesis Coupe '10 [BK1]", 
			Class = "prop_vehicle_jeep",
			Category = "Roy's Cars",
			Author = "Royster, Turn10",
			Information = "A Hyundai Genesis Coupe by Royster",
			Model = c,
			KeyValues = {
							vehiclescript	=	g
							}
			}

list.Set("Vehicles", "genesis10roy", V)

local U = {
			Name = "Hyundai Genesis Coupe '13 [BK2]", 
			Class = "prop_vehicle_jeep",
			Category = "Roy's Cars",
			Author = "Royster, Turn10",
			Information = "A Hyundai Genesis Coupe by Royster",
			Model = b,
			KeyValues = {
							vehiclescript	=	g
							}
			}

list.Set("Vehicles", "genesis13roy", U)

local W = {
			Name = "Hyundai Veloster Turbo '13 [FS]", 
			Class = "prop_vehicle_jeep",
			Category = "Roy's Cars",
			Author = "Royster, Turn10",
			Information = "A Hyundai Veloster by Royster",
			Model = a,
			KeyValues = {
							vehiclescript	=	h
							}
			}

list.Set("Vehicles", "veloster13roy", W)

local X = {
			Name = "Hyundai ix20 '11 [JC]", 
			Class = "prop_vehicle_jeep",
			Category = "Roy's Cars",
			Author = "Royster, Turn10",
			Information = "A Hyundai ix20 by Royster",
			Model = d,
			KeyValues = {
							vehiclescript	=	h
							}
			}

list.Set("Vehicles", "ix20roy", X)

hook.Add("PlayerSpawnedVehicle","VelosterPovertyGlass", function( ply, vehicle )
    for _, ent in pairs(ents.FindByClass("gmod_sent_vehicle_fphysics_base*")) do
		if (vehicle:GetClass() ~= "prop_vehicle_jeep") then
	    	if vehicle:GetModel( ) == a or  vehicle:GetModel( ) == d then
				vehicle:SetSubMaterial(22, "models/royscars/hyundai/veloster/red - copy")
			end
		end
	end
end)


hook.Add("PlayerSpawnedVehicle","GenesisPovertyGlass", function( ply, vehicle )
    for _, ent in pairs(ents.FindByClass("gmod_sent_vehicle_fphysics_base*")) do
		if (vehicle:GetClass() ~= "prop_vehicle_jeep") then
	    	if vehicle:GetModel( ) == b then
				vehicle:SetSubMaterial(23, "models/royscars/hyundai/veloster/red - copy")
			end
		end
	end
end)
