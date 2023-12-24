if CLIENT then

local function SW_Airboat_Thirdperson( ply, pos, angles, fov )
	if Enable_View then
	
		local View = {}
		
			View.origin = pos - ( angles:Forward() * 255 ) + ( angles:Up() * 80 )
			View.angles = angles + Angle(10,0,0)
			View.fov = fov
			View.drawviewer = true
		
		return View
	end	
end

local function SW_Activate_View()
	Enable_View = !Enable_View	
	
	if Enable_View then
		hook.Add( "CalcView", "SW_Airboat_Thirdperson", SW_Airboat_Thirdperson )	
	else
		hook.Remove( "CalcView", "SW_Airboat_Thirdperson" )
	end
end
concommand.Add( "SW_Activate_Better_Airboat_Thirdperson_View", SW_Activate_View )

hook.Remove( "Think", "SW_Thirdperson_Think" )
local function SW_Thirdperson_Think()
	if !Enable_View then return end
	
	local Think = ThinkTime or 0
	if (Think + 1.0) <= CurTime() then
		ThinkTime = CurTime()
		
		local veh = LocalPlayer():GetVehicle()
		if !IsValid(veh) then 
			
			Enable_View = false
			hook.Remove( "CalcView", "SW_Airboat_Thirdperson" )
			return 
		end
	end
end
hook.Add( "Think", "SW_Thirdperson_Think", SW_Thirdperson_Think )

end