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

function InstanceVehicle(strVehicleID, objOwner, strUUID)
	if imperial.Vehicle.All[strUUID] then return imperial.Vehicle.All[strUUID] end
	local tblVehicleRegistry = imperial.Vehicle.Database[strVehicleID]
	if !strVehicleID or !IsValid(objOwner) or !tblVehicleRegistry then return end
	if !strUUID then strUUID = GenerateUUID2023() end
	// TODO: Replace default values with (actual db values or defaults)
	local class = imperial.Vehicle(strUUID)
	class:SetVehicleID(strVehicleID)
	class:SetOwner(objOwner:SteamID())
	class:SetName(tblVehicleRegistry.Name)
	class:SetFineReason("")
	class:SetFineAmount(0)
	class:SetFuel(tblVehicleRegistry.FuelTankSize)
	class:SetFuelTankSize(tblVehicleRegistry.FuelTankSize)
	class:SetFuelPerMile(tblVehicleRegistry.FuelPerMile)
	class:SetMake(tblVehicleRegistry.Make)
	class:SetModel(tblVehicleRegistry.Model)
	class:SetCategory(tblVehicleRegistry.Category)
	class:SetEntModel(list.Get("Vehicles")[strVehicleID] and list.Get("Vehicles")[strVehicleID].Model or "")
	class:SetSkin(0)
	class:SetMaxRPM(1)
	class:SetMaxSpeed(1)
	class:SetHorsepower(1)
	class:SetDamage(0)
	class:SetMileage(0)
	class:SetForSalePrice(0)
	class:SetDurability(100)
	class:SetBodyColor(Color(255,255,255))
	class:SetUnderglowColor(Color(0,0,0))
	class:SetPrice(tblVehicleRegistry.Cost)
	class:SetLocked(true)
	class:SetForSale(false)
	class:SetMusicLights(false)
	class:SetArmored(false)
	class:SetAlarm(false)
	class:SetNitro(false)
	class:SetHydraulics(false)
	class:SetLaunchControl(false)
	class:SetUnderglow(false)
	class:SetBodygroups({})
	class:Setup()
	return class
end

function FindVehicleInfo(strModel, strID)
	for k, v in pairs(list.Get("Vehicles")) do
		if v.Model:lower() == strModel:lower() then
			if strID and list.Get("Vehicles")[strID] and strID != k then continue end
			return k, v
		end
	end
	return false
end

function ENTITY:EnableVehicle()
	if !self.Disabled or !self.Fuel then return end
	self.Disabled = false
	self:ToggleIgnition(0.5)
	local colBC = self.Class:GetBodyColor()
	local col = Color(colBC.x, colBC.y, colBC.z)
	self:SetColor(Color(col.r, col.g, col.b, 255))
	--self.Owner:Save()
end

function ENTITY:DisableVehicle(NoFire, noDamage)
	if self.Disabled then return end
	if self.vehicleTable and self.vehicleTable.FuelTankSize == 0 then return end
	if !NoFire then
		local Fire = ents.Create('ent_fire')
		Fire:SetPos(self:GetPos())
		Fire:Spawn()
	end
	self.Disabled = true
	self:Fire('turnoff', '', .5)
	self:SetNW("ignition_on", false)
	self.CarDamage = 100
	self:SetNW("damage", 100)
	self.Class:SetDamage(100)
	self.AlarmEnabled = false
	self:SetColor(Color(0, 0, 0, 255))
	self.DoNitro = false
	--self.Owner:Save()
	if self:GetNW("cityrp_station", 0) != 0 then self:SetNW("cityrp_station", 0) end
	local Driver = self:GetDriver()
	if noDamage then return end
	if Driver and Driver:IsValid() and Driver:IsPlayer() then
		Driver:ExitVehicle()
		if Driver:Health() <= 20 then Driver:Kill()
		else Driver:SetHealth(Driver:Health() - 20)
		end
	end
end

function VEHICLE:SetVehicleParameters()
	local options = self:GetVehicleParams()
	options.engine.horsepower = (options.engine.horsepower * (self.Class and self.Class:GetHorsepower() or 1)) * 0.75
	options.engine.maxRPM = (options.engine.maxRPM * (self.Class and self.Class:GetMaxRPM() or 1)) * 1.5
	options.engine.maxSpeed = (options.engine.maxSpeed * (self.Class and self.Class:GetMaxSpeed() or 1))
	self:SetVehicleParams(options)
end

function ENTITY:SaveVehicle()
	if !self.Class or !self:IsVehicle() or !self.Class.Save then return end
	self.Class:Save()
end

