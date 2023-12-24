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

local function NetType(objData)
	strType = type(objData)
	if strType == "boolean" then
		return "Bit"
	elseif strType == "number" then
		return "Double"
	elseif strType == "entity" or strType == "Entity" or strType == "player" or strType == "Player" then
		return "Entity"
	elseif strType == "Angle" then
		return "Angle"
	elseif strType == "Vector" then
		return "Vector"
	elseif strType == "table" then
		return "Table"
	elseif strType == "nil" then
		return false
	else
		return "String"
	end
end

local m = FindMetaTable("Entity")
if !m then return end

util.AddNetworkString("ICNetworking")
util.AddNetworkString("ICNetworking_Reply")

local NW_RECHECK_TIME = 10

local function NWInit(objPl)
	local i = 0
	if objPl and IsValid(objPl) then
		for objEnt, t in pairs(NWVars) do
			if objEnt != NW_GLOBAL_INDEX and type(objEnt) != "number" and !IsValid(objEnt) then continue end
			for strName, tbl in pairs(t) do
				i = i + 0.02
				if !tbl.private and NetType(tbl.value) then
					TimedData(objPl, objEnt == NW_GLOBAL_INDEX and NW_GLOBAL_INDEX or objEnt:EntIndex(), strName, NetType(tbl.value), tbl.value, i)
				end
			end
		end
	end
end
hook.Add("PlayerInitialSpawn", "NWInit", NWInit)

function TimedData(objPl, intIndex, strName, strType, objVal, iAdd)
	if intIndex == NW_GLOBAL_INDEX then
		--NWVars[intIndex][strName].recheck[objPl] = true
		--timer.Simple(NW_RECHECK_TIME, function() RecheckTimer(intIndex, strName, objVal) end)
	end
	timer.Simple(1 + iAdd, function() if IsValid(objPl) then SendNWData(objPl:EntIndex(), intIndex, strName, strType, objVal) end end)
end

local sgs = SetGlobalString
local sgi = SetGlobalInt
local sgb = SetGlobalBool
local sgf = SetGlobalFloat

local last_hostname = nil
function SetGlobalString(strName, objVal)
	if strName == "ServerName" then
		if last_hostname == objVal then
			return
		else
			last_hostname = objVal
		end
	end
	NetworkData(NW_GLOBAL_INDEX, strName, objVal, false, false, true)
end
SetGlobalInt = SetGlobalString
SetGlobalBool = SetGlobalString
SetGlobalFloat = SetGlobalString

function NetworkCleanUp(objPl)
	if NWVars and NWVars[objPl] then
		NWVars[objPl] = nil
	end
end

local function ClearEnt(objEnt)
	if NWVars and NWVars[objEnt] then
		NWVars[objEnt] = nil
	end
end
hook.Add("EntityRemoved", "NWEndEnt", ClearEnt)

function SendNWData(filter, intIndex, strName, strType, objVal)
	net.Start("ICNetworking")
	net.WriteUInt(intIndex, NW_GLOBAL_BITS)
	net.WriteString(strName)
	net.WriteString(strType)
	net["Write"..strType](objVal)
	if filter and filter != 0 then net.Send(Entity(filter)) else net.Broadcast() end
end

local function NW_SyncReply(len, objPl)
	if !IsValid(objPl) then return end
	local intIndex = net.ReadUInt(16)
	local strName = net.ReadString()
	local objEnt = intIndex == NW_GLOBAL_INDEX and NW_GLOBAL_INDEX or Entity(intIndex)
	if !NWVars or !NWVars[objEnt] or !NWVars[objEnt][strName] or !NWVars[objEnt][strName].recheck or !NWVars[objEnt][strName].recheck[objPl] then return end
	NWVars[objEnt][strName].recheck[objPl] = nil
end
net.Receive("ICNetworking_Reply", NW_SyncReply)

function RecheckTimer(objEnt, strName, objVal, bPrivate)
	for k, v in pairs(player.GetAll()) do
		if NWVars[objEnt] and NWVars[objEnt][strName] and NWVars[objEnt][strName].recheck[v] then
			if objEnt == NW_GLOBAL_INDEX then
				NetworkData(NW_GLOBAL_INDEX, strName, objVal, bPrivate, false, true)
			else
				objEnt:SetNW(strName, objVal, bPrivate, false, true)
			end
		end
	end
end

function NetworkData(objEnt, strName, objVal, bPrivate, bDontNW, bRecheck)
	if IC_DEBUG then print(objEnt, strName, objVal, bPrivate, bDontNW, bRecheck) end
	if NWVars and NWVars[objEnt] and NWVars[objEnt][strName] and NWVars[objEnt][strName].value ~= nil and NWVars[objEnt][strName].value == objVal and not bRecheck then return end
	NWVars[objEnt] = NWVars[objEnt] or {}
	NWVars[objEnt][strName] = {}
	NWVars[objEnt][strName].private = bPrivate
	NWVars[objEnt][strName].value = objVal
	--[[NWVars[objEnt][strName].recheck = {}
	for k,v in pairs(player.GetAll()) do
		NWVars[objEnt][strName].recheck[v] = bRecheck == nil and true or bRecheck
	end]]
	local index = objEnt != NW_GLOBAL_INDEX and objEnt:EntIndex() or NW_GLOBAL_INDEX
	local filter = bPrivate and index or 0
	if !bDontNW and NetType(objVal) then
		SendNWData(filter, index, strName, NetType(objVal), objVal)
		--timer.Simple(NW_RECHECK_TIME, function() RecheckTimer(objEnt, strName, objVal, bPrivate) end)
	end
end

function m:SetNW(strName, objVal, bPrivate, bDontNW, bRecheck)
	if IsValid(self) then
		NetworkData(self, strName, objVal, bPrivate, bDontNW, bRecheck)
		NW_HookCall(strName, objVal)
	end
end
