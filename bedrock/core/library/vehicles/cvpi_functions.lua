local intLastHit = CurTime()
local intLastHit2 = CurTime()
local lastTempUpdate = CurTime()
if !VC then VC = {} end
sound.Add( {
	name = "cvpi_sgm_fan",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	pitch = 100,
	sound = "vehicles/sgmcars/cvpi_fh3/fan.wav"
} )
sound.Add( {
	name = "cvpi_sgm_fan_off",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	pitch = 100,
	sound = "vehicles/sgmcars/cvpi_fh3/fan_off.wav"
} )
hook.Add("PlayerSpawnedVehicle", "SGM_CVPI_SPAWN",function( ply, vehicle )

if not vehicle:GetModel( ) == "models/sentry/cvpi_fh3.mdl" then return end
	vehicle:SetNWFloat("cooling",false)
	vehicle:SetNWFloat("fakeTemp",80)
	vehicle:CallOnRemove( "STOP_CVPI_FAN_SOUND", function( ent ) ent:StopSound( "cvpi_sgm_fan" ) end )
end)

hook.Add( "PlayerUse", "SPEX_CVPI_OPEN_TRUNK", function(player, eEnt)
	if eEnt:GetClass():find( "jeep" ) then
		local mdl = eEnt:GetModel()
		if mdl == "models/sentry/cvpi_fh3.mdl" then
			local vecPos = eEnt:GetPos() + eEnt:GetForward()*eEnt:OBBMins().y;
			if vecPos:Distance(player:GetPos()) > 60 then return end 
			if intLastHit > CurTime() then return end
			intLastHit = CurTime() + 1
			
			eEnt:SetNWFloat("useTrunk",!eEnt:GetNWFloat("useTrunk"))
			--print(eEnt:GetNWFloat("useTrunk"))
			--eEnt:SetColor(Color(255,0,0,255))
			
		end
	end
end)
hook.Add( "PlayerUse", "SPEX_CVPI_OPEN_HOOD", function(player, eEnt)
	if eEnt:GetClass():find( "jeep" ) then
		local mdl = eEnt:GetModel()
		if mdl == "models/sentry/cvpi_fh3.mdl" then
			local vecPos = eEnt:GetPos() - eEnt:GetForward()*eEnt:OBBMins().y;
			if vecPos:Distance(player:GetPos()) > 60 then return end 
			if intLastHit2 > CurTime() then return end
			intLastHit2 = CurTime() + 1
			
			eEnt:SetNWFloat("useHood",!eEnt:GetNWFloat("useHood"))
			--print(eEnt:GetNWFloat("useHood"))
			--eEnt:SetColor(Color(255,0,0,255))
			
		end
	end
end)


function doStuffStuffStuff(ent)	
	if SERVER then
	local driver = ent:GetDriver()
