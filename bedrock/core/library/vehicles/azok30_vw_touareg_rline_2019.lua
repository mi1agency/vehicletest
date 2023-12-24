local Category = "Azok30"

local V = {
				// Required information
				Name =	"Volkswagen Touareg RLine 2019",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Azok30",
				Information = "vroom vroom",
				Model =	"models/azok30/vw_touareg_rline_2019.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/azok30/vw_touareg_rline_2019.txt"
					    }
}

list.Set( "Vehicles", "azok30_vw_touareg_rline_2019", V )

if !VW_TOUAREG_R_2019_NEWAddProps_List then VW_TOUAREG_R_2019_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_NEWAddProps_List and (!VW_TOUAREG_R_2019_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_1_NEWAddProps_List then VW_TOUAREG_R_2019_1_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_1_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part1.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_1_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_1_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_1_NEWAddProps_List and (!VW_TOUAREG_R_2019_1_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_1_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_1_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_1_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_1_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_2_NEWAddProps_List then VW_TOUAREG_R_2019_2_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_2_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part2.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_2_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_2_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_2_NEWAddProps_List and (!VW_TOUAREG_R_2019_2_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_2_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_2_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_2_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_2_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_3_NEWAddProps_List then VW_TOUAREG_R_2019_3_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_3_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part3.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_3_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_3_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_3_NEWAddProps_List and (!VW_TOUAREG_R_2019_3_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_3_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_3_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_3_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_3_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_4_NEWAddProps_List then VW_TOUAREG_R_2019_4_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_4_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part4.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_4_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_4_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_4_NEWAddProps_List and (!VW_TOUAREG_R_2019_4_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_4_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_4_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_4_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_4_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_5_NEWAddProps_List then VW_TOUAREG_R_2019_5_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_5_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part5.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_5_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_5_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_5_NEWAddProps_List and (!VW_TOUAREG_R_2019_5_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_5_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_5_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_5_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_5_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_6_NEWAddProps_List then VW_TOUAREG_R_2019_6_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_6_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part6.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_6_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_6_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_6_NEWAddProps_List and (!VW_TOUAREG_R_2019_6_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_6_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_6_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_6_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_6_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_7_NEWAddProps_List then VW_TOUAREG_R_2019_7_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_7_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part7.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_7_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_7_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_7_NEWAddProps_List and (!VW_TOUAREG_R_2019_7_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_7_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_7_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_7_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_7_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_8_NEWAddProps_List then VW_TOUAREG_R_2019_8_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_8_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part8.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_8_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_8_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_8_NEWAddProps_List and (!VW_TOUAREG_R_2019_8_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_8_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_8_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_8_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_8_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_9_NEWAddProps_List then VW_TOUAREG_R_2019_9_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_9_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part9.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_9_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_9_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_9_NEWAddProps_List and (!VW_TOUAREG_R_2019_9_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_9_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_9_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_9_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_9_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_10_NEWAddProps_List then VW_TOUAREG_R_2019_10_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_10_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part10.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_10_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_10_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_10_NEWAddProps_List and (!VW_TOUAREG_R_2019_10_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_10_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_10_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_10_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_10_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_11_NEWAddProps_List then VW_TOUAREG_R_2019_11_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_11_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part11.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_11_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_11_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_11_NEWAddProps_List and (!VW_TOUAREG_R_2019_11_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_11_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_11_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_11_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_11_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_12_NEWAddProps_List then VW_TOUAREG_R_2019_12_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_12_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part12.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_12_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_12_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_12_NEWAddProps_List and (!VW_TOUAREG_R_2019_12_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_12_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_12_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_12_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_12_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_13_NEWAddProps_List then VW_TOUAREG_R_2019_13_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_13_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part13.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_13_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_13_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_13_NEWAddProps_List and (!VW_TOUAREG_R_2019_13_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_13_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_13_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_13_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_13_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_14_NEWAddProps_List then VW_TOUAREG_R_2019_14_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_14_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part14.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_14_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_14_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_14_NEWAddProps_List and (!VW_TOUAREG_R_2019_14_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_14_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_14_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_14_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_14_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_15_NEWAddProps_List then VW_TOUAREG_R_2019_15_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_15_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part15.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_15_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_15_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_15_NEWAddProps_List and (!VW_TOUAREG_R_2019_15_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_15_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_15_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_15_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_15_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_16_NEWAddProps_List then VW_TOUAREG_R_2019_16_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_16_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part16.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_16_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_16_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_16_NEWAddProps_List and (!VW_TOUAREG_R_2019_16_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_16_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_16_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_16_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_16_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_17_NEWAddProps_List then VW_TOUAREG_R_2019_17_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_17_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part17.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_17_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_17_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_17_NEWAddProps_List and (!VW_TOUAREG_R_2019_17_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_17_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_17_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_17_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_17_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_18_NEWAddProps_List then VW_TOUAREG_R_2019_18_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_18_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part18.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_18_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_18_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_18_NEWAddProps_List and (!VW_TOUAREG_R_2019_18_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_18_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_18_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_18_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_18_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_TOUAREG_R_2019_19_NEWAddProps_List then VW_TOUAREG_R_2019_19_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_TOUAREG_R_2019_19_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_touareg_rline_2019.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_touareg_rline_2019_part19.mdl" )
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

        table.insert(VW_TOUAREG_R_2019_19_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_TOUAREG_R_2019_19_NEWSyncChanges", function()
	if VW_TOUAREG_R_2019_19_NEWAddProps_List and (!VW_TOUAREG_R_2019_19_NEWSyncChanges_Timer or CurTime() >= VW_TOUAREG_R_2019_19_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_TOUAREG_R_2019_19_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_TOUAREG_R_2019_19_NEWAddProps_List[k] = nil
			end
		end
		VW_TOUAREG_R_2019_19_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)