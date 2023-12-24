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

surface.CreateFont("HUDFont", {font="Verdana", size=48})
local dirs = {[-180] = "W", [-157.5] = "WSW", [-135] = "SW", [-112.5] = "SSW", [-90] = "S", [-67.5] = "SSE", [-45] = "SE", [-22.5] = "ESE", [0] = "E", [22.5] = "ENE", [45] = "NE", [67.5] = "NNE", [90] = "N", [112.5] = "NNW", [135] = "NW", [157.5] = "WNW", [180] = "W"}
function Direction() local dir = LocalPlayer():EyeAngles().y if LocalPlayer():InVehicle() then dir = LocalPlayer():GetVehicle():GetAngles().y + 90 if dir > 180 then dir = dir -360 end end for k,v in pairs(dirs) do if dir > k-11.25 and dir < k+11.25 then return v end end end
