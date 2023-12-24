
function GM:Initialize() timer.Simple(5, function() RunConsoleCommand("sv_usermessage_maxsize", "4096") RunConsoleCommand("sv_defaultdeployspeed", "4") end) end
function GM:PlayerLoadout(objPl)
	objPl:StripWeapons()
	objPl:Give("cityrp_keys")
	objPl:Give("weapon_physcannon")
	objPl:Give("weapon_physgun")
	objPl:Give("gmod_tool")
	player_manager.RunClass(objPl, "SetModel")
end
