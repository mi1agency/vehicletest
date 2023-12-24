local Category = "Azok30"

local V = {
				// Required information
				Name =	"Seat Leon 2017",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Azok30",
				Information = "vroom vroom",
				Model =	"models/azok30/seat_leon_2017.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/azok30/seat_leon_2017.txt"
					    }
}

list.Set( "Vehicles", "azok30_seat_leon_2017", V )

if !S_L_17_NEWAddProps_List then S_L_17_NEWAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","S_L_17_NEWAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/azok30/seat_leon_2017.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/azok30/seat_leon_2017_part.mdl" )
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

        table.insert(S_L_17_NEWAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "S_L_17_NEWSyncChanges", function()
	if S_L_17_NEWAddProps_List and (!S_L_17_NEWSyncChanges_Timer or CurTime() >= S_L_17_NEWSyncChanges_Timer) then
		for k, v in pairs(S_L_17_NEWAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				S_L_17_NEWAddProps_List[k] = nil
			end
		end
		S_L_17_NEWSyncChanges_Timer = CurTime()+0.5
	end
end)