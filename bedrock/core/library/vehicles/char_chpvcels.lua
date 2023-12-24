local V = {
	-- Required information
	Name = "2015 Dodge Charger Pursuit CHP",
	Model = "models/smcars/2015_dodge_charger_pursuit_chp.mdl",
	Class = "prop_vehicle_jeep",
	Category = "Super's Emergency Cars",

	-- Optional informationS
	Author = "Super Mighty, Turn10",
	Information = "The Ford The Focus The ST",

	KeyValues = {

		vehiclescript = "scripts/vehicles/SuperCars/chevy_caprice.txt"
	}
}
list.Set( "Vehicles", "smc_chargerchp_vcels", V )

local Models = { -- første model er "basemodellen" - den der oftest spawnes igennem spawnmenuen
	'models/smcars/2015_dodge_charger_pursuit_chp.mdl',
	'models/smcars/2015_charger_chp_prop.mdl'
}

local function initBase(curbase, ply)
	local base = ents.Create('prop_physics')
	base:SetModel(Models[1])
	base:SetPos(curbase:GetPos())
	base:SetAngles(curbase:GetAngles())
	base:SetOwner(ply)
	base:Spawn()
	base:Activate()

	curbase:Remove()

	undo.Create('prop')
		undo.AddEntity(base)
		undo.SetPlayer(ply)
	undo.Finish()

	return base
end

local function removeThese(tbl)
	for k, v in ipairs(tbl) do
		if IsValid(v) then
			v:Remove()
		end
	end
end

local function removeModel(ent)
	if ent.SubModels then
		if ent.IsRemoving then return end
		ent.IsRemoving = true
		removeThese(ent.SubModels)
	else
		if ent:GetParent().IsRemoving then return end
		ent:GetParent().IsRemoving = true
		removeThese(ent:GetParent().SubModels)
	end
end

local function initSubModel(base, ply, mdl)
	local smdl = ents.Create('prop_dynamic_ornament')

	if not IsValid(smdl) then
		print('invalid submodel with path: '..mdl)
		return nil
	end

	smdl:SetModel(mdl)
	smdl:SetPos( base:LocalToWorld(Vector(0,0,1.2) ))
	smdl:SetAngles(base:GetAngles())
	smdl:SetParent(base)
	smdl:SetOwner(ply)
	smdl:Spawn()
	smdl:SetNoDraw(false)
	smdl:DrawShadow(true)
	smdl:Fire('DisableCollision')
	smdl:CallOnRemove('RMch_chargerHandle', removeModel)

	return smdl
end

local function initModel(base, ply)

	if base:GetModel() ~= Models[1] then
		if base:IsVehicle() then
			print('Incorrect model for a vehicle spawned. Maybe your Models are incorrect?')
			base:Remove()
			return
		end
			
		base = initBase(base, ply)
	end

	base.SubModels = {}
	base:CallOnRemove('RMch_chargereHandle', removeModel)

	for i = 2, #Models do
		local smdl = initSubModel(base, ply, Models[i])
		table.insert(base.SubModels, smdl)
	end

end

hook.Add('PlayerSpawnedVehicle', 'PSV_ch_charger_Init', function(ply, veh)
	local mdl = veh:GetModel()

	for k, v in ipairs(Models) do
		if v == mdl then
			initModel(veh)
		end
	end
end)