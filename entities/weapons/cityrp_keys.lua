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

if SERVER then AddCSLuaFile() end
if CLIENT then
	SWEP.PrintName = "Keys"
	SWEP.Slot = 1
	SWEP.SlotPos = 1
	SWEP.DrawAmmo = false
	SWEP.DrawCrosshair = false
end

SWEP.Author = "Imperial Servers"
SWEP.Instructions = "Left Click: Lock Door, Right Click: Unlock Door"
SWEP.Contact = ""
SWEP.Purpose = ""

SWEP.ViewModelFOV = 50
SWEP.ViewModelFlip = true 
SWEP.AnimPrefix	 = "rpg"

SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false
SWEP.Spawnable = false
SWEP.AdminSpawnable = true
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ""

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = ""

SWEP.ViewModel = "models/perp2/v_fists.mdl"
SWEP.WorldModel = "models/perp2/w_fists.mdl"

function SWEP:Initialize() self:SetWeaponHoldType("normal") end
function SWEP:CanPrimaryAttack() return true end
function SWEP:Think() end
function SWEP:Deploy() if SERVER then self.Owner:DrawWorldModel(false) self.Owner:DrawViewModel(false) end end
function SWEP:Holster() if SERVER then self.Owner:DrawWorldModel(true) self.Owner:DrawViewModel(true) end return true end

function SWEP:Reload() end

function SWEP:PrimaryAttack()
	if CLIENT then return false end
	if self.Owner:InVehicle() then return false end
	local EyeTrace = self.Owner:GetEyeTrace()
	if(!EyeTrace.Entity or !IsValid(EyeTrace.Entity)) then return false end
	local Distance = self.Owner:EyePos():Distance(EyeTrace.HitPos)
	if Distance <= 150 and EyeTrace.Entity:IsDoor() then
		if self.Owner:CanManipulateDoor(EyeTrace.Entity) then
			EyeTrace.Entity:LockDoor()
		end
	end
	if Distance < 768 and (EyeTrace.Entity:IsVehicle() or EyeTrace.Entity.PropCar) then
		self.Weapon:SetNextPrimaryFire(CurTime() + 1)
		if !self.Owner:CanManipulateDoor(EyeTrace.Entity) then return false end
		if Distance <= 90 or EyeTrace.Entity.Class and EyeTrace.Entity.Class:GetAlarm() then
			EyeTrace.Entity:LockDoor()
		end
	end
end

function SWEP:SecondaryAttack()
	if CLIENT then return false end
	if self.Owner:InVehicle() then return false end
	local EyeTrace = self.Owner:GetEyeTrace()
	if(!EyeTrace.Entity or !IsValid(EyeTrace.Entity)) then return false end
	local Distance = self.Owner:EyePos():Distance(EyeTrace.HitPos)
	if Distance <= 75 and EyeTrace.Entity:IsDoor() and self.Owner:CanManipulateDoor(EyeTrace.Entity) then EyeTrace.Entity:UnlockDoor() end
	if Distance < 768 and (EyeTrace.Entity:IsVehicle() or EyeTrace.Entity.PropCar) then
		self.Weapon:SetNextSecondaryFire(CurTime() + 1)
		if !self.Owner:CanManipulateDoor(EyeTrace.Entity) then return false end
		if Distance <= 90 or (EyeTrace.Entity.Class and EyeTrace.Entity.Class:GetAlarm()) then
			EyeTrace.Entity:UnlockDoor(EyeTrace.Entity.Class and EyeTrace.Entity.Class:GetAlarm() and EyeTrace.Entity.AlarmEnabled and 0)
		end
	end
end