--	print(driver)
		 
	if !ent.trunkSpawned then
		ent.trunkCollider = ents.Create("prop_physics")
		ent:SetNWFloat("TrunkAngle", 0)
		ent.trunkCollider:SetModel("models/sentry/cvpi_fh3_trunk.mdl")
		ent.trunkCollider:SetPos(ent:GetPos())
		ent.trunkCollider:SetAngles(ent:GetAngles())
		ent.trunkCollider:Spawn()
		local trunkColliderWeld = constraint.Weld(ent.trunkCollider, ent, 0, 0, 0, true, true)		
		ent.trunkSpawned = true
	end
	

	
	if !driver:IsValid() then
	--start temp
	if ent:GetNWFloat("fakeTemp") > 200 && ent.coolingFactor==0 then
	ent:EmitSound("cvpi_sgm_fan")
	if type(VC.Loaded) == "table" then
	ent.coolingFactor = 0.24*(ent:VC_getHealth(true)/100)
	ent:SetNWFloat("cooling",true)
	else
	ent.coolingFactor = 0.24
	ent:SetNWFloat("cooling",true)
	end
	
	elseif ent:GetNWFloat("fakeTemp") < 180 && ent.coolingFactor!=0 then
	ent:StopSound("cvpi_sgm_fan")
	ent:EmitSound("cvpi_sgm_fan_off")	
	ent.coolingFactor = 0
	ent:SetNWFloat("cooling",false)
	end
	
	if lastTempUpdate < CurTime() then
	if ent:GetNWFloat("fakeTemp") > 80 then
		ent:SetNWFloat("fakeTemp",ent:GetNWFloat("fakeTemp")-0.5-ent.coolingFactor)
	end
		if type(VC.Loaded) == "table" && ent:GetNWFloat("fakeTemp")>230 then ent:VC_damageHealth(5) end
		lastTempUpdate = lastTempUpdate + 2
		--PrintMessage(HUD_PRINTTALK,ent:GetNWFloat("fakeTemp"))
	end
	end
	--end temp
	
	if driver:IsValid() then
	if ent:GetPoseParameter("vehicle_on") == 0 then
	ent:SetPoseParameter("vehicle_on",0.15)
	end
	if ((ent:GetNWFloat("fakeTemp")-140)/100)>0 && ((ent:GetNWFloat("fakeTemp")-140)/100)<1 then
	ent:SetPoseParameter("vehicle_temp",(ent:GetNWFloat("fakeTemp")-140)/100)
	end
	--start trunk
		if !ent.trunkOpen && driver:KeyPressed( IN_SPEED) && ent:GetVelocity():Length()<200 then
		ent.intOpen = true
			if ent:GetNWFloat("useTrunk") then
				ent:SetNWFloat("useTrunk",false)
			end
		else
		ent.intOpen = false
		end
	--end trunk
		
	--start temp
	if ent:GetNWFloat("fakeTemp") > 200 && ent.coolingFactor==0 then
	ent:EmitSound("cvpi_sgm_fan")
	if type(VC.Loaded) == "table" then
	ent.coolingFactor = 0.24*(ent:VC_getHealth(true)/100)
	ent:SetNWFloat("cooling",true)
	else
	ent.coolingFactor = 0.24
	ent:SetNWFloat("cooling",true)
	end
	elseif ent:GetNWFloat("fakeTemp") < 180 && ent.coolingFactor!=0 then
	ent:StopSound("cvpi_sgm_fan")
	ent:EmitSound("cvpi_sgm_fan_off")	
	ent:SetNWFloat("cooling",false)
	ent.coolingFactor = 0
	end
	
	if ent:GetNWFloat("fakeTemp") > 180 && ent.engineWarm==0 then
	ent.engineWarm = 0.34
	elseif ent:GetNWFloat("fakeTemp") < 180 && ent.engineWarm!=0 then
	ent.engineWarm = 0
	end
	if lastTempUpdate < CurTime() then
		ent:SetNWFloat("fakeTemp",ent:GetNWFloat("fakeTemp")+0.38+(math.abs(ent:GetThrottle())*0.25)-ent.coolingFactor-ent.engineWarm)
		if type(VC.Loaded) == "table" && ent:GetNWFloat("fakeTemp")>230 then ent:VC_damageHealth(5) end
		lastTempUpdate = lastTempUpdate + 2
		--PrintMessage(HUD_PRINTTALK,ent:GetNWFloat("fakeTemp"))
	end
	
	--end temp
	else
	if ent:GetPoseParameter("vehicle_on") != 0 then
	ent:SetPoseParameter("vehicle_on",0)
	end
	end
	
	if ent.trunkOpen && ent:GetVelocity():Length()>200 then
		if !ent:GetNWFloat("useTrunk") then
			ent:SetNWFloat("useTrunk",true)
		end
	end
	if ent.hoodOpen && ent:GetVelocity():Length()>200 then
		if !ent:GetNWFloat("useHood") then
			ent:SetNWFloat("useHood",true)
		end
	end
	
	if !ent.trunkOpen && !ent:GetNWFloat("useTrunk") || !ent.trunkOpen && ent.intOpen then
		ent:SetNWFloat("TrunkAngle", 40)
		ent.trunkCollider:SetNotSolid(true)
		--print("open")
		--print(ent.trunkCollider:IsValid())
		ent.trunkOpen = true
		elseif ent.trunkOpen && ent:GetNWFloat("useTrunk") then
		ent:GetPhysicsObject():ApplyForceOffset(ent:LocalToWorld(Vector(0,0,-10000)*5),ent:LocalToWorld(Vector(0,-100,0)))
		ent:SetNWFloat("TrunkAngle", 0)
		ent.trunkCollider:SetNotSolid(false)		
		--print("close")
		ent.trunkOpen = false
	end
	
	if !ent.hoodOpen && !ent:GetNWFloat("useHood") then
		ent:SetNWFloat("HoodAngle", 40)
		ent.hoodOpen = true
		elseif ent.hoodOpen && ent:GetNWFloat("useHood") then
		ent:GetPhysicsObject():ApplyForceOffset(ent:LocalToWorld(Vector(0,0,-10000)*5),ent:LocalToWorld(Vector(0,100,0)))
		ent:SetNWFloat("HoodAngle", 0)	
		--print("close")
		ent.hoodOpen = false
	end
	
	end
	if CLIENT then
		if ent:GetNWFloat("cooling") == true then
		ent:ManipulateBoneAngles(ent:LookupBone("fan"),ent:GetManipulateBoneAngles(ent:LookupBone("fan"))+Angle(0,5,0))
		end
		
		if !ent.shitInitializeCode then
			ent.trunkAng = 0
			ent.hoodAng = 0
			ent.shitInitializeCode = true
		end
		if ent:GetNWFloat("TrunkAngle") > 0 then
			ent.openLerp = 0
			else
			ent.openLerp = 0.06
		end
		if ent:GetNWFloat("HoodAngle") > 0 then
			ent.openLerp2 = 0
			else
			ent.openLerp2 = 0.1
		end
		if ent.trunkAng != ent:GetNWFloat("TrunkAngle") then
			ent.trunkAng = Lerp(0.04+ent.openLerp, ent.trunkAng, ent:GetNWFloat("TrunkAngle"))
			ent:ManipulateBoneAngles(ent:LookupBone("trunk"),Angle(0,ent.trunkAng,0))
			
			if ent.trunkAng <= 0.5 then
				ent.trunkAng = 0
				sound.Play("vehicles/sgmcars/cvpi_fh3/hood_close.wav",ent:GetPos(), 105, 100, 1)
				ent:ManipulateBoneAngles(ent:LookupBone("trunk"),Angle(0,0,0))
			end
			if ent.trunkAng >= 39.5 then
				ent.trunkAng = 40
				ent:ManipulateBoneAngles(ent:LookupBone("trunk"),Angle(0,40,0))
			end
			--print(ent.trunkAng)
		end
		
		if ent.hoodAng != ent:GetNWFloat("HoodAngle") then
			ent.hoodAng = Lerp(0.04+ent.openLerp2, ent.hoodAng, ent:GetNWFloat("HoodAngle"))
			ent:ManipulateBoneAngles(ent:LookupBone("hood"),Angle(0,0,ent.hoodAng))
			
			if ent.hoodAng <= 0.5 then
				ent.hoodAng = 0
				sound.Play("vehicles/sgmcars/cvpi_fh3/hood_close.wav",ent:GetPos(), 105, 100, 1)
				ent:ManipulateBoneAngles(ent:LookupBone("hood"),Angle(0,0,0))
			end
			if ent.hoodAng >= 39.5 then
				ent.hoodAng = 40
				ent:ManipulateBoneAngles(ent:LookupBone("hood"),Angle(0,0,40))
			end
			--print(ent.hoodAng)
		end	
		
	end
end
hook.Add("Think", "SGM_CVPI_Functions", function()
	for k,ent in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
		local mdl = ent:GetModel()
--		print(ent:GetModel())
			if mdl == "models/sentry/cvpi_fh3.mdl" then 
			doStuffStuffStuff(ent) 
			end
	end
end)