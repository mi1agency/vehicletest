/*
 * Copyright © 2012-2023 Imperial Servers (http://www.imperialservers.com)
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

bedrock.core._debug_log = ""
bedrock.core._client_lua = ""
bedrock.core._plugins = bedrock.core._plugins or {}
function bedrock.core:Debug(str) self._debug_log = self._debug_log..string.format("[BEDROCK%s] ", (bedrock.core.UseTimestamps and string.format(" (%s)", os.date("%x %X", os.time())) or ""))..str.."\n" end

function bedrock.core:BedrockMessage(str, col)
	self:Debug(str)
	local tmp = string.Explode("\n", str)
	for i = 1, #tmp do
		MsgC(Color(151,64,255), string.format("[BEDROCK%s] ", (bedrock.core.UseTimestamps and string.format(" (%s)", os.date("%x %X", os.time())) or "")), col, string.format("%s\n", tmp[i]))
	end
end
function bedrock.core:Error(str) self:BedrockMessage(str, Color(255,64,64)) end
function bedrock.core:Warning(str) self:BedrockMessage(str, Color(255,255,64)) end
function bedrock.core:Message(str) self:BedrockMessage(str, color_white) end

function enum(strName)
	if _G[strName] and !_G[strName].___enum then error("Enum: attempted to overwrite global '"..strName.."'!!!") end
	if _G[strName] and _G[strName].___enum then print("Warning: overriding enum '"..strName.."'") end
	_G[strName] = setmetatable({___enum = true}, {__index = function(tbl, key) if rawget(tbl, key) then return key end end})
	setmetatable(_G, {__index = function(g, obj) local t = rawget(g, strName) if t and t.___enum then local c = table.Count(t) - 1 t[tostring(obj)] = c return c end end})
	return function(tblOverrides) for k,v in pairs(tblOverrides) do if !tonumber(k) then _G[strName][k] = v end end setmetatable(_G, nil) end
end

enum "BedrockLOADTYPE" {CLASS=1, LIBRARY=2, ENTITY=3, ITEM=4, PLUGIN=5, MAP=6}

function bedrock.core:LoadTypeString(iType)
	if iType == BedrockLOADTYPE.LIBRARY then return "LIBRARY"
	elseif iType == BedrockLOADTYPE.CLASS then return "CLASS"
	elseif iType == BedrockLOADTYPE.ENTITY then return "ENTITY"
	elseif iType == BedrockLOADTYPE.ITEM then return "ITEM"
	elseif iType == BedrockLOADTYPE.MAP then return "MAP"
	elseif iType == BedrockLOADTYPE.PLUGIN then return "PLUGIN"
	end
	return "UNKNOWN"
end
function bedrock.core:ItemNameFromPath(strFolder, iIndex)
	local tmp = string.Explode("/", strFolder)
	return tmp[iIndex or #tmp]
end
bedrock.core._files = bedrock.core._files or {}
bedrock.core._files.client = bedrock.core._files.client or {}
bedrock.core._files.server = bedrock.core._files.server or {}
function bedrock.core:SafeDownload(strFile)
	local file_s = file.Read(strFile, "LUA")
	if !file_s or #file_s == 0 then return end
	AddCSLuaFile(strFile)
	self._files.client[strFile] = file.Time(strFile, "LUA")
	self._client_lua = self._client_lua .. "\n\n" .. file_s
end
function bedrock.core:GetItemDataFromPath(strPath, nLoadType)
	local tmp = string.Explode("/", strPath)
	if !tmp then return nil end
	return tmp[#tmp], BedrockLOADTYPE[tmp[#tmp-1]:upper()] == nLoadType
end
function bedrock.core:GetEntClassFromPath(strPath)
	local tmp = string.Explode("/", strPath)
	if !tmp then return nil end
	local count = #tmp
	local last_folder = tmp[count-1]
	local strFile = tmp[count]
	return (last_folder != "effects" --[[and last_folder != "stools"]] and last_folder != "weapons" and last_folder != "entities" and last_folder) or strFile:Replace(".lua", "")
end
function bedrock.core:InterpretEntities(strClass, strFile)
	if !strClass or !strFile then return end
	if self:TreeContainsValue(strFile, "effects") then
		EFFECT = {}
			include(strFile)
			EFFECT.Folder = "effects/"..strClass
			effects.Register(EFFECT, strClass)
		EFFECT = nil
	elseif self:TreeContainsValue(strFile, "entities") then
		ENT = {}
			include(strFile)
			ENT.Folder = "entities/"..strClass
			scripted_ents.Register(ENT, strClass)
		ENT = nil
	elseif self:TreeContainsValue(strFile, "weapons") then
		SWEP = {}
			include(strFile)
			SWEP.Folder = "weapons/"..strClass
			weapons.Register(SWEP, strClass)
		SWEP = nil
	end
end
function bedrock.core:SafeInclude(strFile, strLoadType, bGamemode)
	local file_s = file.Read(strFile, "LUA")
	if SERVER and !file_s then return end
	if SERVER and #file_s == 0 then return end
	local tbl = bGamemode and bedrock.theme or self
	if tbl[strLoadType] and !table.HasValue(tbl[strLoadType], strFile) then table.insert(tbl[strLoadType], strFile) end
	if SERVER then self._files.server[strFile] = file.Time(strFile, "LUA") end
	if strLoadType:lower() == "entity" then self:InterpretEntities(self:GetEntClassFromPath(strFile), strFile) return end
	if strLoadType:lower() == "class" and simploo then simploo.syntax.init() include(strFile) simploo.syntax.destroy() return end
	include(strFile)
end
function bedrock.core:FindStateSorted(strBaseFolder)
	local function StateSort(a, b)
		if a:lower():find("sh_") and !b:lower():find("sh_") then return true end
		if a:lower():find("sh_") and b:lower():find("sh_") then return a < b end
		if a:lower():find("shared") and !b:lower():find("shared") then return true end
		if a:lower():find("shared") and b:lower():find("shared") then return a < b end
		if !a:lower():find("sh_") and !b:lower():find("sh_") and !a:lower():find("shared") and !b:lower():find("shared") then return a < b end
	end
	local files, folders = file.Find(strBaseFolder.."/*", "LUA")
	table.sort(files, StateSort)
	table.sort(folders, StateSort)
	return files, folders
end
function bedrock.core:TreeContainsValue(strTree, strFind)
	local tmp = string.Explode("/", strTree)
	if !tmp then return false end
	for i = 1, #tmp do if tmp[i] == strFind then return true end end
	return false
end
function bedrock.core:TreeContainsWildcardValue(strTree, tblFind)
	local tmp = string.Explode("/", strTree)
	if !tmp then return false end
	for i = #tmp, 1, -1 do
		local str = ""
		local j = i
		while j > 0 do
			str = tmp[j] .. "/" .. str
			j = j - 1
		end
		if table.HasValue(tblFind, str.."*") then return true end
	end
	return false
end
function bedrock.core:StateFromFile(strFile, strTree)
	return ( (strFile:Left(3) == "sv_" or (strTree and (strTree:find("/sv_") or strTree:Left(3) == "sv_" or self:TreeContainsValue(strTree, "server")))) and "SERVER" or
	(strFile:Left(3) == "cl_" or (strTree and (strTree:find("/cl_") or strTree:Left(3) == "cl_" or self:TreeContainsValue(strTree, "client") or self:TreeContainsValue(strTree, "effects")))) and "CLIENT" or "SHARED" )
end
function bedrock.core:FileLoader(strBaseFolder, nLoadType, bGamemode, strTree)
	local total_files = 0
	local files, folders = self:FindStateSorted(strBaseFolder)
	local strLoadType = self:LoadTypeString(nLoadType)
	// First we need to check for prescence of an <itemname>.json file to process, especially for requireds
	local item_name, bMatchesLoadType = self:GetItemDataFromPath(strBaseFolder, nLoadType)
	if !strTree then self:Debug(string.format("📂 %s", strBaseFolder, strLoadType)) end
	for i = 1, #files do
		// Make sure the remaining files processed here are lua files
		if files[i]:Right(4) != ".lua" then continue end
		local strState = self:StateFromFile(files[i], strTree)
		// Don't print/load if state file is wrong
		if strState == "SERVER" and CLIENT then continue end
		self:Debug(string.format(" %s %s%s", (strState == "CLIENT" and SERVER and "  " or "📄"), files[i]:Replace(".lua", ""), (SERVER and strState != "SERVER") and " 👉" or ""))
		if strState == "CLIENT" and SERVER then self:SafeDownload(strBaseFolder.."/"..files[i]) continue end
		// This is still messy :/
		if SERVER and ((files[i]:Left(3) != "sv_" and files[i]:Left(6) != "server") and (strTree == nil or (strTree and (!strTree:find("/sv_") and !self:TreeContainsValue(strTree, "server"))))) then
			self:SafeDownload(strBaseFolder.."/"..files[i])
		end
		if CLIENT and (files[i]:Left(3) == "sv_" or (strTree and ((strTree:find("/sv_") or strTree:Left(3) == "sv_" or self:TreeContainsValue(strTree, "server"))))) then continue end
		if SERVER and (files[i]:Left(3) == "cl_" or (strTree and ((strTree:find("/cl_") or strTree:Left(3) == "cl_" or self:TreeContainsValue(strTree, "client"))))) then continue end
		self:SafeInclude(strBaseFolder.."/"..files[i], strLoadType:lower(), bGamemode)
		total_files = total_files + 1
	end
	local lastTree = ""
	for i = 1, #folders do
		if self.Manifest and table.Count(self.Manifest) > 0 and strLoadType:lower() != folders[i] and self.Manifest[strLoadType] then
			local load = false
			if table.HasValue(self.Manifest[strLoadType], folders[i]) then load = true end
			if strTree and table.HasValue(self.Manifest[strLoadType], strTree) then load = true end
			if strTree and self:TreeContainsWildcardValue(strTree, self.Manifest[strLoadType]) then load = true end
			if strTree and table.HasValue(self.Manifest[strLoadType], strTree.."/"..folders[i]) then load = true end
			if bGamemode and table.HasValue(self.Manifest[strLoadType], "GAMEMODE") then load = true end
			if !load then
				self:Warning(string.format("❎ %s RESTRICTED BY MANIFEST", (strTree and strTree.."/" or "")..folders[i]))
				continue
			end
		end
		if lastTree != strBaseFolder then self:Debug(string.format("📂 %s", strBaseFolder.."/"..folders[i], strLoadType)) lastTree = strBaseFolder.."/"..folders[i] end
		if nLoadType == BedrockLOADTYPE.PLUGIN then self._plugins[folders[i]] = true end
		total_files = total_files + self:FileLoader(strBaseFolder.."/"..folders[i], nLoadType, bGamemode, (strTree and strTree.."/" or "")..folders[i]:lower())
	end
	return total_files
end

function bedrock.core:LoadFilesByType(nLoadType, strDir)
	local strPath, bGamemode = "", false
	local strRelPath = "/"..self:LoadTypeString(nLoadType):lower()
	if nLoadType == BedrockLOADTYPE.MAP then strRelPath = strRelPath .. "/"..game.GetMap() end
	if !strDir or strDir == "" then strPath = GM.Folder:gsub("gamemodes/", "")..strRelPath else strPath = strDir..strRelPath end
	bGamemode = strPath:find("/vehicletest")
	return self:FileLoader(strPath, nLoadType, bGamemode)
end

function bedrock.core:PluginLoaded(strName) return self._plugins[strName] end

// If there is a valid theme running then let's load our libraries and the theme itself
function bedrock.core:Loader(strGamemodeFolder)
	GM = GM or GAMEMODE or gmod.GetGamemode()
	self._debug_log = ""
	bedrock.theme.folder = strGamemodeFolder or GM.Folder:gsub("gamemodes/", "").."/"
	local HasManifest = file.Exists(bedrock.theme.folder.."/manifest.json", "LUA")
	if bedrock.theme.folder:Left(8) == "bedrock." or HasManifest or GetGlobalBool("BedrockEnabled", false) then
		if SERVER then SetGlobalBool("BedrockEnabled", true) end
		// Before loading ANYTHING, we check for a manifest in the gamemode to know what to load or not
		if HasManifest then self.Manifest = util.JSONToTable(file.Read(bedrock.theme.folder.."/manifest.json", "LUA") or {}) end
		
		// Now we can safely load everything if there is no file or a blank file, or only what was requested
		local core_files = self:LoadFilesByType(BedrockLOADTYPE.LIBRARY, bedrock.theme.folder:Replace("/vehicletest", "").."/bedrock/core")

		// Good, load up the theme and let's run after gamemode init!
		local gamemode_files = {[BedrockLOADTYPE.CLASS]=0, [BedrockLOADTYPE.LIBRARY]=0, [BedrockLOADTYPE.ENTITY]=0, [BedrockLOADTYPE.ITEM]=0, [BedrockLOADTYPE.PLUGIN]=0}
		for numLT, count in ipairs(gamemode_files) do gamemode_files[numLT] = self:LoadFilesByType(numLT, bedrock.theme.folder) end
		hook.Add("InitPostEntity", "bedrock.loadmap", function()
			GM = GAMEMODE
			gamemode_files[BedrockLOADTYPE.MAP] = self:LoadFilesByType(BedrockLOADTYPE.MAP, bedrock.theme.folder)
			self:Debug(string.format("Loaded %d Core LIBRARY files", core_files))
			for numLT, count in ipairs(gamemode_files) do self:Debug(string.format("Loaded %d Gamemode %s files", count, self:LoadTypeString(numLT))) end
			self:Debug(string.format("Bedrock Core and theme '%s' loaded.", GM.Title))
			file.Write(string.format("bedrock.debug_log.%s.%s.txt", (SERVER and "sv" or "cl"), "vehicletest"), self._debug_log)
		end)
	else
		if SERVER then self:Error("Can not load without a valid theme!") else self:Error("Client files auto loaded based on downloaded files.") end
	end
	// Call a post-loaded hook so gamemodes can initialize player data and other things properly
	hook.Run("Bedrock_PostInit")
end
bedrock.core:Message("Core Initialized")
