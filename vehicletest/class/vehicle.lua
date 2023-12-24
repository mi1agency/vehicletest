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
class "Vehicle" {
	public {
		__construct				= function(self, strUUID) if strUUID then self:SetUniqueID(strUUID) end ClassSetupNetworking(self) end,
		__declare				= function(self) ClassAutoGetSet(self) end,
		Setup 					= function(self) self.All[self:AllKey()] = self end,
		AllKey 					= function(self) return self:GetUniqueID() end,

		m_strUniqueID			= networked,
		m_strVehicleID			= networked,
		m_strOwner				= networked,
		m_strName 				= networked,
		m_entEntity 			= networked,

		m_numPrice				= networked,
		m_strMake				= networked,
		m_strModel				= networked,
		m_strEntModel			= networked,
		m_strCategory			= networked,
		m_strFineReason 		= networked,
		m_numFineAmount			= networked,
		m_numFuelTankSize		= networked,
		m_numFuelPerMile		= networked,
		m_numMileage			= networked,
		m_numFuel 				= networked,
		m_bLocked 				= networked,
		m_numDamage				= networked,
		m_bForSale				= networked,
		m_numForSalePrice		= networked,
		m_numDurability			= networked,

		m_bMusicLights			= networked,
		m_bArmored				= networked,
		m_bAlarm				= networked,
		m_bNitro				= networked,
		m_bHydraulics			= networked,
		m_bLaunchControl		= networked,
		m_bUnderglow			= networked,
		m_colUnderglowColor		= networked,
		m_colBodyColor			= networked,
		m_numSkin				= networked,
		m_numMaxRPM				= networked,
		m_numMaxSpeed			= networked,
		m_numHorsepower			= networked,
		m_tblBodygroups			= networked,
	},
	static {
		All 					= {},
		Database				= {},
	},
}
