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

GM.Bindings = GM.Bindings or {}

function GM:GetBound(strBindName)
	for i = 1, #self.Bindings do
		if self.Bindings[i].name == strBindName then
			return self.Bindings[i]
		end
	end
end

function GM:GetBinding(strBindName) return self:GetBound(strBindName).key end

function GM:AddBinding(strBindName, numDefault, tblOptions)
	if strBindName == "" then return end
	local tBinding = self:GetBound(strBindName)
	if tBinding then
		tBinding.desc 		= 	tblOptions.description or ""
		tBinding.category	= 	tblOptions.category or "General"
		tBinding.callback 	= 	tblOptions.callback or nil
		tBinding.hold 		=	tblOptions.hold or false
		tBinding.admin 		=	tblOptions.admin or false
	else
		local cv = CreateConVar("cityrp_bindkeys_"..strBindName:lower(), numDefault, {FCVAR_USERINFO, FCVAR_ARCHIVE})
		table.insert(self.Bindings, {
			convar 		=	cv,
			category	= 	tblOptions.category or "General",
			name 		= 	strBindName,
			key 		= 	cv:GetInt() > 0 and cv:GetInt() or numDefault,
			desc 		= 	tblOptions.description or "",
			callback 	= 	tblOptions.callback or nil,
			hold 		=	tblOptions.hold or false,
			admin  		=	tblOptions.admin or false,
		})
	end
end

function GM:MonitorKeyBinds()
	if LocalPlayer():Team() == TEAM_ARRESTED then return end
	if GAMEMODE.ChatBoxOpen or gui.IsGameUIVisible() or gui.IsConsoleVisible() then return end
	if IsValid(LocalPlayer():GetVehicle()) and IsValid(LocalPlayer():GetVehicle():GetParent()) and LocalPlayer():GetVehicle():GetParent():GetModel() == "models/fishy/furniture/piano_seat.mdl" then return end
	for i = 1, #self.Bindings do
		local bind = self.Bindings[i]
		if bind.category and bind.category == "Admin" and !LocalPlayer():IsAdmin() then continue end
		if bind.category and bind.category == "Vehicles" and (!IsValid(LocalPlayer():GetVehicle()) or !LocalPlayer():GetVehicle().Class) then continue end
		if !bind.admin and LocalPlayer():AdminMode() then continue end
		-- Check Key State
		local isKeyDown = input.IsKeyDown(bind.key)
		if isKeyDown and !bind.isPressed then
			if !bind.hold then -- Key is toggled
                if bind.callback then bind.callback() end
			else -- Key is held down
                if bind.callback then bind.callback() end
            end
		elseif !isKeyDown and bind.isPressed then -- Key is released
			if bind.callback and bind.hold then bind.callback(true) end
		end
		bind.isPressed = isKeyDown
	end
end

GM:AddBinding("Ignition", KEY_I, {description="Start/Stop Vehicle Ignition", category="Vehicles", callback=function() CallServer("cityrp_vehicle_ignition") end})
GM:AddBinding("GarageDoor", KEY_G, {description="Garage Door Open/Close", category="Vehicles", callback=function() CallServer("cityrp_vehicle_garage") end})
GM:AddBinding("Underglow", KEY_P, {description="Toggle Vehicle Underglow", category="Vehicles", callback=function() CallServer("cityrp_vehicle_underglow") end})
GM:AddBinding("MusicLights", KEY_M, {description="Toggle Vehicle Music Lights", category="Vehicles", callback=function() CallServer("cityrp_vehicle_musiclights") end})
GM:AddBinding("Hydraulics", KEY_R, {description="Activate Hydraulics", category="Vehicles", callback=function() CallServer("cityrp_vehicle_hydraulics") end})

local bNitroEnabled = false
net.Receive("cityrp_nitro_update", function() bCanNitro = net.ReadBool() end)
local function Nitro(bReleased)
	if LocalPlayer():GetVehicle():GetNW("nitro", false) then
		if !bReleased and !bNitroEnabled then
			net.Start("cityrp_vehicle_nitro") net.WriteBool(true) net.SendToServer()
			bNitroEnabled = true
		elseif bReleased and bNitroEnabled then
			net.Start("cityrp_vehicle_nitro") net.WriteBool(false) net.SendToServer()
			bNitroEnabled = false
		end
	end
end
GM:AddBinding("Nitro", KEY_LSHIFT, {description="Activate Nitro (Hold)", category="Vehicles", callback=Nitro, hold=true})
