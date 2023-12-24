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

function GetVectorTraceUp(vec) local trace = {start = vec, endpos = vec + Vector(0, 0, 99999), mask = MASK_SOLID_BRUSHONLY} return util.TraceLine(trace) end

local CONFIG = {}
function Config(strName, objVal, strKey) if objVal == nil then return (strKey != nil and type(CONFIG[strName]) == "table") and CONFIG[strName][strKey] or CONFIG[strName] else CONFIG[strName] = objVal end end
Config("vip", {
	{start=0,	  name="NONE",      color=Color(255, 255, 255)},
	{start=25,    name="Bronze",    color=Color(205, 127, 50)},
	{start=50,    name="Silver",    color=Color(192, 192, 192)},
	{start=100,   name="Gold",      color=Color(255, 215, 0)},
	{start=250,   name="Sapphire",  color=Color(15, 82, 186)},
	{start=500,   name="Ruby",      color=Color(224, 17, 95)},
	{start=1000,  name="Diamond",   color=Color(151, 224, 240)},
	{start=2500,  name="Elite",     color=Color(64, 64, 64)},
	{start=5000,  name="Legendary", color=Color(27, 129, 151)},
	{start=10000, name="Royalty",   color=Color(53, 35, 87)},
})
Config("ranks", {BANNED = -1, PLAYER = 1, MEMBER = 50, TRUST = 99, MOD = 999, ADMIN = 9999, SENIOR = 99999, OVERSEER = 999999, PM = 9999999, EMPEROR = 99999999, DEV = 999999999})
local RANK = Config("ranks")
Config("userlevels", {
	[RANK.BANNED] = {name="Banned"},
	[RANK.PLAYER] = {name="Player"},
	[RANK.MEMBER] = {name="Member", discord="932813326872895508"},
	[RANK.TRUST] = {name="Trusted Player", discord="1110632559261515786"},
	[RANK.MOD] = {name="Moderator", discord="1109547728318496818"},
	[RANK.ADMIN] = {name="Administrator", discord="866895057357242409"},
	[RANK.SENIOR] = {name="Senior Administrator", discord="866895683549790208"},
	[RANK.OVERSEER] = {name="Overseer", discord="866894133330182164"},
	[RANK.PM] = {name="Community Director", discord="865966971405467688"},
	[RANK.EMPEROR] = {name="Emperor", discord="866324988985868361"},
	[RANK.DEV] = {name="Developer", discord="896162687946457109"},
})
Config("rank_perms", {
	[RANK.BANNED] = {},
	[RANK.PLAYER] = {},
	[RANK.MEMBER] = {},
	[RANK.TRUST] = {},
	[RANK.MOD] = {"Bring", "GoTo", "UnStuck", "UnStuck2", "KickPlayer"},
	[RANK.ADMIN] = {"BanPlayer", "Spawn", "AdminWarrant", "AdminRename", "RemoveFromJob", "DemoteFromJob"},
	[RANK.SENIOR] = {"SetUserLevel", "BlacklistVehicles", "BlacklistJob"},
	[RANK.OVERSEER] = {},
	[RANK.PM] = {},
	[RANK.EMPEROR] = {},
	[RANK.DEV] = {}
})
