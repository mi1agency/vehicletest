local Category = "Azok30"

local V = {
				// Required information
				Name =	"Volkswagen Polo 2018 RLine",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Azok30",
				Information = "vroom vroom",
				Model =	"models/azok30/vw_polo_2018_rline.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/azok30/vw_polo_2018_rline.txt"
					    }
}

list.Set( "Vehicles", "azok30_vw_polo_2018_rline", V )

if !VW_POLO_2018_NEWAddProps_List then VW_POLO_2018_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_POLO_2018_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_polo_2018_rline.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_polo_2018_rline_part.mdl" )
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

        table.insert(VW_POLO_2018_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_POLO_2018_NEWSyncChanges", function()
	if VW_POLO_2018_NEWAddProps_List and (!VW_POLO_2018_NEWSyncChanges_Timer or CurTime() >= VW_POLO_2018_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_POLO_2018_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_POLO_2018_NEWAddProps_List[k] = nil
			end
		end
		VW_POLO_2018_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)

if !VW_POLO_2018_1_NEWAddProps_List then VW_POLO_2018_1_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","VW_POLO_2018_1_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/vw_polo_2018_rline.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/vw_polo_2018_rline_part1.mdl" )
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

        table.insert(VW_POLO_2018_1_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "VW_POLO_2018_1_NEWSyncChanges", function()
	if VW_POLO_2018_1_NEWAddProps_List and (!VW_POLO_2018_1_NEWSyncChanges_Timer or CurTime() >= VW_POLO_2018_1_NEWSyncChanges_Timer) then
		for k, v in pairs(VW_POLO_2018_1_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				VW_POLO_2018_1_NEWAddProps_List[k] = nil
			end
		end
		VW_POLO_2018_1_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)