function VEHICLE:StartTimedEvents()
	local iVehicleTimerTickRate = 0.1
	local last_fuel = 0
	local last_pos = false
	local last_nitro = nil
	local function VehicleTimer(self)
		if IsValid(self.PickedUpBy) then return end
		if self.OverrideOwner then return end
		if !self.Class and !IsValid(self.Owner) and !self.vehicleTable then return end
		
		// Car alarms
		if self.AlarmEntity and self.AlarmEnabled and self.CarDamage != 100 then
			if self.AlarmPos < CurTime() then
				self.AlarmEntity:Stop()
				self.AlarmEntity = CreateSound(self, Sound("icrp/cars/car_alarm.mp3"))
				self.AlarmEntity:Play()
				self.AlarmPos = CurTime() + 14
			end
		elseif self.AlarmEntity and self.AlarmPos != 0 then
			self.AlarmEntity:Stop()
			self.AlarmPos = 0
		end
		
		// Odometer
		if self.Class and self.Class.GetOdometer then
			if last_pos then
				if self:GetPos():Distance(last_pos) > 0 then
					self.Class:SetOdometer((self.Class:GetOdometer() or 0) + self:GetPos():Distance(last_pos))
					last_pos = self:GetPos()
				end
			else last_pos = self:GetPos()
			end
		end

		// Nitro
		if IsValid(self:GetDriver()) and self:GetNW("nitro", false) then
			if self.DoNitro == true and !self.Disabled and self.Fuel > 0 and self:GetNW("ignition_on", false) then
				self.NitroTime = math.Clamp(self.NitroTime + iVehicleTimerTickRate, 0, 13)
				if !self.NextNitroEffect then
					self.NextNitroEffect = 0
				end
				if self:GetPhysicsObject():IsValid() then	
					self:GetPhysicsObject():ApplyForceCenter(self:GetForward() * self:GetPhysicsObject():GetMass() * 50 * (self.NitroTime / 2))
				end
				if last_nitro != self.NitroTime then last_nitro = self.NitroTime end
				if self.NitroTime == 15 and self:GetDriver():KeyDown(IN_SPEED) and self.vehicleTable and self.vehicleTable.FuelTankSize > 0 then
					local d = self:GetDriver()
					self:SetColor(Color(50, 50, 50, 255))
					self.Disabled = true
					GAMEMODE.Explode(self:GetPos(), self)
					self.NextNitroEffect = CurTime() + 1
					self.NitroTime = 0
					self.DoNitro = false
					d:TakeDamage(50)
				end
			else
				self.NitroTime = math.Clamp(self.NitroTime - (iVehicleTimerTickRate * 0.5), 0, 13)
				if last_nitro != self.NitroTime then last_nitro = self.NitroTime end
			end
		end
		
		// Fuel checks
		local iSpeed = self:GetVelocity():Length() / 17.6
		if iSpeed < 1 then iSpeed = 1 end
		self.Fuel = self.Fuel or 0
		if self.Class then
			if self.Class:GetFuel() >= 0 and self:GetNW("ignition_on", false) then
				local loss = math.abs(((self.DoNitro and 20 or 2) * 1 / 2000 * iSpeed * imperial.Vehicle.Database[self.Class:GetVehicleID()].FuelPerMile * iVehicleTimerTickRate))
				self.Fuel = math.Clamp(self.Fuel - loss, 0, imperial.Vehicle.Database[self.Class:GetVehicleID()].FuelTankSize)
				// Network
				local fuel = math.Round(self.Fuel or -1, 2)
				if last_fuel != fuel then
					self.Class:SetFuel(fuel)
					last_fuel = fuel
				end
				if self.Fuel == 0 or self.Class:GetFuel() == 0 then
					self:SetNW("ignition_on", false)
					self:Fire("turnoff")
					local vehDB = imperial.Vehicle.Database[self.Class:GetVehicleID()]
					if vehDB.FuelType and vehDB.FuelType == FUELTYPE.ELECTRIC then return end
					self:EmitSound("vehicles/commoncar/v8_stop1.wav", 100, 90)
				end
			end
		end
		
		// Car damage
		if !self.RealDamage_LastVelocity then self.RealDamage_LastVelocity = Vector(0, 0, 0) end
		local ve = (self.RealDamage_LastVelocity - self:GetVelocity()) / 17.6
		local iDeltaVelocity = Vector(ve.x, ve.y, 0):Length()
		local p = self:GetDriver()
		if iDeltaVelocity > 25 and IsValid(self:GetDriver()) and self.Class then
			if self.Armor then self.CarDamage = math.Clamp((self.CarDamage or 0) + iDeltaVelocity * 0.1, 0, 100)
				elseif self.SuperArmor then self.CarDamage = math.Clamp((self.CarDamage or 0) + iDeltaVelocity * 0.05, 0, 100)
				else self.CarDamage = math.Clamp((self.CarDamage or 0) + iDeltaVelocity * 0.25, 0, 100)
			end
			self:SetNW("damage", self.CarDamage)
			self.Class:SetDamage(self.CarDamage)
			--self.Owner:Save()
			local c = self.Class:GetBodyColor()
			local col = Color(c.r,c.g,c.b)
			local m = self.CarDamage / 100
			self:SetColor(Color(col.r - col.r * m, col.g - col.g * m, col.b - col.b * m))
			local tblPassengers = {}
			table.insert(tblPassengers, p)
			if self.PassengerSeats then
				for k, s in pairs(self.PassengerSeats) do
					if IsValid(s) and IsValid(s:GetDriver()) then
						table.insert(tblPassengers, s:GetDriver())
					end
				end
			end
			for i = 1, #tblPassengers do
				local passenger = tblPassengers[i]
				if IsValid(passenger) and iDeltaVelocity > 35 then passenger:SetHealth(math.Clamp(passenger:Health() - math.Round((iDeltaVelocity - 50) / 5), 1, 100)) end
				if IsValid(passenger) and iDeltaVelocity > 150 and !passenger.SeatbeltOn then
					self.DoNitro = false
					passenger:ExitVehicle()
					passenger:SetPos(self:GetPos() + self:OBBCenter() + (self:GetForward() * self:OBBMaxs().y))
					if passenger:Alive() then
						passenger:Ragdoll(true, false, self.RealDamage_LastVelocity)
						timer.Simple(5, function() if IsValid(passenger) then passenger:Ragdoll(false) end end)
					end
				end
			end
			if self.CarDamage > 99 then
				p:ChatPrint("Your car has been damaged too much, the engine broke down.")
				self.RestartEngineSound = CreateSound(self, "vehicles/Crane/crane_startengine1.wav")
				self.RestartEngineSound:ChangePitch(0.5, 1)
				self.RestartEngineSound:Play()
				self:DisableVehicle(true, true)
				self:ToggleIgnition()
				timer.Simple(2, function()
					if self.RestartEngineSound then
						self.RestartEngineSound:Stop()
						self.RestartEngineSound = nil
					end
				end)
			elseif iDeltaVelocity > 50 and self.CarDamage > 50 then
				p:ChatPrint("Your car has been suffering from much damage. Your engine has started to stall.")
				self.RestartEngineSound = CreateSound(self, "vehicles/Crane/crane_startengine1.wav")
				self.RestartEngineSound:ChangePitch(0.5, 1)
				self.RestartEngineSound:Play()
				self:ToggleIgnition()
				timer.Simple(4.4, function()
					if IsValid(self) then
						if self.Fuel > 0 then self:ToggleIgnition() end
						if self.RestartEngineSound then self.RestartEngineSound:Stop() self.RestartEngineSound = nil end
					end
				end)
			end
			local vDamagePos = ((self:NearestPoint(self:GetPos() + Vector(0, 0, self:OBBMaxs().z) + ve) - self:GetPos()) * 0.9) + self:GetPos()
			local e = EffectData()
			e:SetStart(vDamagePos)
			e:SetOrigin(vDamagePos)
			util.Effect("ManhackSparks", e)
			for i=1, iDeltaVelocity / 100 do
				util.Decal("Dark", self:GetPos(), vDamagePos + VectorRand() * iDeltaVelocity / 100)
			end
			if self.CarDamage >= 100 and !self.Disabled then self:DisableVehicle() end
		end
		self.RealDamage_LastVelocity = self:GetVelocity()
		--self:SaveVehicle()
	end
	timer.Create("FuelDamage"..tostring(self:EntIndex()), iVehicleTimerTickRate, 0, function() VehicleTimer(self) end)
