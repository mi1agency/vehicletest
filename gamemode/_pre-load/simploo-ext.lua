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

local strPattern = "m_%U*%u"
function ClassPath(cl) return cl.className:gsub('%.', '/') end
function ClassVarName(str) local a = str:gsub(str:match(strPattern), str:match(strPattern):sub(-1), 1) return a end
function ClassAutoGetSet(class)
	local tblMembers = {}
	for k, v in pairs(class.members) do table.insert(tblMembers, k) end
	for _, k in ipairs(tblMembers) do
		if k:match(strPattern) then
			local strGet, strSet = "Get", "Set"
			if class.members[k].modifiers.private then strGet = "GetPrivate" strSet = "SetPrivate" end
			if !class.members[strGet..ClassVarName(k)] then class.members[strGet..ClassVarName(k)] = {owner = class, modifiers = {public = true}, value = function(s) return s[k] end} end
			if !class.members[strSet..ClassVarName(k)] then class.members[strSet..ClassVarName(k)] = {owner = class, modifiers = {public = true}, value = function(s, var) s[k] = var end} end
		end
	end
end
