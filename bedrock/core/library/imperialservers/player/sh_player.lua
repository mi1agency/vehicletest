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

function PLAYER:GetUMsgString(str, objDefault) return self:GetNW(str, objDefault) end PLAYER.GetUMsgInt = PLAYER.GetUMsgString PLAYER.GetUMsgBool = PLAYER.GetUMsgString
function PLAYER:GetPrivateString(str, objDefault) return self:GetNW(str, objDefault) end PLAYER.GetPrivateInt = PLAYER.GetPrivateString PLAYER.GetPrivateBool = PLAYER.GetPrivateString
function PLAYER:SetPrivateString(str, val) self:SetNW(str, val, true) end PLAYER.SetPrivateInt = PLAYER.SetPrivateString PLAYER.SetPrivateBool = PLAYER.SetPrivateString
local userlevels = Config("userlevels")
function UserLevelName(iLevel) return userlevels[iLevel] and userlevels[iLevel].name or "" end
function PLAYER:GetUserLevel() return self:GetNW("userlevel", Config("ranks").PLAYER) end
function PLAYER:IsPuzzle() return IsValid(self) and (self:SteamID() == "STEAM_0:0:2239585" or self:SteamID() == "STEAM_0:1:8751553" or self:SteamID() == "STEAM_0:1:216275855") end
function PLAYER:IsAdmin() return ICRP_MOVIESERVER or self:GetUserLevel() >= Config("ranks").MOD end
function PLAYER:IsSuperAdmin() return ICRP_MOVIESERVER or self:GetUserLevel() >= Config("ranks").ADMIN end
function PLAYER:IsFounder() return ICRP_MOVIESERVER or self:GetUserLevel() >= Config("ranks").SENIOR end
function PLAYER:GetPower() return self:GetUserLevel() end
function PLAYER:IsHigherOrSame(objPl) return (self:GetPower() >= objPl:GetPower()) end
function PLAYER:IsHigher(objPl) return (self:GetPower() > objPl:GetPower()) end
local VIP = Config("vip")
function GetVIP(amount) for i = #VIP, 1, -1 do if amount >= VIP[i].start then return {Name=VIP[i].name, Color=VIP[i].color, Rank=i} end end end
function PLAYER:GetVIPLevel() return self:GetNW("viplevel", 0) end
function PLAYER:IsVIP() return ICRP_MOVIESERVER or self:GetVIPLevel() >= 25 end
function PLAYER:IsVIPOrAdmin() return ICRP_MOVIESERVER or self:IsVIP() or self:IsAdmin() end
function PLAYER:GetVIPName() return GetVIP(self:GetVIPLevel()).Name:gsub("%s%w", "") end
function PLAYER:GetVIPColor() return GetVIP(self:GetVIPLevel()).Color end
function PLAYER:GetVIPRank() return GetVIP(self:GetVIPLevel()).Rank end
function PLAYER:AdminMode() return self:GetNW("AdminMode", false) or self:Team() == TEAM_ADMIN end
function PLAYER:Near(iDistance, strClass, strModel)
    local NearbyEnts = ents.FindInSphere(self:GetPos(), iDistance)
    local NearATM = false
    for k, v in pairs(NearbyEnts) do
        if !v or !IsValid(v) then continue end
        if strClass and v:GetClass():find(strClass) then
            if strModel and v:GetModel() != strModel then continue end
            return v
        end
    end
    return false
end
function PLAYER:IsLookingAt(strClass, iDistance)
    local objEnt = self:GetEyeTrace().Entity
    if !IsValid(objEnt) or objEnt == Entity(0) or objEnt == game.GetWorld() then return false end
    if !objEnt:GetClass():find(strClass) then return false end
    if (iDistance and self:GetPos():Distance(objEnt:GetPos()) <= iDistance) or !iDistance then return objEnt end
end
function PLAYER:IsDoingSomethingTooFast()
    if(!PLAYER.LastSpamCheck) then PLAYER.LastSpamCheck = CurTime() end
    if(PLAYER.LastSpamCheck > CurTime()) then
        PLAYER:Notify("Please slow down, you're spamming the server!")
        PLAYER.LastSpamCheck = CurTime() + 0.5
        return true
    end
    return false
end
function PLAYER:GetUpTrace() local ourEnt = self if self:InVehicle() then ourEnt = self:GetVehicle() end return GetVectorTraceUp(ourEnt:GetPos()) end
function PLAYER:IsOutside() return self:GetUpTrace().HitSky end
function PLAYER:IsInside() return !self:IsOutside() end
