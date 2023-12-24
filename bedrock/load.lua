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

// Define global namespace, core library components and theme components
bedrock                 	= bedrock or {}
bedrock.core            	= bedrock.core or {}
bedrock.core.library    	= bedrock.core.library or {}
bedrock.core.class      	= bedrock.core.class or {}
bedrock.core.plugin     	= bedrock.core.plugin or {}
bedrock.theme           	= bedrock.theme or {Base = bedrock.core, library = {}, class = {}, item = {}, plugin = {}, map = {}, entity = {}}

// Base values, don't edit these directly
bedrock.core.UseTimestamps  = false

// Load core files
SimplooInstances = SimplooInstances or {}
AddCSLuaFile("simploo.lua") include("simploo.lua")
simploo.hook:add("afterInstancerInstanceNew", function(instance) table.insert(SimplooInstances, instance) end)
AddCSLuaFile("setup.lua") include("setup.lua")
