local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Fiat 124 Abarth",
	Model = "models/dk_cars/fiat/abarth/124spider.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_abarth.txt"
	}
}
list.Set( "Vehicles", "dk_fi124ab", V )

if !dk_fi124ab_AddProps_List then dk_fi124ab_AddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","dk_fi124ab_AddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/dk_cars/fiat/abarth/124spider.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/dk_cars/fiat/abarth/extra.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,-90,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")
        local prop2 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop2 ) ) then return end
        prop2:SetModel( "models/dk_cars/fiat/abarth/extra2.mdl" )
        prop2:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop2:SetAngles( vehicle:LocalToWorldAngles(Angle(0,-90,0)) )
        prop2:SetParent( vehicle )
        prop2:SetOwner( ply )
        prop2:Spawn()
        prop2:SetNoDraw(false)
        prop2:DrawShadow(true)
        prop2:Fire("DisableCollision")

        table.insert(dk_fi124ab_AddProps_List, {vehicle, prop1, prop2})
        // Ensure that things are removed
        vehicle:CallOnRemove( "RemoveProps", function( vehicle, prop1, prop2 )
            if IsValid(prop1) then
                prop1:Remove()
            end
            if IsValid(prop2) then
                prop2:Remove()
            end
        end, prop1, prop2 )
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
    end
end)
-- Yes, freemmaann did code this --
hook.Add("Think", "dk_fi124ab_SyncChanges", function()
	if dk_fi124ab_AddProps_List and (!dk_fi124ab_SyncChanges_Timer or CurTime() >= dk_fi124ab_SyncChanges_Timer) then
		for k, v in pairs(dk_fi124ab_AddProps_List) do
			if IsValid(v[2]) and IsValid(v[3]) then
                v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
                v[3]:SetMaterial(v[1]:GetMaterial()) v[3]:SetColor(v[1]:GetColor()) v[3]:SetSkin(v[1]:GetSkin())
			else
				dk_fi124ab_AddProps_List[k] = nil
			end
		end
		dk_fi124ab_SyncChanges_Timer = CurTime()+0.5
	end
end)