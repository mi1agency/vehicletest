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

function GM:Think()
	self:MonitorKeyBinds()
end

function GM:DeathRagdollEyes(objPl)
	if !IsValid(LocalPlayer()) or LocalPlayer():Alive() and !IsValid(LocalPlayer():GetNWEntity("ragdoll")) then return end
	local objRagdoll = objPl:GetRagdollEntity()
	if IsValid(LocalPlayer():GetNWEntity("ragdoll")) then objRagdoll = LocalPlayer():GetNWEntity("ragdoll") end
	if !IsValid(objRagdoll) then return end
	local attEyes = objRagdoll:GetAttachment(objRagdoll:LookupAttachment("eyes"))
	if !attEyes then return end
	local tblView = {}
	tblView["origin"] = attEyes.Pos
	tblView["angles"] = attEyes.Ang
	return tblView
end

hook.Add("CalcView", "RagdollEyes", function(ply) if IsValid(ply:GetNWEntity("ragdoll")) then return GAMEMODE:DeathRagdollEyes(ply) end end)
