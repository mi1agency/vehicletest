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

function CallServer(str) net.Start(str) net.SendToServer() end

local m = FindMetaTable("Entity")
if !m then return end

local MAX_HOPS = 1000
local DATA = {}

local function SetData(objEnt, strName, objVal)
	NWVars[objEnt] = NWVars[objEnt] or {}
	NWVars[objEnt][strName] = objVal
	NW_HookCall(strName, objVal)
end

local NWTick = autohook:new()
function NWTick:Think()
	if !DATA or #DATA == 0 then return end
	local c = #DATA
	local rem = {}
	for i = 1, c do
		if DATA and DATA[i] and DATA[i].hops > 0 then
			local intIndex = DATA[i].index
			local strName = DATA[i].name
			local objVal = DATA[i].val
			local objEnt = Entity(intIndex)
			if objEnt and IsValid(objEnt) then
				SetData(objEnt, strName, objVal)
				rem[i] = true
			end
			if DATA and DATA[i] then
				DATA[i].hops = DATA[i].hops - 1
			end
		else
			rem[i] = true
		end
	end
	for i = 1, c do
		if rem[i] then
			table.remove(DATA, i)
		end
	end
end

local function ICNetworking()
	local intIndex = net.ReadUInt(NW_GLOBAL_BITS)
	local objEnt = intIndex == NW_GLOBAL_INDEX and NW_GLOBAL_INDEX or Entity(intIndex)
	local strName = net.ReadString()
	local strType = net.ReadString()
	local objVal = net["Read"..strType]()
	if strType == "Bit" then
		objVal = tobool(objVal)
	end
	
	if intIndex != NW_GLOBAL_INDEX and !IsValid(objEnt) then
		table.insert(DATA, {index=intIndex, name=strName, val=objVal, hops=MAX_HOPS})
		return
	end
	
	SetData(objEnt, strName, objVal)
	if IC_DEBUG and LocalPlayer().IsDeveloper and LocalPlayer():IsDeveloper() then print("Reply", strName, objVal) end
	--[[net.Start("ICNetworking_Reply")
		net.WriteUInt(intIndex, NW_GLOBAL_BITS)
		net.WriteString(strName)
	net.SendToServer()]]
end
net.Receive("ICNetworking", ICNetworking)

// Provided only for prediction
function m:SetNW(strName, objVal)
	if self and IsValid(self) and NWVars[self] and NWVars[self][strName] then
		NWVars[self][strName] = objVal
	end
end
