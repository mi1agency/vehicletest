
local V = {
				// Required information
				Name =	"Tesla Roadster 2020",
				Class = "prop_vehicle_jeep",
				Category = "MLW Autos",

				// Optional information
				Author = "SentryGunMan, Turn 10",
				Information = "vroom vroom",
				Model =	"models/mlw/tesla_roadster.mdl",


				KeyValues = {				
								vehiclescript =	"scripts/vehicles/mlw/teslaroadster.txt"
					    }
}
if !roadster1sgmAddProps_List then roadster1sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","roadster1sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/mlw/tesla_roadster.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/mlw/1tesla_roadster.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(roadster1sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "roadster1sgmSyncChanges", function()
	if roadster1sgmAddProps_List and (!roadster1sgmSyncChanges_Timer or CurTime() >= roadster1sgmSyncChanges_Timer) then
		for k, v in pairs(roadster1sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				roadster1sgmAddProps_List[k] = nil
			end
		end
		roadster1sgmSyncChanges_Timer = CurTime()+0.5
	end
end)

if !roadster2sgmAddProps_List then roadster2sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","roadster2sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/mlw/tesla_roadster.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/mlw/2tesla_roadster.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(roadster2sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "roadster2sgmSyncChanges", function()
	if roadster2sgmAddProps_List and (!roadster2sgmSyncChanges_Timer or CurTime() >= roadster2sgmSyncChanges_Timer) then
		for k, v in pairs(roadster2sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				roadster2sgmAddProps_List[k] = nil
			end
		end
		roadster2sgmSyncChanges_Timer = CurTime()+0.5
	end
end)


if !roadster3sgmAddProps_List then roadster3sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","roadster3sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/mlw/tesla_roadster.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/mlw/3tesla_roadster.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(roadster3sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "roadster3sgmSyncChanges", function()
	if roadster3sgmAddProps_List and (!roadster3sgmSyncChanges_Timer or CurTime() >= roadster3sgmSyncChanges_Timer) then
		for k, v in pairs(roadster3sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				roadster3sgmAddProps_List[k] = nil
			end
		end
		roadster3sgmSyncChanges_Timer = CurTime()+0.5
	end
end)

if !roadster4sgmAddProps_List then roadster4sgmAddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","roadster4sgmAddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/mlw/tesla_roadster.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/mlw/4tesla_roadster.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(roadster4sgmAddProps_List, {vehicle, prop1})
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
hook.Add("Think", "roadster4sgmSyncChanges", function()
	if roadster4sgmAddProps_List and (!roadster4sgmSyncChanges_Timer or CurTime() >= roadster4sgmSyncChanges_Timer) then
		for k, v in pairs(roadster4sgmAddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				roadster4sgmAddProps_List[k] = nil
			end
		end
		roadster4sgmSyncChanges_Timer = CurTime()+0.5
	end
end)
list.Set( "Vehicles", "tesla_roadster_mlw", V )

