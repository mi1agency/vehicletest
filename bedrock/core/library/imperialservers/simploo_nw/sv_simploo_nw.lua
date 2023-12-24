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

util.AddNetworkString("imperial_class_network_request")
util.AddNetworkString("imperial_class_network_init")
util.AddNetworkString("imperial_class_network_value")
util.AddNetworkString("imperial_class_network_remove")

local function NWRequest(len, objPl)
    local ent = net.ReadEntity()
    if !IsValid(ent) or !ent.Class or !ent.Class.members then return end
    ClassSetupNetworking(ent.Class, objPl)
end
net.Receive("imperial_class_network_request", NWRequest)

function ClassSetupNetworking(clInstance, objPl)
    local tbl = {}
    for k, v in pairs(clInstance.members) do
        if k:match("m_%U*%u") then
            local strSet = "Set" if clInstance.members[k].modifiers.private then strSet = "SetPrivate" end
            if type(v.value) == "function" then continue end
            tbl[strSet..ClassVarName(k)] = v.value == simploo.syntax.networked and nil or v.value
            if type(v.value) == "table" and v.value.NetworkID then tbl[strSet..ClassVarName(k)] = v.value.NetworkID end
        end
    end
    clInstance.members.NetworkID = clInstance.members.NetworkID or {owner = clInstance, modifiers = {public = true, networked = true}, value = GenerateUUID2023()}
    net.Start("imperial_class_network_init")
        net.WriteString(clInstance.className)
        net.WriteString(clInstance.NetworkID)
        net.WriteTable(tbl)
    if IsValid(objPl) then net.Send(objPl) else net.Broadcast() end
end

function SimplooNetwork(class, key, value)
    if !class.NetworkID then return end
    local strSet = "Set" if class.members[key].modifiers.private then strSet = "SetPrivate" end
    if type(value) == "function" then return end
    net.Start("imperial_class_network_value")
        net.WriteString(class.NetworkID)
        net.WriteString(strSet..ClassVarName(key))
        net.WriteType(value and type(value) == "table" and value.NetworkID or value)
    if class.GetEntity and IsValid(class:GetEntity()) and class:GetEntity():IsPlayer() then net.Send(class:GetEntity()) else net.Broadcast() end
end

local function ClassEntityRemoved(objEnt)
    if !objEnt.Class or objEnt:GetClass() == "prop_vehicle_jeep" then return end
    for k, v in pairs(SimplooInstances) do
        if v == objEnt.Class then
            net.Start("imperial_class_network_remove") net.WriteString(v.NetworkID) net.Broadcast()
            SimplooInstances[k] = nil
            if objEnt.Class.All and objEnt.Class.AllKey then objEnt.Class.All[objEnt.Class:AllKey()] = nil end
        end
    end
end
hook.Add("EntityRemoved", "ClassEntityRemoved", ClassEntityRemoved)
