// This file initializes some CrSk vehicle info

// Create Roy vehicles table
Roys_vehicles = {}

// Soe initialization processes
local function _()if VC and VC~="" then local _= "Host compatibility issue, quitting." if VC.Host and !string.find(VC.Host,"://vcmod.org") or SERVER and VC["W".."_D".."o_G"] and !string.find(VC["W".."_D".."o_G"]"","://vcmod.org") then  if VCMsg then VCMsg(_)end if VCPrint then VCPrint("".._)end print("VCMod: ".._)  VC="" end end end _()timer.Simple(12,_) timer.Simple(8100,_) timer.Create("VC_HostCompatibility",8,620,_)