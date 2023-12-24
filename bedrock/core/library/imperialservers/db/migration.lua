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

namespace "imperial"
class "Migration" {
	public {
		__construct				= function(self, strTable) if strTable then self:SetTable(strTable) end end,
		__declare					= function(self) ClassAutoGetSet(self) end,
		
		String 						= function(self, strKey, strChars, objDefault) end,
		Text 							= function(self, strKey, strText, objDefault) end,
		JSON 							= function(self, strKey, strJSON, objDefault) end,
		Bool 							= function(self, strKey, bVal, objDefault) end,
		Integer 					= function(self, strKey, intVal, objDefault) end,
		UInteger 					= function(self, strKey, uintVal, objDefault) end,
		Float 						= function(self, strKey, flVal, objDefault) end,
		UFloat 						= function(self, strKey, uflVal, objDefault) end,
		Timestamp					= function(self, strKey, timeUnix, objDefault) end,
		
		Primary 					= function(self, strKey) end,
		Increment					= function(self, intKey) end,
		
		Create 						= function(self)
			for strKey, tbl in pairs(self.m_tblObjects) do
				//
			end
		end,
		
		m_strTable				= null,
		m_tblObjects 			= {},
	}
}

local strSQLTemplate = [[
CREATE TABLE IF NOT EXISTS `?` (
  `uuid` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `vehicle_id` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `fine_reason` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `fine_amount` int(11) unsigned DEFAULT NULL,
  `fuel` double unsigned DEFAULT NULL,
  `damage` int(11) unsigned NOT NULL DEFAULT '0',
  `durability` int(11) unsigned NOT NULL DEFAULT '100',
  `for_sale` bit(1) NOT NULL DEFAULT b'0',
  `for_sale_price` int(11) unsigned NOT NULL DEFAULT '0',
  `music_lights` bit(1) NOT NULL DEFAULT b'0',
  `armored` bit(1) NOT NULL DEFAULT b'0',
  `alarm` bit(1) NOT NULL DEFAULT b'0',
  `nitro` bit(1) NOT NULL DEFAULT b'0',
  `hydraulics` bit(1) NOT NULL DEFAULT b'0',
  `launch_control` bit(1) NOT NULL DEFAULT b'0',
  `underglow` bit(1) NOT NULL DEFAULT b'0',
  `underglow_color` json DEFAULT NULL,
  `body_color` json DEFAULT NULL,
  `skin` int(11) unsigned DEFAULT '0',
  `max_rpm` double NOT NULL DEFAULT '1',
  `max_speed` double NOT NULL DEFAULT '1',
  `horsepower` double NOT NULL DEFAULT '1',
  `bodygroups` json DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;
]]
