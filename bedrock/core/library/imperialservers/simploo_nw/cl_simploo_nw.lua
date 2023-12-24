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

function ClassSetupNetworking() end

local function NWOnEntityCreated(objEnt) net.Start("imperial_class_network_request") net.WriteEntity(objEnt) net.SendToServer() end
hook.Add("OnEntityCreated", "Simploo.NW.OnEntityCreated", NWOnEntityCreated)

local uuid_cache = {}
local function InitClass(len)
    local strClassName = net.ReadString()
    local uuid = net.ReadString()
    local tblData = net.ReadTable()
    local class = nil
    for k, v in ipairs(SimplooInstances) do
        if v.SetUniqueID and v:SetUniqueID() == tblData.SetUniqueID then
            class = v
            break
        end
    end
    if !class then class = _G[strClassName]() end
    if !class then return end
    for strSet, objVal in pairs(tblData) do class[strSet](class, uuid_cache[objVal] or objVal) end
    class.members.NetworkID = {owner = class, modifiers = {public = true, networked = true}, value = uuid}
    if class.GetEntity and class:GetEntity() != simploo.syntax.networked and IsValid(class:GetEntity()) then class:GetEntity().Class = class end
    uuid_cache[uuid] = class
    if _G[strClassName].All then
        if class.AllKey and !_G[strClassName].All[class:AllKey()] then
            _G[strClassName].All[class:AllKey()] = class
        elseif !table.HasValue(_G[strClassName].All, class) then
            table.insert(_G[strClassName].All, class)
        end
    end
end
net.Receive("imperial_class_network_init", InitClass)

local function UpdateValue(len)
    local uuid = net.ReadString()
    local key = net.ReadString()
    local value = net.ReadType()
    if !uuid_cache[uuid] then return end
    local class = uuid_cache[uuid]
    if class[key] then class[key](class, uuid_cache[value] or value) end
end
net.Receive("imperial_class_network_value", UpdateValue)

local function NetworkRemove(len)
    local uuid = net.ReadString()
    for k, v in pairs(SimplooInstances) do
        if v.NetworkID == uuid then
            SimplooInstances[k] = nil
            if v.All and v.AllKey and v:AllKey() and v.All[v:AllKey()] then v.All[v:AllKey()] = nil end
        end
    end
    uuid_cache[uuid] = nil
end
net.Receive("imperial_class_network_remove", NetworkRemove)
