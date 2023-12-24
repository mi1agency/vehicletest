local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
    -- Required information
    Name = "Audi R8 LMS",
    Model = "models/dk_cars/audi/r8/ar8.mdl",
    Class = PrVeh,
    Category = Cat,

    -- Optional information
    Author = "DangerKiddy",
    Information = "",

    KeyValues = {
        vehiclescript = "scripts/vehicles/dkcars/dk_r8.txt"
    }
}
list.Set( "Vehicles", "dk_r8", V )

function DK_r8_Spawn_props(ply, vehicle)
    if vehicle:GetModel( ) == "models/dk_cars/audi/r8/ar8.mdl" then
        -- Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/dk_cars/audi/r8/other.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        local bump_f = ents.Create( "dk_r8_bumpf" )
        if ( !IsValid( bump_f ) ) then return end
        bump_f:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        bump_f:SetAngles( vehicle:LocalToWorldAngles(Angle(0,-90,0)) )
        bump_f:SetOwner( vehicle )
        bump_f:Spawn()

        constraint.Weld( vehicle, bump_f, 0, 0, 0, true, false )
        constraint.Weld( bump_r, bump_f, 0, 0, 0, true, false )
        constraint.Weld( hood, bump_f, 0, 0, 0, true, false )
        constraint.Weld( wnd, bump_f, 0, 0, 0, true, false )
        constraint.Weld( gl_l_l, bump_f, 0, 0, 0, true, false )
        constraint.Weld( gl_l_r, bump_f, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lf_ok, bump_f, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lr, bump_f, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_boot, bump_f, 0, 0, 0, true, false )

        local bump_r = ents.Create( "dk_r8_bumpr" )
        if ( !IsValid( bump_r ) ) then return end
        bump_r:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        bump_r:SetAngles( vehicle:LocalToWorldAngles(Angle(0,-90,0)) )
        bump_r:SetOwner( vehicle )
        bump_r:Spawn()

        constraint.Weld( vehicle, bump_r, 0, 0, 0, true, false )
        constraint.Weld( bump_r, bump_r, 0, 0, 0, true, false )
        constraint.Weld( hood, bump_r, 0, 0, 0, true, false )
        constraint.Weld( wnd, bump_r, 0, 0, 0, true, false )
        constraint.Weld( gl_l_l, bump_r, 0, 0, 0, true, false )
        constraint.Weld( gl_l_r, bump_r, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lf_ok, bump_r, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lr, bump_r, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_boot, bump_r, 0, 0, 0, true, false )

        local hood = ents.Create( "dk_r8_bonnet" )
        if ( !IsValid( hood ) ) then return end
        hood:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        hood:SetAngles( vehicle:LocalToWorldAngles(Angle(0,-90,0)) )
        hood:SetOwner( vehicle )
        hood:Spawn()

        constraint.Weld( vehicle, hood, 0, 0, 0, true, false )
        constraint.Weld( bump_r, hood, 0, 0, 0, true, false )
        constraint.Weld( hood, hood, 0, 0, 0, true, false )
        constraint.Weld( wnd, hood, 0, 0, 0, true, false )
        constraint.Weld( gl_l_l, hood, 0, 0, 0, true, false )
        constraint.Weld( gl_l_r, hood, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lf_ok, hood, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lr, hood, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_boot, hood, 0, 0, 0, true, false )

        local wnd = ents.Create( "dk_r8_wnd" )
        if ( !IsValid( wnd ) ) then return end
        wnd:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        wnd:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        wnd:SetOwner( vehicle )
        wnd:Spawn()
        
        constraint.Weld( vehicle, wnd, 0, 0, 0, true, false )
        constraint.Weld( bump_r, wnd, 0, 0, 0, true, false )
        constraint.Weld( hood, wnd, 0, 0, 0, true, false )
        constraint.Weld( wnd, wnd, 0, 0, 0, true, false )
        constraint.Weld( gl_l_l, wnd, 0, 0, 0, true, false )
        constraint.Weld( gl_l_r, wnd, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lf_ok, wnd, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lr, wnd, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_boot, wnd, 0, 0, 0, true, false )

        local gl_l_l = ents.Create( "dk_r8_lightfl" )
        if ( !IsValid( gl_l_l ) ) then return end
        gl_l_l:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        gl_l_l:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        gl_l_l:SetOwner( vehicle )
        gl_l_l:Spawn()
        
        constraint.Weld( vehicle, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( bump_r, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( hood, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( wnd, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( gl_l_l, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( gl_l_r, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_gl_l_l_r, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lf_ok, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lr, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_boot, gl_l_l, 0, 0, 0, true, false )

        local gl_l_r = ents.Create( "dk_r8_lighrrl" )
        if ( !IsValid( gl_l_r ) ) then return end
        gl_l_r:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        gl_l_r:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        gl_l_r:SetOwner( vehicle )
        gl_l_r:Spawn()
        
        constraint.Weld( vehicle, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( bump_r, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( hood, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( wnd, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( gl_l_l, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( gl_l_r, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_gl_l_l_r, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lf_ok, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lr, gl_l_l, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_boot, gl_l_l, 0, 0, 0, true, false )

        local dk_r8_door_lf_ok = ents.Create( "dk_r8_door_lf_ok" )
        if ( !IsValid( dk_r8_door_lf_ok ) ) then return end
        dk_r8_door_lf_ok:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        dk_r8_door_lf_ok:SetAngles( vehicle:LocalToWorldAngles(Angle(0,-90,0)) )
        dk_r8_door_lf_ok:SetOwner( vehicle )
        dk_r8_door_lf_ok:Spawn()
        
        constraint.Weld( vehicle, dk_r8_door_lf_ok, 0, 0, 0, true, false )
        constraint.Weld( bump_r, dk_r8_door_lf_ok, 0, 0, 0, true, false )
        constraint.Weld( hood, dk_r8_door_lf_ok, 0, 0, 0, true, false )
        constraint.Weld( wnd, dk_r8_door_lf_ok, 0, 0, 0, true, false )
        constraint.Weld( gl_l_l, dk_r8_door_lf_ok, 0, 0, 0, true, false )
        constraint.Weld( gl_l_r, dk_r8_door_lf_ok, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lf_ok, dk_r8_door_lf_ok, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lr, dk_r8_door_lf_ok, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_boot, dk_r8_door_lf_ok, 0, 0, 0, true, false )

        local dk_r8_door_lr = ents.Create( "dk_r8_door_lr_ok" )
        if ( !IsValid( dk_r8_door_lr ) ) then return end
        dk_r8_door_lr:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        dk_r8_door_lr:SetAngles( vehicle:LocalToWorldAngles(Angle(0,-90,0)) )
        dk_r8_door_lr:SetOwner( vehicle )
        dk_r8_door_lr:Spawn()
        
        constraint.Weld( vehicle, dk_r8_door_lr, 0, 0, 0, true, false )
        constraint.Weld( bump_r, dk_r8_door_lr, 0, 0, 0, true, false )
        constraint.Weld( hood, dk_r8_door_lr, 0, 0, 0, true, false )
        constraint.Weld( wnd, dk_r8_door_lr, 0, 0, 0, true, false )
        constraint.Weld( gl_l_l, dk_r8_door_lr, 0, 0, 0, true, false )
        constraint.Weld( gl_l_r, dk_r8_door_lr, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lf_ok, dk_r8_door_lr, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_boot, dk_r8_door_lr, 0, 0, 0, true, false )

        local dk_r8_boot = ents.Create( "dk_r8_boot" )
        if ( !IsValid( dk_r8_boot ) ) then return end
        dk_r8_boot:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        dk_r8_boot:SetAngles( vehicle:LocalToWorldAngles(Angle(0,-90,0)) )
        dk_r8_boot:SetOwner( vehicle )
        dk_r8_boot:Spawn()

        constraint.Weld( vehicle, dk_r8_boot, 0, 0, 0, true, false )
        constraint.Weld( bump_r, dk_r8_boot, 0, 0, 0, true, false )
        constraint.Weld( hood, dk_r8_boot, 0, 0, 0, true, false )
        constraint.Weld( wnd, dk_r8_boot, 0, 0, 0, true, false )
        constraint.Weld( gl_l_l, dk_r8_boot, 0, 0, 0, true, false )
        constraint.Weld( gl_l_r, dk_r8_boot, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lf_ok, dk_r8_boot, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_door_lr, dk_r8_boot, 0, 0, 0, true, false )
        constraint.Weld( dk_r8_boot, dk_r8_boot, 0, 0, 0, true, false )

        table.insert(dk_r8_AddProps_List, {vehicle, bump_f, gl_l_r, gl_l_l, wnd, hood, bump_r, dk_r8_boot, dk_r8_door_lr, dk_r8_door_lf_ok, prop1})
        // Ensure that things are removed
        vehicle:CallOnRemove( "RemoveProps", function( vehicle, bump_f, gl_l_r, gl_l_l, wnd, hood, bump_r, dk_r8_boot, dk_r8_door_lr, dk_r8_door_lf_ok, prop1)
            if IsValid(dk_r8_boot) then
              dk_r8_boot:Remove()
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
            end--[[
            if IsValid(dk_r8_lightrl) then
                dk_r8_lightrl:Remove()
            end
            if IsValid(dk_r8_lightrr) then
                dk_r8_lightrr:Remove()
            end
            if IsValid(dk_r8_wnd_r) then
                dk_r8_wnd_r:Remove()
            end
            if IsValid(dk_r8_door_rr_ok) then
                dk_r8_door_rr_ok:Remove()
            end
            if IsValid(dk_r8_door_rf_ok) then
                dk_r8_door_rf_ok:Remove()
            end]]
            if IsValid(dk_r8_door_lr) then
                dk_r8_door_lr:Remove()
            end
            if IsValid(dk_r8_door_lf_ok) then
                dk_r8_door_lf_ok:Remove()
            end--[[
            if IsValid(dk_r8_wing_r) then
                dk_r8_wing_r:Remove()
            end
            if IsValid(dk_r8_wing_l) then
                dk_r8_wing_l:Remove()
            end]]
            if IsValid(prop1) then
                prop1:Remove()
            end
        end, bump_f, gl_l_r, gl_l_l, wnd, hood, bump_r, dk_r8_boot, dk_r8_door_lr, dk_r8_door_lf_ok, prop1)
    end
end

if !dk_r8_AddProps_List then dk_r8_AddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","dk_r8_AddProps", function( ply, vehicle )
    DK_r8_Spawn_props(ply, vehicle)
end)
-- Yes, freemmaann did code this --
hook.Add("Think", "dk_r8_SyncChanges", function()
    if dk_r8_AddProps_List and (!dk_r8_SyncChanges_Timer or CurTime() >= dk_r8_SyncChanges_Timer) then
        for k, v in pairs(dk_r8_AddProps_List) do
            if VC then  
                --print(v[1]:VC_getHealth(true))
            end

            --constraint.NoCollide( v, v, 0, 0 )

            if IsValid(v[1]) and IsValid(v[2]) then
                v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
            else
                dk_r8_AddProps_List[k] = nil
            end
            if IsValid(v[1]) and IsValid(v[3]) then
               v[3]:SetMaterial(v[1]:GetMaterial()) v[3]:SetColor(v[1]:GetColor()) v[3]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[4]) then
               v[4]:SetMaterial(v[1]:GetMaterial()) v[4]:SetColor(v[1]:GetColor()) v[4]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[5]) then
               v[5]:SetMaterial(v[1]:GetMaterial()) v[5]:SetColor(v[1]:GetColor()) v[5]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[6]) then
               v[6]:SetMaterial(v[1]:GetMaterial()) v[6]:SetColor(v[1]:GetColor()) v[6]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[7]) then
               v[7]:SetMaterial(v[1]:GetMaterial()) v[7]:SetColor(v[1]:GetColor()) v[7]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[8]) then
               v[8]:SetMaterial(v[1]:GetMaterial()) v[8]:SetColor(v[1]:GetColor()) v[8]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[9]) then
               v[9]:SetMaterial(v[1]:GetMaterial()) v[9]:SetColor(v[1]:GetColor()) v[9]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[10]) then
               v[10]:SetMaterial(v[1]:GetMaterial()) v[10]:SetColor(v[1]:GetColor()) v[10]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[11]) then
               v[11]:SetMaterial(v[1]:GetMaterial()) v[11]:SetColor(v[1]:GetColor()) v[11]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[12]) then
               v[12]:SetMaterial(v[1]:GetMaterial()) v[12]:SetColor(v[1]:GetColor()) v[12]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[13]) then
               v[13]:SetMaterial(v[1]:GetMaterial()) v[13]:SetColor(v[1]:GetColor()) v[13]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[14]) then
               v[14]:SetMaterial(v[1]:GetMaterial()) v[14]:SetColor(v[1]:GetColor()) v[14]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[15]) then
               v[15]:SetMaterial(v[1]:GetMaterial()) v[15]:SetColor(v[1]:GetColor()) v[15]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[16]) then
               v[16]:SetMaterial(v[1]:GetMaterial()) v[16]:SetColor(v[1]:GetColor()) v[16]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[17]) then
               v[17]:SetMaterial(v[1]:GetMaterial()) v[17]:SetColor(v[1]:GetColor()) v[17]:SetSkin(v[1]:GetSkin())
            end
            if IsValid(v[1]) and IsValid(v[18]) then
               v[18]:SetMaterial(v[1]:GetMaterial()) v[18]:SetColor(v[1]:GetColor()) v[18]:SetSkin(v[1]:GetSkin())
            end
        end
        dk_r8_SyncChanges_Timer = CurTime()+0.5
    end
end)