local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2012 Dodge Charger PPV",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan",
				Information = "vroom vroom",
				Model =	"models/sentry/12charger_fm7.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/12charger_fm7.txt"
					    }
}

list.Set( "Vehicles", "12charger_fm7_sgm", V )

if !chargerfm71sgmAddProps_List then chargerfm71sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","chargerfm71sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/12charger_fm7.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/12charger_fm7_2.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
	--prop1:AddEffects(EF_BONEMERGE)
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")
	--prop1:Fire("SetParentAttachment","vehicle_engine")

        table.insert(chargerfm71sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "chargerfm71sgmSyncChanges", function()
	if chargerfm71sgmAddProps_List and (!chargerfm71sgmSyncChanges_Timer or CurTime() >= chargerfm71sgmSyncChanges_Timer) then
		for k, v in pairs(chargerfm71sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				chargerfm71sgmAddProps_List[k] = nil
			end
		end
		chargerfm71sgmSyncChanges_Timer = CurTime()+0.5
	end
end)

-- if !chargerfm72sgmAddProps_List then chargerfm72sgmAddProps_List = {} end
-- hook.Add("PlayerSpawnedVehicle","chargerfm72sgmAddProps", function( ply, vehicle )
--     if vehicle:GetModel( ) == "models/sentry/12charger_fm7.mdl" then
--         // Create the actual prop
--         local prop1 = ents.Create( "prop_dynamic" )
--         if ( !IsValid( prop1 ) ) then return end
--         prop1:SetModel( "models/sentry/12charger_fm7_3.mdl" )
--         prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
--         prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
--         prop1:SetParent( vehicle )
-- 	prop1:AddEffects(EF_BONEMERGE)
--         prop1:SetOwner( ply )
--         prop1:Spawn()
--         prop1:SetNoDraw(false)
--         prop1:DrawShadow(true)
--         prop1:Fire("DisableCollision")
-- 	prop1:Fire("SetParentAttachment","vehicle_engine")

--         table.insert(chargerfm72sgmAddProps_List, {vehicle, prop1})
--         // Ensure that things are removed
--         vehicle:CallOnRemove( "RemoveProps", function( vehicle, prop1 )
--             if IsValid(prop1) then
--                 prop1:Remove()
--             end
--         end, prop1 )
--         prop1:CallOnRemove( "RemoveParent", function( prop1, vehicle )
--             if IsValid(vehicle) then
--             vehicle:Remove()
--             end
--         end, vehicle)
--     end
-- end)
-- // Yes, freemmaann did code this 
-- hook.Add("Think", "chargerfm72sgmSyncChanges", function()
-- 	if chargerfm72sgmAddProps_List and (!chargerfm72sgmSyncChanges_Timer or CurTime() >= chargerfm72sgmSyncChanges_Timer) then
-- 		for k, v in pairs(chargerfm72sgmAddProps_List) do
-- 			if IsValid(v[2]) then
-- 				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
-- 				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
-- 				v[2]:SetBodyGroups(bgroupstring)
-- 			else
-- 				chargerfm72sgmAddProps_List[k] = nil
-- 			end
-- 		end
-- 		chargerfm72sgmSyncChanges_Timer = CurTime()+0.5
-- 	end
-- end)