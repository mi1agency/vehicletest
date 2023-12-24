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
		Save 					= function(self)
			imperial.Vehicle.SaveDB(self:GetUniqueID(), self:GetOwner(), self:GetVehicleID(), {
				fine_reason = self:GetFineReason(),
				fine_amount = self:GetFineAmount(),
				fuel = self:GetFuel(),
				damage = self:GetDamage(),
				durability = self:GetDurability(),
				for_sale = self:GetForSale(),
				for_sale_price = self:GetForSalePrice(),
				music_lights = self:GetMusicLights(),
				armored = self:GetArmored(),
				alarm = self:GetAlarm(),
				nitro = self:GetNitro(),
				hydraulics = self:GetHydraulics(),
				launch_control = self:GetLaunchControl(),
				underglow = self:GetUnderglow(),
				underglow_color = util.TableToJSON({r = self:GetUnderglowColor().r, g = self:GetUnderglowColor().g, b = self:GetUnderglowColor().b}),
				body_color = util.TableToJSON({r = self:GetBodyColor().r, g = self:GetBodyColor().g, b = self:GetBodyColor().b}),
				skin = self:GetSkin(),
				max_rpm = self:GetMaxRPM(),
				max_speed = self:GetMaxSpeed(),
				horsepower = self:GetHorsepower(),
				bodygroups = util.TableToJSON(self:GetBodygroups()),
			})
		end,
		Delete 					= function(self) imperial.Vehicle.DeleteDB(self:GetUniqueID()) end,
		TransferOwnership 		= function(self, strNewOwnerID) imperial.Vehicle.ChangeOwnerDB(self:GetUniqueID(), self:GetOwner(), strNewOwnerID) end,

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
		DeleteDB 				= function(strUUID)
			MySQLQuery(
				"DELETE FROM `cityrp_vehicles` WHERE `uuid` = ?",
				function(t, s, e)
					if s then
						Log("VEHICLE-DELETE", ("Permanently deleting vehicle: %s"):format(strUUID))
					else
						-- did not delete for some reason
					end
				end,
				{strUUID}
			)
		end,
		ChangeOwnerDB			= function(strUUID, strOwner, strNewOwner)
			-- TODO
		end,
		SaveDB 					= function(strUUID, strOwner, strVehicleID, tblData, bCount)
			bCount = bCount or 0
			MySQLQuery(
				"SELECT * FROM `cityrp_vehicles` WHERE `uuid` = ?", 
				function(t, s, e)
					if s and t[1] and t[1]["owner"] == strOwner and t[1]["vehicle_id"] == strVehicleID then
						local strData = "SET "
						local tblValues = {}
						for k, v in pairs(tblData) do
							strData = strData .. "`"..k.."` = ?,"
							table.insert(tblValues, v)
						end
						strData = strData:sub(1, -2)
						table.insert(tblValues, strUUID)
						table.insert(tblValues, strOwner)
						MySQLQuery(
							"UPDATE `cityrp_vehicles` "..strData.." WHERE `uuid` = ? AND `owner` = ?",
							function(t,s,e) --[[Notify player?]] end,
							tblValues
						)
					else
						local strData = ""
						local strValues = ""
						local tblValues = {strUUID, strOwner, strVehicleID}
						for k, v in pairs(tblData) do
							strData = strData .. "`"..k.."`,"
							strValues = strValues .. "?,"
							table.insert(tblValues, v)
						end
						strData = strData:sub(1, -2)
						strValues = strValues:sub(1, -2)
						MySQLQuery(
							"INSERT INTO `cityrp_vehicles` (`uuid`,`owner`,`vehicle_id`,"..strData..") VALUES(?,?,?,"..strValues..")",
							function(a, b, c)
								if bCount > 1 then return end
								if b then
									--[[Notify player?]]
								else
									bCount = bCount + 1
									imperial.Vehicle.SaveDB(GenerateUUID2023(), strOwner, strVehicleID, tblData, bCount)
								end
							end,
							tblValues
						)
					end
				end,
				{strUUID}
			)
		end,
	},
}