end

local LockSound = "doors/door_latch1.wav"
local UnlockSound = "doors/door_latch3.wav"
local AlarmLockSound = "car/carunlock.wav"
local AlarmUnlockSound = "car/carlock.wav"

function ENTITY:LockDoor(iDelay, bForce)
	if !self:IsDoor() and !self:IsVehicle() then return end
	if self:IsLocked() and !bForce then return end
	timer.Simple(iDelay or 0, function()
		if self.Class and self.Class.SetLocked then self.Class:SetLocked(true) else self:SetNW("Locked", true) end
		self:Fire("lock")
		self:EmitSound(self.Class and self.Class.GetAlarm and self.Class:GetAlarm() and AlarmLockSound or LockSound)
	end)
end

function ENTITY:UnlockDoor(iDelay, bForce)
	if !self:IsDoor() and !self:IsVehicle() then return end
	if !self:IsLocked(true) and !bForce then return end
	timer.Simple(iDelay or 0, function()
		if self.Class and self.Class.SetLocked then self.Class:SetLocked(false) else self:SetNW("Locked", false) end
		self:Fire("unlock")
		self:EmitSound(self.Class and self.Class.GetAlarm and self.Class:GetAlarm() and AlarmUnlockSound or UnlockSound)
		if self.Class and self.Class.GetAlarm and self.Class:GetAlarm() then
			self.AlarmEnabled = false
		end
	end)
end

function ENTITY:OpenDoor(bUseLocking)
	if bUseLocking then self:UnlockDoor() end
	self:Fire("Open", "", 0.1)
end

function ENTITY:CloseDoor(bUseLocking)
	self:Fire("Close")
	if bUseLocking then self:LockDoor(0.1) end
end
