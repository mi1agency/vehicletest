local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
    -- Required information
    Name = "Lamborghini Terzo Millennio",
    Model = "models/dk_cars/lamborghini/millennio/terzo.mdl",
    Class = PrVeh,
    Category = Cat,

    -- Optional information
    Author = "DangerKiddy",
    Information = "",

    KeyValues = {
        vehiclescript = "scripts/vehicles/dkcars/dk_terzo.txt"
    }
}
list.Set( "Vehicles", "dk_terzo", V )

if !dk_terzo_AddProps_List then dk_terzo_AddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","dk_terzo_AddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/dk_cars/lamborghini/millennio/terzo.mdl" then
        -- Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/dk_cars/lamborghini/millennio/extra.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(dk_terzo_AddProps_List, {vehicle, prop1})
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
-- Yes, freemmaann did code this --
hook.Add("Think", "dk_terzo_SyncChanges", function()
    if dk_terzo_AddProps_List and (!dk_terzo_SyncChanges_Timer or CurTime() >= dk_terzo_SyncChanges_Timer) then
        for k, v in pairs(dk_terzo_AddProps_List) do
            if IsValid(v[2]) and IsValid(v[3]) then
                v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
            else
                dk_terzo_AddProps_List[k] = nil
            end
        end
        dk_terzo_SyncChanges_Timer = CurTime()+0.5
    end
end)
