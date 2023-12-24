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

GM.Name		= "Vehicle Test"
GM.Author	= "Imperial Servers"
GM.Website	= "https://www.imperialservers.com"

GM = GM or GAMEMODE or gmod.GetGamemode()
hook.Add("InitPostEntity", "GM", function() GM = GM or GAMEMODE or gmod.GetGamemode() end)

Foundation = {}
function Foundation:DownAndLoad(strPath) if SERVER then AddCSLuaFile(strPath) end include(strPath) end
Foundation:DownAndLoad(GM.Folder:gsub("gamemodes/", "").."/bedrock/load.lua")
Foundation:DownAndLoad("_pre-load/copyright.lua")
Foundation:DownAndLoad("_pre-load/simplify.lua")
Foundation:DownAndLoad("_pre-load/simploo-ext.lua")
Foundation:DownAndLoad("_pre-load/bedrock-load.lua")
