local Category = "SGM Cars"

local V = {
				// Required information
				Name =	"2016 Ford Police Interceptor Utility",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/sentry/16fpiu_new.mdl",
 
                                           

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/sentry/16fpiu.txt"
					    }
}

list.Set( "Vehicles", "16fpiu_new_sgm", V )






if !FPIU1_NEWAddProps_List then FPIU1_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","FPIU1_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/16fpiu_new.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/16fpiu_new2.mdl" )
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

        table.insert(FPIU1_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "FPIU1_NEWSyncChanges", function()
	if FPIU1_NEWAddProps_List and (!FPIU1_NEWSyncChanges_Timer or CurTime() >= FPIU1_NEWSyncChanges_Timer) then
		for k, v in pairs(FPIU1_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				FPIU1_NEWAddProps_List[k] = nil
			end
		end
		FPIU1_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !FPIU2_NEWAddProps_List then FPIU2_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","FPIU2_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/16fpiu_new.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/16fpiu_new3.mdl" )
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

        table.insert(FPIU2_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "FPIU2_NEWSyncChanges", function()
	if FPIU2_NEWAddProps_List and (!FPIU2_NEWSyncChanges_Timer or CurTime() >= FPIU2_NEWSyncChanges_Timer) then
		for k, v in pairs(FPIU2_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				FPIU2_NEWAddProps_List[k] = nil
			end
		end
		FPIU2_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !FPIU3_NEWAddProps_List then FPIU3_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","FPIU3_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/16fpiu_new.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/16fpiu_new4.mdl" )
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

        table.insert(FPIU3_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "FPIU3_NEWSyncChanges", function()
	if FPIU3_NEWAddProps_List and (!FPIU3_NEWSyncChanges_Timer or CurTime() >= FPIU3_NEWSyncChanges_Timer) then
		for k, v in pairs(FPIU3_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				FPIU3_NEWAddProps_List[k] = nil
			end
		end
		FPIU3_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !FPIU4_NEWAddProps_List then FPIU4_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","FPIU4_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/16fpiu_new.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/16fpiu_new5.mdl" )
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

        table.insert(FPIU4_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "FPIU4_NEWSyncChanges", function()
	if FPIU4_NEWAddProps_List and (!FPIU4_NEWSyncChanges_Timer or CurTime() >= FPIU4_NEWSyncChanges_Timer) then
		for k, v in pairs(FPIU4_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				FPIU4_NEWAddProps_List[k] = nil
			end
		end
		FPIU4_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !FPIU5_NEWAddProps_List then FPIU5_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","FPIU5_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/16fpiu_new.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/16fpiu_new6.mdl" )
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

        table.insert(FPIU5_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "FPIU5_NEWSyncChanges", function()
	if FPIU5_NEWAddProps_List and (!FPIU5_NEWSyncChanges_Timer or CurTime() >= FPIU5_NEWSyncChanges_Timer) then
		for k, v in pairs(FPIU5_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				FPIU5_NEWAddProps_List[k] = nil
			end
		end
		FPIU5_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)


if !FPIU6_NEWAddProps_List then FPIU6_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","FPIU6_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/16fpiu_new.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/16fpiu_new7.mdl" )
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

        table.insert(FPIU6_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "FPIU6_NEWSyncChanges", function()
	if FPIU6_NEWAddProps_List and (!FPIU6_NEWSyncChanges_Timer or CurTime() >= FPIU6_NEWSyncChanges_Timer) then
		for k, v in pairs(FPIU6_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				FPIU6_NEWAddProps_List[k] = nil
			end
		end
		FPIU6_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !FPIU7_NEWAddProps_List then FPIU7_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","FPIU7_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/16fpiu_new.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/16fpiu_new8.mdl" )
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

        table.insert(FPIU7_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "FPIU7_NEWSyncChanges", function()
	if FPIU7_NEWAddProps_List and (!FPIU7_NEWSyncChanges_Timer or CurTime() >= FPIU7_NEWSyncChanges_Timer) then
		for k, v in pairs(FPIU7_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				FPIU7_NEWAddProps_List[k] = nil
			end
		end
		FPIU7_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !FPIU8_NEWAddProps_List then FPIU8_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","FPIU8_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/16fpiu_new.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/16fpiu_new9.mdl" )
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

        table.insert(FPIU8_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "FPIU8_NEWSyncChanges", function()
	if FPIU8_NEWAddProps_List and (!FPIU8_NEWSyncChanges_Timer or CurTime() >= FPIU8_NEWSyncChanges_Timer) then
		for k, v in pairs(FPIU8_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				FPIU8_NEWAddProps_List[k] = nil
			end
		end
		FPIU8_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)


if !FPIU9_NEWAddProps_List then FPIU9_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","FPIU9_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/16fpiu_new.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/16fpiu_new10.mdl" )
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

        table.insert(FPIU9_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "FPIU9_NEWSyncChanges", function()
	if FPIU9_NEWAddProps_List and (!FPIU9_NEWSyncChanges_Timer or CurTime() >= FPIU9_NEWSyncChanges_Timer) then
		for k, v in pairs(FPIU9_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				FPIU9_NEWAddProps_List[k] = nil
			end
		end
		FPIU9_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !FPIU10_NEWAddProps_List then FPIU10_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","FPIU10_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/16fpiu_new.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/16fpiu_new11.mdl" )
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

        table.insert(FPIU10_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "FPIU10_NEWSyncChanges", function()
	if FPIU10_NEWAddProps_List and (!FPIU10_NEWSyncChanges_Timer or CurTime() >= FPIU10_NEWSyncChanges_Timer) then
		for k, v in pairs(FPIU10_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				FPIU10_NEWAddProps_List[k] = nil
			end
		end
		FPIU10_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !FPIU11_NEWAddProps_List then FPIU11_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","FPIU11_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/sentry/16fpiu_new.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/sentry/16fpiu_new12.mdl" )
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

        table.insert(FPIU11_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "FPIU11_NEWSyncChanges", function()
	if FPIU11_NEWAddProps_List and (!FPIU11_NEWSyncChanges_Timer or CurTime() >= FPIU11_NEWSyncChanges_Timer) then
		for k, v in pairs(FPIU11_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				FPIU11_NEWAddProps_List[k] = nil
			end
		end
		FPIU11_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)
