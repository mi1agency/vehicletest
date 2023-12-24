
local V = {
				// Required information
				Name =	"Mercedes CLS 53 AMG 2019",
				Class = "prop_vehicle_jeep",
				Category = "MLW Autos",

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/mlw/mercedes_cls_amg_2019.mdl",


				KeyValues = {				
								vehiclescript =	"scripts/vehicles/mlw/cls53amgmlw.txt"
					    }
}
if !mercls1sgmAddProps_List then mercls1sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","mercls1sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/mlw/mercedes_cls_amg_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/mlw/1mercedes_cls_amg_2019.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(mercls1sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "mercls1sgmSyncChanges", function()
	if mercls1sgmAddProps_List and (!mercls1sgmSyncChanges_Timer or CurTime() >= mercls1sgmSyncChanges_Timer) then
		for k, v in pairs(mercls1sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				mercls1sgmAddProps_List[k] = nil
			end
		end
		merclsr1sgmSyncChanges_Timer = CurTime()+0.5
	end
end)

if !mercls2sgmAddProps_List then mercls2sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","mercls2sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/mlw/mercedes_cls_amg_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/mlw/2mercedes_cls_amg_2019.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(mercls2sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "mercls2sgmSyncChanges", function()
	if mercls2sgmAddProps_List and (!mercls2sgmSyncChanges_Timer or CurTime() >= mercls2sgmSyncChanges_Timer) then
		for k, v in pairs(mercls2sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				mercls2sgmAddProps_List[k] = nil
			end
		end
		mercls2sgmSyncChanges_Timer = CurTime()+0.5
	end
end)


if !mercls3sgmAddProps_List then mercls3sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","mercls3sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/mlw/mercedes_cls_amg_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/mlw/3mercedes_cls_amg_2019.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(mercls3sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "mercls3sgmSyncChanges", function()
	if mercls3sgmAddProps_List and (!mercls3sgmSyncChanges_Timer or CurTime() >= mercls3sgmSyncChanges_Timer) then
		for k, v in pairs(mercls3sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				mercls3sgmAddProps_List[k] = nil
			end
		end
		mercls3sgmSyncChanges_Timer = CurTime()+0.5
	end
end)
list.Set( "Vehicles", "merclsmlw", V )

