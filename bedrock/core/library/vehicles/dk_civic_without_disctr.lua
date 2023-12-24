local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
    -- Required information
    Name = "Honda Civic 1999 Si Coupe(not breakable)",
    Model = "models/dk_cars/honda/civic/civic_hyivic_non.mdl",
    Class = PrVeh,
    Category = Cat,

    -- Optional information
    Author = "DangerKiddy",
    Information = "",

    KeyValues = {
        vehiclescript = "scripts/vehicles/dkcars/dk_civic.txt"
    }
}
list.Set( "Vehicles", "dk_civic_nonbrkbl", V )

if !dk_civic_non_AddProps_List then dk_civic_non_AddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","dk_civic_non_AddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/dk_cars/honda/civic/civic_hyivic_non.mdl" then
        -- Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/dk_cars/honda/civic/extra.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        local prop2 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop2 ) ) then return end
        prop2:SetModel( "models/dk_cars/honda/civic/bfr.mdl" )
        prop2:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop2:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop2:SetParent( vehicle )
        prop2:SetOwner( ply )
        prop2:Spawn()
        prop2:SetNoDraw(false)
        prop2:DrawShadow(true)
        prop2:Fire("DisableCollision")

        local prop3 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop3 ) ) then return end
        prop3:SetModel( "models/dk_cars/honda/civic/br.mdl" )
        prop3:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop3:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop3:SetParent( vehicle )
        prop3:SetOwner( ply )
        prop3:Spawn()
        prop3:SetNoDraw(false)
        prop3:DrawShadow(true)
        prop3:Fire("DisableCollision")

        local prop4 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop4 ) ) then return end
        prop4:SetModel( "models/dk_cars/honda/civic/hood.mdl" )
        prop4:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop4:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop4:SetParent( vehicle )
        prop4:SetOwner( ply )
        prop4:Spawn()
        prop4:SetNoDraw(false)
        prop4:DrawShadow(true)
        prop4:Fire("DisableCollision")

        local prop5 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop5 ) ) then return end
        prop5:SetModel( "models/dk_cars/honda/civic/wnd.mdl" )
        prop5:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop5:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop5:SetParent( vehicle )
        prop5:SetOwner( ply )
        prop5:Spawn()
        prop5:SetNoDraw(false)
        prop5:DrawShadow(true)
        prop5:Fire("DisableCollision")

        local prop6 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop6 ) ) then return end
        prop6:SetModel( "models/dk_cars/honda/civic/glass_light_l.mdl" )
        prop6:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop6:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop6:SetParent( vehicle )
        prop6:SetOwner( ply )
        prop6:Spawn()
        prop6:SetNoDraw(false)
        prop6:DrawShadow(true)
        prop6:Fire("DisableCollision")

        local prop7 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop7 ) ) then return end
        prop7:SetModel( "models/dk_cars/honda/civic/glass_light_r.mdl" )
        prop7:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop7:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop7:SetParent( vehicle )
        prop7:SetOwner( ply )
        prop7:Spawn()
        prop7:SetNoDraw(false)
        prop7:DrawShadow(true)
        prop7:Fire("DisableCollision")

        table.insert(dk_civic_non_AddProps_List, {vehicle, prop1, prop2, prop3, prop4, prop5, prop6, prop7})
        // Ensure that things are removed
        vehicle:CallOnRemove( "RemoveProps", function( vehicle, prop1, prop2, prop3, prop4, prop5, prop6, prop7)
            if IsValid(prop1) then
                prop1:Remove()
            end
            if IsValid(prop2) then
                prop2:Remove()
            end
            if IsValid(prop3) then
                prop3:Remove()
            end
            if IsValid(prop4) then
                prop4:Remove()
            end
            if IsValid(prop5) then
                prop5:Remove()
            end
            if IsValid(prop6) then
                prop6:Remove()
            end
            if IsValid(prop7) then
                prop7:Remove()
            end
        end, prop1, prop2, prop3, prop4, prop5, prop6, prop7)
        prop1:CallOnRemove( "RemoveParent", function( prop1, vehicle )
            if IsValid(vehicle) then
            vehicle:Remove()
            end
        end, vehicle)
        prop2:CallOnRemove( "RemoveParent", function( prop2, vehicle )
            if IsValid(vehicle) then
            vehicle:Remove()
            end
        end, vehicle)
        prop3:CallOnRemove( "RemoveParent", function( prop3, vehicle )
            if IsValid(vehicle) then
            vehicle:Remove()
            end
        end, vehicle)
        prop4:CallOnRemove( "RemoveParent", function( prop4, vehicle )
            if IsValid(vehicle) then
            vehicle:Remove()
            end
        end, vehicle)
        prop5:CallOnRemove( "RemoveParent", function( prop5, vehicle )
            if IsValid(vehicle) then
            vehicle:Remove()
            end
        end, vehicle)
        prop6:CallOnRemove( "RemoveParent", function( prop6, vehicle )
            if IsValid(vehicle) then
            vehicle:Remove()
            end
        end, vehicle)
        prop7:CallOnRemove( "RemoveParent", function( prop7, vehicle )
            if IsValid(vehicle) then
            vehicle:Remove()
            end
        end, vehicle)
    end
end)
-- Yes, freemmaann did code this --
hook.Add("Think", "dk_civic_non_SyncChanges", function()
    if dk_civic_non_AddProps_List and (!dk_civic_non_SyncChanges_Timer or CurTime() >= dk_civic_non_SyncChanges_Timer) then
        for k, v in pairs(dk_civic_non_AddProps_List) do
            if IsValid(v[1]) and IsValid(v[2]) then
                v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
            else
                dk_civic_non_AddProps_List[k] = nil
            end
            if IsValid(v[1]) and IsValid(v[3]) then
               v[3]:SetMaterial(v[1]:GetMaterial()) v[3]:SetColor(v[1]:GetColor()) v[3]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[7]) then
               v[7]:SetMaterial(v[1]:GetMaterial()) v[7]:SetColor(v[1]:GetColor()) v[7]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[8]) then
               v[8]:SetMaterial(v[1]:GetMaterial()) v[8]:SetColor(v[1]:GetColor()) v[8]:SetSkin(v[1]:GetSkin())
            end
        end
        dk_civic_non_SyncChanges_Timer = CurTime()+0.5
    end
end)