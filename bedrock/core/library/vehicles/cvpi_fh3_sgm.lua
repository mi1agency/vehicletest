local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2010 Ford Crown Victoria P7B",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/cvpi_fh3.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/cvpi_fh3.txt"
					    }
}

list.Set( "Vehicles", "cvpi_fh3_sgm", V )


if !cvpi1sgmAddProps_List then cvpi1sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","cvpi1sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/cvpi_fh3.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/cvpi_fh3_3.mdl" )
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

        table.insert(cvpi1sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "cvpi1sgmSyncChanges", function()
	if cvpi1sgmAddProps_List and (!cvpi1sgmSyncChanges_Timer or CurTime() >= cvpi1sgmSyncChanges_Timer) then
		for k, v in pairs(cvpi1sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				cvpi1sgmAddProps_List[k] = nil
			end
		end
		cvpi1sgmSyncChanges_Timer = CurTime()+0.5
	end
end)

if !cvpi2sgmAddProps_List then cvpi2sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","cvpi2sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/cvpi_fh3.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/cvpi_fh3_4.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(cvpi2sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "cvpi2sgmSyncChanges", function()
	if cvpi2sgmAddProps_List and (!cvpi2sgmSyncChanges_Timer or CurTime() >= cvpi2sgmSyncChanges_Timer) then
		for k, v in pairs(cvpi2sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				cvpi2sgmAddProps_List[k] = nil
			end
		end
		cvpi2sgmSyncChanges_Timer = CurTime()+0.5
	end
end)

if !cvpienginesgmAddProps_List then cvpienginesgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","cvpienginesgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/cvpi_fh3.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/cvpi_fh3_engine.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(cvpienginesgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "cvpienginesgmSyncChanges", function()
	if cvpienginesgmAddProps_List and (!cvpienginesgmSyncChanges_Timer or CurTime() >= cvpienginesgmSyncChanges_Timer) then
		for k, v in pairs(cvpienginesgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				cvpienginesgmAddProps_List[k] = nil
			end
		end
		cvpienginesgmSyncChanges_Timer = CurTime()+0.5
	end
end)

