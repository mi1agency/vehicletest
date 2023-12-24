/*
 * Copyright © 2012-2023 Imperial Servers (https://www.imperialservers.com)
 * 
 * This file is original and proprietary. Unless you have been granted a legal license,
 * you have no legal right to view or use this code. Violating or removing any copyright
 * notices, or any text herein constitutes copyright infringement and may be prosecuted.
 * Intercepting a copy through a gamemode downloading tool, or otherwise intercepting a
 * transmission does not constitute a legal license or legal receipt of this code. Our
 * code is transmitted to you in order to run the software as we dictate. Using this
 * code for your own personal or commercial use without a legal license granted by us
 * may be prosecuted to the fullest extent of law for willful copyright infringement.
 * 
 * All Rights Reserved. This material may not be modified, stored, published, rewritten,
 * sold, redistributed, duplicated or reproduced in whole or in part without the express
 * written permission of Imperial Servers with a lawful license for use granted thereof.
*/

function PLAYER:SpawnVehicle(entVehicle)
	if !self.SpawningVehicle then return end
	local strID, tbl = FindVehicleInfo(self.SpawningVehicle)
	entVehicle.vehicleTable = imperial.Vehicle.Database[strID] or {Name=tbl and tbl.Name or "Unknown", Make="Unknown", Model="Unknown", Category="Unknown", Cost=-1, FuelTankSize=100, FuelPerMile=1}
	if !imperial.Vehicle.Database[strID] then imperial.Vehicle.Database[strID] = entVehicle.vehicleTable end
	entVehicle.Class = InstanceVehicle(strID, self)
	entVehicle.Class:SetLocked(true)
	entVehicle.Class:SetFuel(entVehicle.vehicleTable.FuelTankSize)
	entVehicle.Class:SetFuelTankSize(entVehicle.vehicleTable.FuelTankSize)
	entVehicle.Class:SetFuelPerMile(1)
	entVehicle.Class:SetHydraulics(100)
	entVehicle.Class:SetLaunchControl(true)
	entVehicle.Class:SetAlarm(true)
	entVehicle.Class:SetEntity(entVehicle)
	entVehicle:SetNW("ignition_on", false)
	entVehicle:SetNW("nitro", true)
	entVehicle:SetNW("MusicLightsOn", true)
	entVehicle:Fire("lock")
	entVehicle:Fire("turnoff")
	entVehicle.IsRaceCar = true
	entVehicle.AlarmEnabled = true
	entVehicle.NitroTime = 0
	entVehicle.Fuel = entVehicle.vehicleTable.FuelTankSize
	entVehicle.PropCar = true
	entVehicle.Owner = self
	// Associate passenger seats
	local ticks = 0
	local index = entVehicle:EntIndex()
	timer.Create("Seats"..index, 1, 0, function() if !IsValid(entVehicle) then timer.Destroy("Seats"..index) return end if !entVehicle.VC_SeatTable then return end entVehicle.PassengerSeats = entVehicle.VC_SeatTable for i = 1, #entVehicle.PassengerSeats do entVehicle.PassengerSeats[i].ParentCar = entVehicle timer.Destroy("Seats"..index) end end)
	entVehicle.LastSpawnTime = CurTime() + 15
	entVehicle:StartTimedEvents()
	self.SpawningVehicle = nil
end

function PLAYER:CanManipulateDoor(door)
	if door.PropCar and door.Owner == self then return true end
	return false
end

function PLAYER:IsStuckOnPos2(vPos)
	local trData = {}
	trData.start = vPos
	trData.endpos = trData.start
	trData.filter = self
	trData.mask = MASK_NPCSOLID
	trData.mins = self:OBBMins()
	trData.maxs = self:OBBMaxs()
	
	local trLine = util.TraceHull(trData)
	return trLine.Hit, trLine.HitPos
end

function PLAYER:UnStuck2()
	if self:IsStuckOnPos2(self:GetPos()) then
		//Table with ways to move out.
		local tblPositions = {}
		tblPositions[1] = Vector(self:OBBMaxs().x, self:OBBMaxs().y, 0)
		tblPositions[2] = Vector(-self:OBBMaxs().x, -self:OBBMaxs().y, 0)
		tblPositions[3] = Vector(self:OBBMaxs().x, -self:OBBMaxs().y, 0)
		tblPositions[4] = Vector(-self:OBBMaxs().x, self:OBBMaxs().y, 0)
		tblPositions[5] = Vector(self:OBBMaxs().x, self:OBBMaxs().y, self:OBBMaxs().z * 0.5)
		tblPositions[6] = Vector(-self:OBBMaxs().x, -self:OBBMaxs().y, self:OBBMaxs().z * 0.5)
		tblPositions[7] = Vector(self:OBBMaxs().x, -self:OBBMaxs().y, self:OBBMaxs().z * 0.5)
		tblPositions[8] = Vector(-self:OBBMaxs().x, self:OBBMaxs().y, self:OBBMaxs().z * 0.5)
		tblPositions[9] = Vector(self:OBBMins().x, self:OBBMins().y, -self:OBBMaxs().z * 0.5)
		tblPositions[10] = Vector(-self:OBBMins().x, -self:OBBMins().y, -self:OBBMaxs().z * 0.5)
		tblPositions[11] = Vector(self:OBBMins().x, -self:OBBMins().y, -self:OBBMaxs().z * 0.5)
		tblPositions[12] = Vector(-self:OBBMins().x, self:OBBMins().y, -self:OBBMaxs().z * 0.5)
		local vPos = self:GetPos() + self:OBBCenter()
		for k,v in pairs(tblPositions) do
			for i=1, 100, 5 do
				local vAdd = Vector(v.x * i, v.y * i, v.z * (i * 0.25))
				
				//Check if the point is actually in the world, before doing an expensive trace.
				if(util.IsInWorld(vPos + vAdd)) then
					//Check if the player won't be stuck on this position.
					if(!self:IsStuckOnPos(vPos + vAdd)) then
						debugoverlay.Box(vPos + vAdd, Vector(-4, -4, -4), Vector(4, 4, 4), 1, Color(0, 200, 0, 100))
						
						self:SetPos(vPos + vAdd)
						
						return true
					end
				else
					debugoverlay.Box(vPos + vAdd, Vector(-4, -4, -4), Vector(4, 4, 4), 1, Color(200, 0, 0, 100))
				end
			end
		end
	else
		return true
	end
	return false
end

function PLAYER:Ragdoll(b, bNofalldamage, vVel)
	if b and !IsValid(self.RagdollEntity) then
		if !self:Alive() then return end
		self:SendLua([[if GAMEMODE.DialogPanel then GAMEMODE.DialogPanel:Hide() end]])
		local objRag = ents.Create("prop_ragdoll")
		objRag:SetPos(self:GetPos())
		objRag:SetAngles(self:GetAngles())
		objRag:SetModel(self:GetModel())
		objRag:Spawn()
		objRag:Activate()
		objRag.PlayerEntity = self
		objRag.NoFallDamage = bNofalldamage
		for i=0, objRag:GetPhysicsObjectCount() do
			local iBone = objRag:GetPhysicsObjectNum(i)
			if IsValid(iBone) then
				iBone:SetVelocity(vVel or self:GetVelocity())
			end
		end
		local tbl = {}
		for k, v in pairs(self:GetWeapons()) do tbl[#tbl+1] = v:GetClass() end
		self.RagdollEntity = objRag
		self.RagdollWeapons = tbl
		self:SetColor(Color(0,0,0,0))
		self:SetNoDraw(true)
		self:DrawWorldModel(false)
		self:SetRenderMode(RENDERMODE_TRANSCOLOR)
		self:Lock()
		self:Freeze(true)
		self:SetNotSolid(true)
		self:SetMoveType(MOVETYPE_NONE)
		self:DrawViewModel(false)
		self:SetVelocity(self:GetVelocity() * -1)
		self:SetNWEntity("ragdoll", objRag)
		if IsValid(self:GetActiveWeapon()) and self:Team() != TEAM_ARRESTED then
			if self:GetActiveWeapon().Clip1 and self:GetActiveWeapon().Clip2 then
				if self:GetActiveWeapon():Clip1() > 0 or self:GetActiveWeapon():Clip2() > 0 then
					self.ClipPri = self:GetActiveWeapon():Clip1()
					self.ClipSec = self:GetActiveWeapon():Clip2()
					self.ClipWep = self:GetActiveWeapon():GetClass()
				end
			end
		end
	elseif IsValid(self.RagdollEntity) then
		self:SetNoDraw(false)
		self:SetNotSolid(false)
		self:SetMoveType(MOVETYPE_WALK)
		self:SetColor(Color(255,255,255))
		self:SetNoDraw(false)
		self:DrawWorldModel(true)
		self:SetRenderMode(RENDERMODE_NORMAL)
		self:UnLock()
		self:Freeze(false)
		self:DrawViewModel(true)
		self:SetPos(self.RagdollEntity:GetPos())
		self:SetNWEntity("ragdoll", nil)
		self.RagdollEntity:Remove()
		self:UnStuck2()
		if self:Team() != TEAM_ARRESTED and self.RagdollWeapons then
			for k, v in pairs(self.RagdollWeapons) do self:Give(v) end
			self.RagdollWeapons = nil
		else
			self.BeforeArrestedWeapons = self.RagdollWeapons
		end
		self:SetVelocity(self:GetVelocity() * -1)
		self.RagdollEntity = nil
		if self:Team() != TEAM_ARRESTED then
			if self.ClipPri and self.ClipSec and IsValid(self:GetWeapon(self.ClipWep)) then
				self:GetWeapon(self.ClipWep):SetClip1(self.ClipPri)
				self:GetWeapon(self.ClipWep):SetClip2(self.ClipSec)
				self.ClipPri = nil
				self.ClipSec = nil
			end
		end
		if IsValid(self.ArrestAfterUnragdoll) then
			--timer.Simple(0.5, function() if IsValid(self) and IsValid(self.ArrestAfterUnragdoll) then self:Arrest(self.ArrestAfterUnragdoll, IsValid(self.ArrestAfterUnragdoll) and self.ArrestAfterUnragdoll:InPoliceJail()) self.ArrestAfterUnragdoll = nil end end)
			timer.Simple(0.5, function() if IsValid(self) and IsValid(self.ArrestAfterUnragdoll) then self:ArrestTP(self.ArrestAfterUnragdoll, true) self.ArrestAfterUnragdoll = nil end end)
		end
	end
end

function PLAYER:OpenGarage(numTeam)
	if self:AdminMode() then return end
	if !self.CarSpawnPos and !self.CarSpawnAng and !self:NearCar() then
		self:SendLua([[GAMEMODE.ShowGarageView(]]..(numTeam)..[[)]])
		self.CarSpawnPos = self:GetPos()
		self.CarSpawnAng = Angle(0, math.Round(self:EyeAngles().yaw), 0) - Angle(0, 90, 0)
	end
end
