local V = {
	-- Required information
	Name = "BMW i8 2015",
	Model = "models/crsk_autos/bmw/i8_2015.mdl",
	Class = "prop_vehicle_jeep",
	Category = "CrSk Autos",

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_bmw_i8.txt"
	}
}
list.Set( "Vehicles", "crsk_bmw_i8", V )

if !crsk_i8_AddProps_List then crsk_i8_AddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","crsk_i8_AddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/crsk_autos/bmw/i8_2015.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/crsk_autos/bmw/i8_2015_extra.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(crsk_i8_AddProps_List, {vehicle, prop1})
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
hook.Add("Think", "crsk_i8_SyncChanges", function()
	if crsk_i8_AddProps_List and (!crsk_i8_SyncChanges_Timer or CurTime() >= crsk_i8_SyncChanges_Timer) then
		for k, v in pairs(crsk_i8_AddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				crsk_i8_AddProps_List[k] = nil
			end
		end
		crsk_i8_SyncChanges_Timer = CurTime()+0.5
	end
end)