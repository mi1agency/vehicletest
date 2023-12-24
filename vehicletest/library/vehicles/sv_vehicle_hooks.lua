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

enum "FUELTYPE" {
	GAS = 1,
	DIESEL = 2,
	ELECTRIC = 3,
}

local function ClosedGarage(len, objPl)
	if objPl.CarSpawnPos then
		timer.Simple(2, function() if !IsValid(objPl) then return end objPl.CarSpawnPos = nil objPl.CarSpawnAng = nil end)
	end
end
net.Receive("cityrp_closed_garage", ClosedGarage)

local function ToggleOldEngine(len, objPl)
	local objVeh = objPl:GetVehicle()
	if !IsValid(objVeh) then return end
	--if objVeh.Class then return end
	if !objVeh:GetClass():find("jeep") then return end
	if !objVeh:GetDriver() == objPl then return end
	if !objPl.LastEngineToggle then objPl.LastEngineToggle = CurTime() end
	if objPl.LastEngineToggle > CurTime() then return end
	objPl.LastEngineToggle = CurTime() + 1
	if objVeh.Disabled then
		--objVeh:EmitSound("vehicles/commoncar/start.wav", 80, 110)
		return
	end
	objVeh:ToggleIgnition(objVeh:GetNW("ignition_on", false) and 0 or 1)
end
net.Receive("cityrp_vehicle_ignition", ToggleOldEngine)

function ENTITY:ToggleIgnition(iOptionalDelay)
	if !IsValid(self) or !self:IsVehicle() or self:GetClass() != "prop_vehicle_jeep" or !self.Class or !self.vehicleTable or self.vehicleTable.FuelTankSize == 0 then return end
	if self.vehicleTable.FuelType and self.vehicleTable.FuelType == FUELTYPE.ELECTRIC then return end
	if self:GetNW("ignition_on", false) then
		self:Fire("turnoff", 0, iOptionalDelay or 0)
		self:SetNW("ignition_on", false)
		--ToggleRadio(0, self, false)
		self:EmitSound("vehicles/commoncar/v8_stop1.wav", 100, 90)
	else
		self:EmitSound("vehicles/commoncar/start.wav", 80, 110)
		if !self.Class.GetFuel or self.Class:GetFuel() <= 0 then return end
		self:Fire("turnon", 0, iOptionalDelay or 1)
		self:SetNW("ignition_on", true)
		--ToggleRadio(0, self, true)
	end
end

local function NitroOn(len, objPl)
	if !IsValid(objPl:GetVehicle()) then return end
	if !objPl:GetVehicle():GetNW("nitro", false) or !objPl:GetVehicle():GetNW("ignition_on", false) then return end
	local bNitro = net.ReadBool()

	if bNitro then
		objPl:GetVehicle().DoNitro = true
		if !objPl:GetVehicle().NOSSound then
			objPl:GetVehicle().NOSSound = CreateSound(objPl:GetVehicle(), Sound("car/nosstart.wav"))
			objPl:GetVehicle().NOSSound:Play()
		else
			objPl:GetVehicle().NOSSound:Play()
		end
	else
		objPl:GetVehicle().DoNitro = false
		if objPl:GetVehicle().NOSSound then
			objPl:GetVehicle().NOSSound:Stop()
		end
	end
end
net.Receive("cityrp_vehicle_nitro", NitroOn)

local function catchHyd(len, Player)
	if(Player.nextHyd and Player.nextHyd > CurTime()) then return end
	if(!Player:InVehicle()) then return end
	
	if Player:GetVehicle().OverrideOwner then return end
	local owner = Player:GetVehicle().Owner
	
	if !Player:GetVehicle().Class or (Player:GetVehicle().Class and Player:GetVehicle().Class:GetHydraulics() == 0) then return end
	Player:GetVehicle():GetPhysicsObject():ApplyForceCenter(Player:GetVehicle():GetUp() * Player:GetVehicle():GetPhysicsObject():GetMass() * (Player:GetVehicle().Class:GetHydraulics() * 4))
	Player:GetVehicle():EmitSound("car/hydraulics.wav")
	Player.nextHyd = CurTime() + .8
end
net.Receive("cityrp_vehicle_hydraulics", catchHyd)

local function LaunchControl(objDriver, objVeh, mvData)
	if !objVeh.Class or !objVeh.Class:GetLaunchControl() then return end
	if mvData:KeyDown(IN_FORWARD) and mvData:KeyDown(IN_JUMP) and objVeh:GetPhysicsObject():GetVelocity():Length() == 0 and objVeh.LaunchControl != 1 then
		objDriver:ChatPrint("Launch Control Initialized: Release Brake to Launch.")
		objVeh.LaunchControl = 1
		local t = objVeh:GetVehicleParams()
		objVeh.startingPower = t.engine.horsepower
		objVeh.boostMul = 5
		t.engine.horsepower = objVeh.startingPower * objVeh.boostMul
		objVeh:SetVehicleParams(t)
	elseif mvData:KeyDown(IN_FORWARD) and objVeh.LaunchControl == 1 and !mvData:KeyDown(IN_JUMP) then
		local t = objVeh:GetVehicleParams()
		objVeh.boostMul = math.Max(objVeh.boostMul * 0.99, 2)
		t.engine.horsepower = objVeh.startingPower * objVeh.boostMul
		objVeh:SetVehicleParams(t)
	elseif mvData:KeyReleased(IN_FORWARD) and objVeh.LaunchControl == 1 then
		local t = objVeh:GetVehicleParams()
		objVeh.boostMul = 1
		t.engine.horsepower = objVeh.startingPower
		objVeh:SetVehicleParams(t)
		objVeh.startingPower = 0
		objVeh.LaunchControl = 0
	end
end
hook.Add("VehicleMove", "LaunchControl", LaunchControl)

// vehicle
util.AddNetworkString("cityrp_vehicle_ignition")
util.AddNetworkString("cityrp_vehicle_garage")
util.AddNetworkString("cityrp_vehicle_underglow")
util.AddNetworkString("cityrp_vehicle_musiclights")
util.AddNetworkString("cityrp_vehicle_hydraulics")
util.AddNetworkString("cityrp_vehicle_nitro")

function GM:PlayerSpawnVehicle(objPl, strModel, strName, tbl)
	objPl.SpawningVehicle = strModel
	return true
end

function GM:PlayerSpawnedVehicle(objPl, objVeh)
	if objVeh:GetModel() == objPl.SpawningVehicle then
		objPl:SpawnVehicle(objVeh)
	end
	objPl.SpawningVehicle = nil
end
