local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2019 Toyota Supra",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/19supra.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/19supra.txt"
					    }
}

list.Set( "Vehicles", "19supra_sgm", V )

if !supragr1sgmAddProps_List then supragr1sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","supragr1sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/19supra.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/19supra_2.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
	prop1:AddEffects(EF_BONEMERGE)
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")
	prop1:Fire("SetParentAttachment","vehicle_engine")

        table.insert(supragr1sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "supragr1sgmSyncChanges", function()
	if supragr1sgmAddProps_List and (!supragr1sgmSyncChanges_Timer or CurTime() >= supragr1sgmSyncChanges_Timer) then
		for k, v in pairs(supragr1sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				supragr1sgmAddProps_List[k] = nil
			end
		end
		supragr1sgmSyncChanges_Timer = CurTime()+0.5
	end
end)

if !supragr2sgmAddProps_List then supragr2sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","supragr2sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/19supra.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/19supra_3.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
	prop1:AddEffects(EF_BONEMERGE)
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")
	prop1:Fire("SetParentAttachment","vehicle_engine")

        table.insert(supragr2sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "supragr2sgmSyncChanges", function()
	if supragr2sgmAddProps_List and (!supragr2sgmSyncChanges_Timer or CurTime() >= supragr2sgmSyncChanges_Timer) then
		for k, v in pairs(supragr2sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				supragr2sgmAddProps_List[k] = nil
			end
		end
		supragr2sgmSyncChanges_Timer = CurTime()+0.5
	end
end)

if !supragr3sgmAddProps_List then supragr3sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","supragr3sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/19supra.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/19supra_4.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
	prop1:AddEffects(EF_BONEMERGE)
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")
	prop1:Fire("SetParentAttachment","vehicle_engine")

        table.insert(supragr3sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "supragr3sgmSyncChanges", function()
	if supragr3sgmAddProps_List and (!supragr3sgmSyncChanges_Timer or CurTime() >= supragr3sgmSyncChanges_Timer) then
		for k, v in pairs(supragr3sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				supragr3sgmAddProps_List[k] = nil
			end
		end
		supragr3sgmSyncChanges_Timer = CurTime()+0.5
	end
end)