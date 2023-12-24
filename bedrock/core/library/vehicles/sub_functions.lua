function sgm_sub_function(ent)	
	if SERVER then
	local driver = ent:GetDriver()
	if ent:WaterLevel()>0 then
		ent:GetPhysicsObject():ApplyForceOffset(Vector(0,0,-409.5)*(66*FrameTime()),ent:GetPhysicsObject():LocalToWorld(Vector(40,80,0)))
		ent:GetPhysicsObject():ApplyForceOffset(Vector(0,0,-409.5)*(66*FrameTime()),ent:GetPhysicsObject():LocalToWorld(Vector(-40,80,0)))
		ent:GetPhysicsObject():ApplyForceOffset(Vector(0,0,-409.5)*(66*FrameTime()),ent:GetPhysicsObject():LocalToWorld(Vector(40,-80,0)))
		ent:GetPhysicsObject():ApplyForceOffset(Vector(0,0,-409.5)*(66*FrameTime()),ent:GetPhysicsObject():LocalToWorld(Vector(-40,-80,0)))

		--print('in water')
	end
--	print(driver)
		 	

	
	
	
	if driver:IsValid() then
	if driver:KeyDown(IN_SPEED) then
		ent.downForce = -40
	elseif driver:KeyDown(IN_JUMP) then
		ent.downForce = 40
	else
		ent.downForce = 0
	end
	if ent:WaterLevel()>0 then
		ent:GetPhysicsObject():ApplyForceOffset(Vector(0,0,-696+ent.downForce)*(66*FrameTime()),ent:GetPhysicsObject():LocalToWorld(Vector(40,80,0)))
		ent:GetPhysicsObject():ApplyForceOffset(Vector(0,0,-696+ent.downForce)*(66*FrameTime()),ent:GetPhysicsObject():LocalToWorld(Vector(-40,80,0)))
		ent:GetPhysicsObject():ApplyForceOffset(Vector(0,0,-688+ent.downForce)*(66*FrameTime()),ent:GetPhysicsObject():LocalToWorld(Vector(40,-80,0)))
		ent:GetPhysicsObject():ApplyForceOffset(Vector(0,0,-688+ent.downForce)*(66*FrameTime()),ent:GetPhysicsObject():LocalToWorld(Vector(-40,-80,0)))
		
		ent:GetPhysicsObject():AddAngleVelocity( Vector(0.0125*ent.downForce, 0, 0 )*(66*FrameTime()) )	
		
	end
	
	
	end
	
	end
	if CLIENT then

	end
end
hook.Add("Think", "SGM_Sub_Functions", function()
	for k,ent in pairs(ents.FindByClass("prop_vehicle_airboat*")) do
		local mdl = ent:GetModel()
--		print(ent:GetModel())
			if mdl == "models/sentry/sub.mdl" then 
			sgm_sub_function(ent) 
			end
	end
end)