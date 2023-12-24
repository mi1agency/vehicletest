local PrVeh = "prop_vehicle_jeep"
local Cat = "JM Cars"


local V = {
	-- Required information
	Name = "1995 Ford GT90",
	Model = "models/jmcars/ford/gt90/gt90.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "JustMark",
	Information = "Шедевр",

	KeyValues = {
		vehiclescript = "scripts/vehicles/jmcars/jm_gt90.txt"
	}
}
list.Set( "Vehicles", "jm_gt90", V )

if !jm_gt90_1995_AddProps_List then jm_gt90_1995_AddProps_List = {} end
hook.Add("PlayerSpawnedVehicle","jm_gt90_1995_AddProps", function( ply, vehicle )
    if vehicle:GetModel( ) == "models/jmcars/ford/gt90/gt90.mdl" then
        // Create the actual prop
        local prop1 = ents.Create( "prop_dynamic_ornament" )
        if ( !IsValid( prop1 ) ) then return end
        prop1:SetModel( "models/jmcars/ford/gt90/gt90_extra.mdl" )
        prop1:SetPos( vehicle:LocalToWorld(Vector(0,0,0) ))
        prop1:SetAngles( vehicle:LocalToWorldAngles(Angle(0,0,0)) )
        prop1:SetParent( vehicle )
        prop1:SetOwner( ply )
        prop1:Spawn()
        prop1:SetNoDraw(false)
        prop1:DrawShadow(true)
        prop1:Fire("DisableCollision")

        table.insert(jm_gt90_1995_AddProps_List, {vehicle, prop1})
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
hook.Add("Think", "jm_gt90_1995_SyncChanges", function()
	if jm_gt90_1995_AddProps_List and (!jm_gt90_1995_SyncChanges_Timer or CurTime() >= jm_gt90_1995_SyncChanges_Timer) then
		for k, v in pairs(jm_gt90_1995_AddProps_List) do
			if IsValid(v[2]) then
				v[2]:SetMaterial(v[1]:GetMaterial()) v[2]:SetColor(v[1]:GetColor()) v[2]:SetSkin(v[1]:GetSkin())
				local bgroupstring = "0" for k2,v2 in pairs(v[1]:GetBodyGroups()) do bgroupstring = bgroupstring..v[1]:GetBodygroup(k2) end
				v[2]:SetBodyGroups(bgroupstring)
			else
				jm_gt90_1995_AddProps_List[k] = nil
			end
		end
		jm_gt90_1995_SyncChanges_Timer = CurTime()+0.5
	end
end)
