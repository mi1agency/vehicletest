local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Lamborghini Urus",
	Model = "models/dk_cars/lamba_regular/urus.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_rurus.txt"
	}
}
list.Set( "Vehicles", "dk_lrurus", V )

if !dk_rurus_AddProps_List then dk_rurus_AddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","dk_rurus_AddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/dk_cars/lamba_regular/urus.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        local prop2 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/dk_cars/lamba_regular/extra.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        if ( !IsValid( prop2 ) ) then return end
        prop2:SetModel( "models/dk_cars/lamba_regular/extra2.mdl" )
        prop2:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop2:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop2:SetParent( vehicle )
        prop2:SetOwner( ply )
        prop2:Spawn()
        prop2:SetNoDraw(false)
        prop2:DrawShadow(true)
        prop2:Fire("DisableCollision")

        vehicle:SetModelScale(.94,1)
        prop1:SetModelScale(.94,1)
        prop2:SetModelScale(.94,1)

        table.insert(dk_rurus_AddProps_List, {vehicle, prop1})
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


        table.insert(dk_rurus_AddProps_List, {vehicle, prop2})
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
    end
end)
-- Yes, freemmaann did code this --