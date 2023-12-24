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

local m = FindMetaTable("Entity")
if !m then return end

NWVars = NWVars or {}
NW_GLOBAL_INDEX = 65535
NW_GLOBAL_BITS = 16

NW_HOOKS = {}
function NW_HasHook(strName)
	return NW_HOOKS[strName]
end
function NW_HookCall(strName, objVal)
	if NW_HasHook(strName) then
		NW_HOOKS[strName](strName, objVal)
	end
end
function NW_Hook(strName, fnc)
	NW_HOOKS[strName] = fnc
end

local ggs = GetGlobalString
local ggi = GetGlobalInt
local ggb = GetGlobalBool
function GetGlobalString(strName, defValue)
	if SERVER then return NWVars[NW_GLOBAL_INDEX] and NWVars[NW_GLOBAL_INDEX][strName] and NWVars[NW_GLOBAL_INDEX][strName].value or defValue or 0 end
	return NWVars[NW_GLOBAL_INDEX] and NWVars[NW_GLOBAL_INDEX][strName] or defValue or 0
end
GetGlobalInt = GetGlobalString
GetGlobalBool = function(strName, defValue) return tobool(GetGlobalString(strName, defValue)) end
GetGlobalFloat = GetGlobalString

function m:GetNW(strName, objDefault)
	if !self or !IsValid(self) then return nil end
	if !NWVars or !NWVars[self] or !strName or NWVars[self][strName] == nil then return (objDefault ~= nil and objDefault) or nil end
	if CLIENT then
		if NWVars[self][strName] ~= nil then
			return NWVars[self][strName]
		end
	else
		if NWVars[self][strName].value ~= nil then
			return NWVars[self][strName].value
		end
	end
	return objDefault ~= nil and objDefault or nil
end
