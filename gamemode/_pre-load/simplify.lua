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

PLAYER	= FindMetaTable("Player")
ENTITY	= FindMetaTable("Entity")
VEHICLE	= FindMetaTable("Vehicle")
WEAPON	= FindMetaTable("Weapon")
NPC		= FindMetaTable("NPC")
NEXTBOT	= FindMetaTable("NextBot")
PT		= PrintTable

DeriveGamemode("sandbox")

function GM:OnReloaded() GM = GM or GAMEMODE or gmod.GetGamemode() timer.Simple(0.01, function() GM = GM or GAMEMODE or gmod.GetGamemode() end) end
