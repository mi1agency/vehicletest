local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "BMW i3",
	Model = "models/dk_cars/bmw/i3/bi3.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_i3.txt"
	}
}
list.Set( "Vehicles", "dk_bwmi3", V )

if !dk_bmwi3_AddProps_List then dk_bmwi3_AddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","dk_bmwi3_AddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/dk_cars/bmw/i3/bi3.mdl" then
        -- Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/dk_cars/bmw/i3/extra.mdl" )
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
        prop2:SetModel( "models/dk_cars/bmw/i3/extra2.mdl" )
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
        prop3:SetModel( "models/dk_cars/bmw/i3/extra3.mdl" )
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
        prop4:SetModel( "models/dk_cars/bmw/i3/extra4.mdl" )
        prop4:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop4:SetAngles( vehicle:LocalToWorldAngles(Angle(0,-90,0)) )
        prop4:SetParent( vehicle )
        prop4:SetOwner( ply )
        prop4:Spawn()
        prop4:SetNoDraw(false)
        prop4:DrawShadow(true)
        prop4:Fire("DisableCollision")

        local prop5 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop5 ) ) then return end
        prop5:SetModel( "models/dk_cars/bmw/i3/extra5.mdl" )
        prop5:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop5:SetAngles( vehicle:LocalToWorldAngles(Angle(0,-90,0)) )
        prop5:SetParent( vehicle )
        prop5:SetOwner( ply )
        prop5:Spawn()
        prop5:SetNoDraw(false)
        prop5:DrawShadow(true)
        prop5:Fire("DisableCollision")


        table.insert(dk_bmwi3_AddProps_List, {vehicle, prop1, prop2, prop3, prop4, prop5})
        // Ensure that things are removed
        vehicle:CallOnRemove( "RemoveProps", function( vehicle, prop1, prop2, prop3, prop4, prop5 )
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
        end, prop1, prop2, prop3, prop4, prop5 )
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


        --[[table.insert(dk_bmwi3_AddProps_List, {vehicle, prop2})
        // Ensure that things are removed
        vehicle:CallOnRemove( "RemoveProps", function( vehicle, prop2 )
            if IsValid(prop2) then
                prop2:Remove()
            end
        end, prop2 )
        prop2:CallOnRemove( "RemoveParent", function( prop2, vehicle )
            if IsValid(vehicle) then
            vehicle:Remove()
            end
        end, vehicle)


        table.insert(dk_bmwi3_AddProps_List, {vehicle, prop3})
        // Ensure that things are removed
        vehicle:CallOnRemove( "RemoveProps", function( vehicle, prop3 )
            if IsValid(prop3) then
                prop3:Remove()
            end
        end, prop3 )
        prop3:CallOnRemove( "RemoveParent", function( prop3, vehicle )
            if IsValid(vehicle) then
            vehicle:Remove()
            end
        end, vehicle)


        table.insert(dk_bmwi3_AddProps_List, {vehicle, prop4})
        // Ensure that things are removed
        vehicle:CallOnRemove( "RemoveProps", function( vehicle, prop4 )
            if IsValid(prop4) then
                prop4:Remove()
            end
        end, prop4 )
        prop4:CallOnRemove( "RemoveParent", function( prop4, vehicle )
            if IsValid(vehicle) then
            vehicle:Remove()
            end
        end, vehicle)]]
    end
end)
-- Yes, freemmaann did code this --
hook.Add("Think", "dk_bmwi3_SyncChanges", function()
	if dk_bmwi3_AddProps_List and (!dk_bmwi3_SyncChanges_Timer or CurTime() >= dk_bmwi3_SyncChanges_Timer) then
		for k, v in pairs(dk_bmwi3_AddProps_List) do
			if IsValid(v[2]) and IsValid(v[3]) and IsValid(v[4]) and IsValid(v[6]) and IsValid(v[6]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
                v[3]:SetMaterial(v[1]:GetMaterial()) v[3]:SetColor(v[1]:GetColor()) v[3]:SetSkin(v[1]:GetSkin())
                v[4]:SetMaterial(v[1]:GetMaterial()) v[4]:SetColor(v[1]:GetColor()) v[4]:SetSkin(v[1]:GetSkin())
                v[5]:SetMaterial(v[1]:GetMaterial()) v[5]:SetColor(v[1]:GetColor()) v[5]:SetSkin(v[1]:GetSkin())
                v[6]:SetMaterial(v[1]:GetMaterial()) v[6]:SetColor(v[1]:GetColor()) v[6]:SetSkin(v[1]:GetSkin())
			else
				dk_bmwi3_AddProps_List[k] = nil
			end
		end
		dk_bmwi3_SyncChanges_Timer = CurTime()+0.5
	end
end)
