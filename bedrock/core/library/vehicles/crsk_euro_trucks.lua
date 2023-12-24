local PrVeh = "prop_vehicle_jeep"
local Cat = "CrSk Trucks"


local V = {
	-- Required information
	Name = "DAF 95XF 4x2 2003",
	Model = "models/crsk_autos/daf/95xf_4x2_2003.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_daf_95xf_4x2_2003.txt"
	}
}
list.Set( "Vehicles", "crsk_daf_95xf_4x2_2003", V )

local V = {
	-- Required information
	Name = "Iveco Stralis Hi-Way 560 E6 4x2 2013",
	Model = "models/crsk_autos/iveco/stralis_hi-way_2013.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_iveco_stralis_hi-way_2013.txt"
	}
}
list.Set( "Vehicles", "crsk_iveco_stralis_hi-way_2013", V )

local V = {
	-- Required information
	Name = "Renault Magnum III 4x2 2005",
	Model = "models/crsk_autos/renault/magnum_iii_2005.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_renault_magnum_2005.txt"
	}
}
list.Set( "Vehicles", "crsk_renault_magnum_2005", V )

if !crsk_magnum_AddProps_List then crsk_magnum_AddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","crsk_magnum_AddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/crsk_autos/renault/magnum_iii_2005.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/crsk_autos/renault/magnum_iii_2005_extra.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(crsk_magnum_AddProps_List, {vehicle, prop1})
        // Ensure that things are removed
        vehicle:CallOnRemove( "RemoveProps", function( vehicle, prop1 )
            if IsValid(prop1) then
                prop1:Remove()
            end
        end, prop1 )
        prop1:CallOnRemove( "RemoveParent", function( prop1, vehicle )
            if IsValid(vehicle) then
            vehicle:Remove()
            end
        end, vehicle)
    end
end)
// Yes, freemmaann did code this 
hook.Add("Think", "crsk_magnum_SyncChanges", function()
	if crsk_magnum_AddProps_List and (!crsk_magnum_SyncChanges_Timer or CurTime() >= crsk_magnum_SyncChanges_Timer) then
		for k, v in pairs(crsk_magnum_AddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				crsk_magnum_AddProps_List[k] = nil
			end
		end
		crsk_magnum_SyncChanges_Timer = CurTime()+0.5
	end
end)

local V = {
	-- Required information
	Name = "Scania 164L 580 4x2 2004",
	Model = "models/crsk_autos/scania/164l_580_2004.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_scania_164l_2004.txt"
	}
}
list.Set( "Vehicles", "crsk_scania_164l_2004", V )

