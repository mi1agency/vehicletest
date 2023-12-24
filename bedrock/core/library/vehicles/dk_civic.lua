local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
    -- Required information
    Name = "Honda Civic 1999 Si Coupe",
    Model = "models/dk_cars/honda/civic/civic_hyivic.mdl",
    Class = PrVeh,
    Category = Cat,

    -- Optional information
    Author = "DangerKiddy",
    Information = "",

    KeyValues = {
        vehiclescript = "scripts/vehicles/dkcars/dk_civic.txt"
    }
}
list.Set( "Vehicles", "dk_civic", V )

function DK_CIVIC_Spawn_props(ply, vehicle)
    if vehicle:GetModel( ) == "models/dk_cars/honda/civic/civic_hyivic.mdl" then
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

        local bump_f = ents.Create( "dk_civic_bumpf" )
        if ( !IsValid( bump_f ) ) then return end
        bump_f:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        bump_f:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        bump_f:SetOwner( vehicle )
        bump_f:Spawn()

        constraint.Weld( vehicle, bump_f, 0, 0, 0, true, false )

        local bump_r = ents.Create( "dk_civic_bumpr" )
        if ( !IsValid( bump_r ) ) then return end
        bump_r:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        bump_r:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        bump_r:SetOwner( vehicle )
        bump_r:Spawn()

        constraint.Weld( vehicle, bump_r, 0, 0, 0, true, false )

        local hood = ents.Create( "dk_civic_hood" )
        if ( !IsValid( hood ) ) then return end
        hood:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        hood:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        hood:SetOwner( vehicle )
        hood:Spawn()

        constraint.Weld( vehicle, hood, 0, 0, 0, true, false )

        local wnd = ents.Create( "dk_civic_wnd" )
        if ( !IsValid( wnd ) ) then return end
        wnd:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        wnd:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        wnd:SetOwner( vehicle )
        wnd:Spawn()

        constraint.Weld( vehicle, wnd, 0, 0, 0, true, false )

        local gl_l_l = ents.Create( "dk_civic_gl_l_l" )
        if ( !IsValid( gl_l_l ) ) then return end
        gl_l_l:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        gl_l_l:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        gl_l_l:SetOwner( vehicle )
        gl_l_l:Spawn()

        constraint.Weld( vehicle, gl_l_l, 0, 0, 0, true, false )

        local gl_l_r = ents.Create( "dk_civic_gl_l_r" )
        if ( !IsValid( gl_l_r ) ) then return end
        gl_l_r:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        gl_l_r:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        gl_l_r:SetOwner( vehicle )
        gl_l_r:Spawn()

        constraint.Weld( vehicle, gl_l_r, 0, 0, 0, true, false )

        table.insert(dk_civic_AddProps_List, {vehicle, prop1, bump_f, gl_l_r, gl_l_l, wnd, hood, bump_r})
        // Ensure that things are removed
        vehicle:CallOnRemove( "RemoveProps", function( vehicle, prop1, bump_f, gl_l_r, gl_l_l, wnd, hood, bump_r)
            if IsValid(prop1) then
                prop1:Remove()
            end
            if IsValid(bump_f) then
                bump_f:Remove()
            end
            if IsValid(bump_r) then
                bump_r:Remove()
            end
            if IsValid(hood) then
                hood:Remove()
            end
            if IsValid(gl_l_r) then
                gl_l_r:Remove()
            end
            if IsValid(gl_l_l) then
                gl_l_l:Remove()
            end
            if IsValid(wnd) then
                wnd:Remove()
            end
        end, prop1, bump_f, gl_l_r, gl_l_l, wnd, hood, bump_r)
    end
end

if !dk_civic_AddProps_List then dk_civic_AddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","dk_civic_AddProps", function( ply, vehicle )
    DK_CIVIC_Spawn_props(ply, vehicle)
end)
-- Yes, freemmaann did code this --
hook.Add("Think", "dk_civic_SyncChanges", function()
    if dk_civic_AddProps_List and (!dk_civic_SyncChanges_Timer or CurTime() >= dk_civic_SyncChanges_Timer) then
        for k, v in pairs(dk_civic_AddProps_List) do
            if VC then  
                --print(v[1]:VC_getHealth(true))
            end

            if IsValid(v[1]) and IsValid(v[2]) then
                v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
            else
                dk_civic_AddProps_List[k] = nil
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
        dk_civic_SyncChanges_Timer = CurTime()+0.5
    end
end)