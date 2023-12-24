local V = {
				// Required information
				Name =	"Mercedes GLE 300D 4 matic 2019",
				Class = "prop_vehicle_jeep",
				Category = "MLW Autos",

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/mlw/mercedes_gle_300d.mdl",


				KeyValues = {				
								vehiclescript =	"scripts/vehicles/mlw/gle_300d.txt"
					    }
}
if !gle3001mlwAddProps_List then gle3001mlwAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","gle3001mlwAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/mlw/mercedes_gle_300d.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/mlw/1mercedes_gle_300d.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(gle3001mlwAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "gle3001mlwSyncChanges", function()
	if gle3001mlwAddProps_List and (!gle3001mlwSyncChanges_Timer or CurTime() >= gle3001mlwSyncChanges_Timer) then
		for k, v in pairs(gle3001mlwAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				gle3001mlwAddProps_List[k] = nil
			end
		end
		gle3001mlwSyncChanges_Timer = CurTime()+0.5
	end
end)
list.Set( "Vehicles", "mlw_gle_300d_4matic", V )

