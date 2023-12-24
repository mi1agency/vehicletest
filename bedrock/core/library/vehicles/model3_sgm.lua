local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2019 Tesla Model 3",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/model3.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/model3.txt"
					    }
}

list.Set( "Vehicles", "model3_sgm", V )

if !Model31_NEWAddProps_List then Model31_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","Model31_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/model3.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/model3_2.mdl" )
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

        table.insert(Model31_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "Model31_NEWSyncChanges", function()
	if Model31_NEWAddProps_List and (!Model31_NEWSyncChanges_Timer or CurTime() >= Model31_NEWSyncChanges_Timer) then
		for k, v in pairs(Model31_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				Model31_NEWAddProps_List[k] = nil
			end
		end
		Model31_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !Model32_NEWAddProps_List then Model32_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","Model32_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/model3.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/model3_3.mdl" )
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

        table.insert(Model32_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "Model32_NEWSyncChanges", function()
	if Model32_NEWAddProps_List and (!Model32_NEWSyncChanges_Timer or CurTime() >= Model32_NEWSyncChanges_Timer) then
		for k, v in pairs(Model32_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				Model32_NEWAddProps_List[k] = nil
			end
		end
		Model32_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !Model33_NEWAddProps_List then Model33_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","Model33_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/model3.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/model3_4.mdl" )
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

        table.insert(Model33_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "Model33_NEWSyncChanges", function()
	if Model33_NEWAddProps_List and (!Model33_NEWSyncChanges_Timer or CurTime() >= Model33_NEWSyncChanges_Timer) then
		for k, v in pairs(Model33_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				Model33_NEWAddProps_List[k] = nil
			end
		end
		Model33_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !Model34_NEWAddProps_List then Model34_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","Model34_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/model3.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/model3_5.mdl" )
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

        table.insert(Model34_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "Model34_NEWSyncChanges", function()
	if Model34_NEWAddProps_List and (!Model34_NEWSyncChanges_Timer or CurTime() >= Model34_NEWSyncChanges_Timer) then
		for k, v in pairs(Model34_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				Model34_NEWAddProps_List[k] = nil
			end
		end
		Model34_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)