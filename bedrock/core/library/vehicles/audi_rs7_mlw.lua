local V = {
				// Required information
				Name =	"Audi RS7 2020",
				Class = "prop_vehicle_jeep",
				Category = "MLW Autos",

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/mlw/audi_rs7.mdl",


				KeyValues = {				
								vehiclescript =	"scripts/vehicles/mlw/audirs7.txt"
					    }
}

if !rs71sgmAddProps_List then rs71sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","rs71sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/mlw/audi_rs7.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/mlw/1audi_rs7.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(rs71sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "rs71sgmSyncChanges", function()
	if rs71sgmAddProps_List and (!rs71sgmSyncChanges_Timer or CurTime() >= rs71sgmSyncChanges_Timer) then
		for k, v in pairs(rs71sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				rs71sgmAddProps_List[k] = nil
			end
		end
		rs71sgmSyncChanges_Timer = CurTime()+0.5
	end
end)
list.Set( "Vehicles", "audi_rs7_2020_mlw", V )
