
--[[-------------------------------------------------------------------------
if you want, you can use my base for your car, but, do not re-upload it or upload with car
	- why?
	-- because I can update it and you wouldn't get update
	and just don't be asshole..
---------------------------------------------------------------------------]]--


if SERVER then

	hook.Add("ShouldCollide", "DK_SimfphysWheels_Disable_Collision", function( ent1, ent2 ) -- It just disable collision for parts, and you can drive your(my) car without bugs

		if ( IsValid( ent1 ) and IsValid( ent2 ) and ent1:GetClass() == "gmod_sent_vehicle_fphysics_wheel" and ent2.Base == "dk_damaged_parts_flex_base" or ent2.Base == "dk_damaged_parts_base") then return false end
		if ( IsValid( ent1 ) and IsValid( ent2 ) and ent2:GetClass() == "gmod_sent_vehicle_fphysics_wheel" and ent1.Base == "dk_damaged_parts_flex_base" or ent1.Base == "dk_damaged_parts_base") then return false end

	end)
end
