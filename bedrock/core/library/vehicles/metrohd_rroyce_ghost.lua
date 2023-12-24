local V = {
	-- Required information
	Name = "Rolls-Royce Ghost",
	Model = "models/metrohd/rroyce_ghost.mdl",
	Class = "prop_vehicle_jeep",
	Category = "MetroHD",

	-- Optional information
	Author = "MetroHD",
	Information = "Vr00m vr00m",

	KeyValues = {
		vehiclescript = "scripts/vehicles/metrohd/rroyce_ghost.txt"
	}
}
list.Set( "Vehicles", "metrohd_rroyce_ghost", V )

if !RRoyce_GhostAddProps_List then RRoyce_GhostAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","RRoyce_GhostAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/metrohd/rroyce_ghost.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/metrohd/rroyce_ghost_extra.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(RRoyce_GhostAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "RRoyce_GhostSyncChanges", function()
	if RRoyce_GhostAddProps_List and (!RRoyce_GhostSyncChanges_Timer or CurTime() >= RRoyce_GhostSyncChanges_Timer) then
		for k, v in pairs(RRoyce_GhostAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				RRoyce_GhostAddProps_List[k] = nil
			end
		end
		RRoyce_GhostSyncChanges_Timer = CurTime()+0.5
	end
end)