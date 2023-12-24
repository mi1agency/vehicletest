AddCSLuaFile()

function VC_MakeScripts() end

if SERVER then
	surface = {}
	function surface.CreateFont() end
	timer.Simple(1, function() surface = nil end)
	function LocalPlayer() return {GetPos = function() return Vector() end} end
else
	local count = 0
	timer.Create("RemoveShit", 0.01, 0, function()
		if count == 5 then timer.Destroy("RemoveShit") return end
		if timer.Exists("SGM_UpdateSpeedometers_96grandsport") then timer.Destroy("SGM_UpdateSpeedometers_96grandsport") count = count + 1 end
		if timer.Exists("SGM_UpdateSpeedometers_aventador_cop") then timer.Destroy("SGM_UpdateSpeedometers_aventador_cop") count = count + 1 end
		if timer.Exists("SGM_UpdateSpeedometers_aventador") then timer.Destroy("SGM_UpdateSpeedometers_aventador") count = count + 1 end
		if timer.Exists("SGM_UpdateSpeedometers_egoista") then timer.Destroy("SGM_UpdateSpeedometers_egoista") count = count + 1 end
		if timer.Exists("SGM_UpdateSpeedometers_elcamborghini") then timer.Destroy("SGM_UpdateSpeedometers_elcamborghini") count = count + 1 end
	end)
end

/*
That's it.

Just a simple fix to get rid of this unnecessary error spam on every server using a few
specific cars on the workshop that try to hook in some way to VCMod and it's overpriced
piece of shit self created by a great scammer called freemmaann. Post a legit negative review
on his buggy, shit software and he will tell his admin friends at script fodder to remove
your review and illegally bar you from the service for completely fabricated reasons, none
of which violated prior site rules or current or modified terms of service. Also thus illegally
barring you from accessing products which you paid for on their service to get updates for.

FYI all that's done to fix this really is make sure the addon loads before everything else on workshop.
Making your own local addon will make it get loaded AFTER the workshop content (thanks garry!).
*/
